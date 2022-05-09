; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/tegra/pinctrl-tegra.c_pt.bc'
source_filename = "../drivers/pinctrl/tegra/pinctrl-tegra.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cfg_param = type { ptr, i32 }
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
%struct.tegra_pmx = type { ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.tegra_pinctrl_soc_data = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32, i8, i8, i8, i8 }
%struct.tegra_function = type { ptr, ptr, i32 }
%struct.tegra_pingroup = type { ptr, ptr, i8, [4 x i8], i32, i32, i32, i32, i64, i32, i32, i24, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@tegra_pinctrl_pm = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_pinctrl_suspend, ptr @tegra_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_pinctrl_gpio_range = internal global { %struct.pinctrl_gpio_range, [60 x i8] } { %struct.pinctrl_gpio_range { %struct.list_head zeroinitializer, ptr @.str.7, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tegra_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @tegra_pinctrl_ops, ptr @tegra_pinmux_ops, ptr @tegra_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@tegra_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 865, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/tegra/pinctrl-tegra.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_pinctrl_probe._entry_ptr = internal global ptr @tegra_pinctrl_probe._entry, section ".printk_index", align 4
@tegra_pinctrl_probe.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl_tegra\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Probed Tegra pinctrl driver\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Tegra GPIOs\00", [20 x i8] zeroinitializer }, align 32
@tegra_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @tegra_pinctrl_get_groups_count, ptr @tegra_pinctrl_get_group_name, ptr @tegra_pinctrl_get_group_pins, ptr @tegra_pinctrl_pin_dbg_show, ptr @tegra_pinctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@tegra_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @tegra_pinctrl_get_funcs_count, ptr @tegra_pinctrl_get_func_name, ptr @tegra_pinctrl_get_func_groups, ptr @tegra_pinctrl_set_mux, ptr @tegra_pinctrl_gpio_request_enable, ptr @tegra_pinctrl_gpio_disable_free, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@tegra_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @tegra_pinconf_get, ptr @tegra_pinconf_set, ptr @tegra_pinconf_group_get, ptr @tegra_pinconf_group_set, ptr @tegra_pinconf_dbg_show, ptr @tegra_pinconf_group_dbg_show, ptr @tegra_pinconf_config_dbg_show }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,function\00", [16 x i8] zeroinitializer }, align 32
@tegra_pinctrl_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"could not parse property nvidia,function\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_pinctrl_dt_subnode_to_map\00", [32 x i8] zeroinitializer }, align 32
@tegra_pinctrl_dt_subnode_to_map._entry_ptr = internal global ptr @tegra_pinctrl_dt_subnode_to_map._entry, section ".printk_index", align 4
@cfg_params = internal constant { [16 x %struct.cfg_param], [32 x i8] } { [16 x %struct.cfg_param] [%struct.cfg_param { ptr @.str.19, i32 0 }, %struct.cfg_param { ptr @.str.20, i32 1 }, %struct.cfg_param { ptr @.str.21, i32 2 }, %struct.cfg_param { ptr @.str.22, i32 3 }, %struct.cfg_param { ptr @.str.23, i32 4 }, %struct.cfg_param { ptr @.str.24, i32 5 }, %struct.cfg_param { ptr @.str.25, i32 6 }, %struct.cfg_param { ptr @.str.26, i32 6 }, %struct.cfg_param { ptr @.str.27, i32 7 }, %struct.cfg_param { ptr @.str.28, i32 8 }, %struct.cfg_param { ptr @.str.29, i32 9 }, %struct.cfg_param { ptr @.str.30, i32 10 }, %struct.cfg_param { ptr @.str.31, i32 11 }, %struct.cfg_param { ptr @.str.32, i32 12 }, %struct.cfg_param { ptr @.str.33, i32 13 }, %struct.cfg_param { ptr @.str.34, i32 14 }], [32 x i8] zeroinitializer }, align 32
@tegra_pinctrl_dt_subnode_to_map._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 136, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not parse property %s\0A\00", [35 x i8] zeroinitializer }, align 32
@tegra_pinctrl_dt_subnode_to_map._entry_ptr.14 = internal global ptr @tegra_pinctrl_dt_subnode_to_map._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvidia,pins\00", [20 x i8] zeroinitializer }, align 32
@tegra_pinctrl_dt_subnode_to_map._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not parse property nvidia,pins\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_pinctrl_dt_subnode_to_map._entry_ptr.18 = internal global ptr @tegra_pinctrl_dt_subnode_to_map._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvidia,pull\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,tristate\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nvidia,enable-input\00", [44 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,open-drain\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nvidia,lock\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nvidia,io-reset\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,rcv-sel\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nvidia,io-hv\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nvidia,high-speed-mode\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nvidia,schmitt\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvidia,low-power-mode\00", [42 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nvidia,pull-down-strength\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,pull-up-strength\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nvidia,slew-rate-falling\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nvidia,slew-rate-rising\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvidia,drive-type\00", [46 x i8] zeroinitializer }, align 32
@tegra_pinctrl_get_group._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 296, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Pingroup not found for pin %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_pinctrl_get_group\00", [40 x i8] zeroinitializer }, align 32
@tegra_pinctrl_get_group._entry_ptr = internal global ptr @tegra_pinctrl_get_group._entry, section ".printk_index", align 4
@tegra_pinconf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 501, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pin_config_get op not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_pinconf_get\00", [46 x i8] zeroinitializer }, align 32
@tegra_pinconf_get._entry_ptr = internal global ptr @tegra_pinconf_get._entry, section ".printk_index", align 4
@tegra_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 509, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"pin_config_set op not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_pinconf_set\00", [46 x i8] zeroinitializer }, align 32
@tegra_pinconf_set._entry_ptr = internal global ptr @tegra_pinconf_set._entry, section ".printk_index", align 4
@tegra_pinconf_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 472, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid config param %04x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_pinconf_reg\00", [46 x i8] zeroinitializer }, align 32
@tegra_pinconf_reg._entry_ptr = internal global ptr @tegra_pinconf_reg._entry, section ".printk_index", align 4
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@tegra_pinconf_reg._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.42, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Config param %04x (%s) not supported on group %s\0A\00", [46 x i8] zeroinitializer }, align 32
@tegra_pinconf_reg._entry_ptr.46 = internal global ptr @tegra_pinconf_reg._entry.44, section ".printk_index", align 4
@tegra_pinconf_group_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 570, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LOCK bit cannot be cleared\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tegra_pinconf_group_set\00", [40 x i8] zeroinitializer }, align 32
@tegra_pinconf_group_set._entry_ptr = internal global ptr @tegra_pinconf_group_set._entry, section ".printk_index", align 4
@tegra_pinconf_group_set._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 584, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"config %lx: %x too big for %d bit register\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_pinconf_group_set._entry_ptr.51 = internal global ptr @tegra_pinconf_group_set._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A\09%s=%u\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s=%d\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@switch.table.tegra_pinconf_config_dbg_show = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15], [40 x i8] zeroinitializer }, align 32
@switch.table.tegra_pinconf_reg = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.55 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"tegra_pinctrl_pm\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 761, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant [25 x i8] c"tegra_pinctrl_gpio_range\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 671, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"tegra_pinctrl_desc\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 677, i32 28 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 865, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 876, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 672, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant [18 x i8] c"tegra_pinctrl_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 210, i32 33 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"tegra_pinmux_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 350, i32 32 }
@___asan_gen_.98 = private unnamed_addr constant [18 x i8] c"tegra_pinconf_ops\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 659, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 73, i32 16 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 116, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 120, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"cfg_params\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 80, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 135, i32 4 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 145, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 147, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 81, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 82, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 83, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 84, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 85, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 86, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 87, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 88, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 89, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 90, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 91, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 92, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 93, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 94, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 95, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 96, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 296, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 501, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 509, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 472, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 478, i32 23 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 488, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 570, i32 5 }
@___asan_gen_.236 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 582, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 634, i32 17 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 655, i32 16 }
@___asan_gen_.248 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.249 = private constant [41 x i8] c"../drivers/pinctrl/tegra/pinctrl-tegra.c\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.249, i32 775, i32 34 }
@___asan_gen_.251 = private unnamed_addr constant [43 x i8] c"switch.table.tegra_pinconf_config_dbg_show\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [31 x i8] c"switch.table.tegra_pinconf_reg\00", align 1
@llvm.compiler.used = appending global [78 x ptr] [ptr @tegra_pinconf_get._entry, ptr @tegra_pinconf_get._entry_ptr, ptr @tegra_pinconf_group_set._entry, ptr @tegra_pinconf_group_set._entry.49, ptr @tegra_pinconf_group_set._entry_ptr, ptr @tegra_pinconf_group_set._entry_ptr.51, ptr @tegra_pinconf_reg._entry, ptr @tegra_pinconf_reg._entry.44, ptr @tegra_pinconf_reg._entry_ptr, ptr @tegra_pinconf_reg._entry_ptr.46, ptr @tegra_pinconf_set._entry, ptr @tegra_pinconf_set._entry_ptr, ptr @tegra_pinctrl_dt_subnode_to_map._entry, ptr @tegra_pinctrl_dt_subnode_to_map._entry.12, ptr @tegra_pinctrl_dt_subnode_to_map._entry.16, ptr @tegra_pinctrl_dt_subnode_to_map._entry_ptr, ptr @tegra_pinctrl_dt_subnode_to_map._entry_ptr.14, ptr @tegra_pinctrl_dt_subnode_to_map._entry_ptr.18, ptr @tegra_pinctrl_get_group._entry, ptr @tegra_pinctrl_get_group._entry_ptr, ptr @tegra_pinctrl_probe._entry, ptr @tegra_pinctrl_probe._entry_ptr, ptr @tegra_pinctrl_pm, ptr @tegra_pinctrl_gpio_range, ptr @tegra_pinctrl_desc, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @tegra_pinctrl_ops, ptr @tegra_pinmux_ops, ptr @tegra_pinconf_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @cfg_params, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @switch.table.tegra_pinconf_config_dbg_show, ptr @switch.table.tegra_pinconf_reg], section "llvm.metadata"
@0 = internal global [67 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_gpio_range to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cfg_params to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_dt_subnode_to_map._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_dt_subnode_to_map._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinctrl_get_group._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinconf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinconf_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinconf_reg._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinconf_group_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_pinconf_group_set._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_pinconf_config_dbg_show to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tegra_pinconf_reg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_suspend(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nbanks = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not = icmp eq i32 %3, 0
  br i1 %cmp25.not, label %entry.for.end11_crit_edge, label %for.body.lr.ph

entry.for.end11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11

for.body.lr.ph:                                   ; preds = %entry
  %backup_regs1 = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %backup_regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backup_regs1, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %regs3 = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc9.for.body_crit_edge, %for.body.lr.ph
  %backup_regs.027 = phi ptr [ %5, %for.body.lr.ph ], [ %backup_regs.1.lcssa, %for.inc9.for.body_crit_edge ]
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc10, %for.inc9.for.body_crit_edge ]
  %call.i = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef %i.026) #7
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %sub.i.i = add i32 %7, 1
  %add.i.i = sub i32 %sub.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i.i)
  %cmp521.not = icmp ult i32 %add.i.i, 4
  br i1 %cmp521.not, label %for.body.for.inc9_crit_edge, label %for.body6.preheader

for.body.for.inc9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

for.body6.preheader:                              ; preds = %for.body
  %10 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs3, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.026
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %div2.i = lshr i32 %add.i.i, 2
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.preheader
  %backup_regs.124 = phi ptr [ %incdec.ptr8, %for.body6.for.body6_crit_edge ], [ %backup_regs.027, %for.body6.preheader ]
  %k.023 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %regs.022 = phi ptr [ %incdec.ptr, %for.body6.for.body6_crit_edge ], [ %13, %for.body6.preheader ]
  %incdec.ptr = getelementptr i32, ptr %regs.022, i32 1
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %regs.022) #7, !srcloc !129
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %incdec.ptr8 = getelementptr i32, ptr %backup_regs.124, i32 1
  %16 = ptrtoint ptr %backup_regs.124 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %backup_regs.124, align 4
  %inc = add nuw nsw i32 %k.023, 1
  %exitcond.not = icmp eq i32 %inc, %div2.i
  br i1 %exitcond.not, label %for.body6.for.inc9_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.body6.for.inc9_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc9

for.inc9:                                         ; preds = %for.body6.for.inc9_crit_edge, %for.body.for.inc9_crit_edge
  %backup_regs.1.lcssa = phi ptr [ %backup_regs.027, %for.body.for.inc9_crit_edge ], [ %incdec.ptr8, %for.body6.for.inc9_crit_edge ]
  %inc10 = add nuw i32 %i.026, 1
  %17 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbanks, align 4
  %cmp = icmp ult i32 %inc10, %18
  br i1 %cmp, label %for.inc9.for.body_crit_edge, label %for.inc9.for.end11_crit_edge

for.inc9.for.end11_crit_edge:                     ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end11

for.inc9.for.body_crit_edge:                      ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end11:                                        ; preds = %for.inc9.for.end11_crit_edge, %entry.for.end11_crit_edge
  %pctl = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pctl, align 4
  %call12 = tail call i32 @pinctrl_force_sleep(ptr noundef %20) #7
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_resume(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nbanks = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %entry.for.end10_crit_edge, label %for.body.lr.ph

entry.for.end10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.body.lr.ph:                                   ; preds = %entry
  %backup_regs1 = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %backup_regs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %backup_regs1, align 4
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %regs3 = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc8.for.body_crit_edge, %for.body.lr.ph
  %backup_regs.028 = phi ptr [ %5, %for.body.lr.ph ], [ %backup_regs.1.lcssa, %for.inc8.for.body_crit_edge ]
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc9, %for.inc8.for.body_crit_edge ]
  %call.i = tail call ptr @platform_get_resource(ptr noundef %add.ptr.i, i32 noundef 512, i32 noundef %i.027) #7
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i.i, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call.i, align 4
  %sub.i.i = add i32 %7, 1
  %add.i.i = sub i32 %sub.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i.i)
  %cmp522.not = icmp ult i32 %add.i.i, 4
  br i1 %cmp522.not, label %for.body.for.inc8_crit_edge, label %for.body6.preheader

for.body.for.inc8_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc8

for.body6.preheader:                              ; preds = %for.body
  %10 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs3, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.027
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %div2.i = lshr i32 %add.i.i, 2
  br label %for.body6

for.body6:                                        ; preds = %for.body6.for.body6_crit_edge, %for.body6.preheader
  %backup_regs.125 = phi ptr [ %incdec.ptr, %for.body6.for.body6_crit_edge ], [ %backup_regs.028, %for.body6.preheader ]
  %k.024 = phi i32 [ %inc, %for.body6.for.body6_crit_edge ], [ 0, %for.body6.preheader ]
  %regs.023 = phi ptr [ %incdec.ptr7, %for.body6.for.body6_crit_edge ], [ %13, %for.body6.preheader ]
  %incdec.ptr = getelementptr i32, ptr %backup_regs.125, i32 1
  %14 = ptrtoint ptr %backup_regs.125 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %backup_regs.125, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %incdec.ptr7 = getelementptr i32, ptr %regs.023, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %regs.023, i32 %16) #7, !srcloc !130
  %inc = add nuw nsw i32 %k.024, 1
  %exitcond.not = icmp eq i32 %inc, %div2.i
  br i1 %exitcond.not, label %for.body6.for.inc8_crit_edge, label %for.body6.for.body6_crit_edge

for.body6.for.body6_crit_edge:                    ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body6

for.body6.for.inc8_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc8

for.inc8:                                         ; preds = %for.body6.for.inc8_crit_edge, %for.body.for.inc8_crit_edge
  %backup_regs.1.lcssa = phi ptr [ %backup_regs.028, %for.body.for.inc8_crit_edge ], [ %incdec.ptr, %for.body6.for.inc8_crit_edge ]
  %inc9 = add nuw i32 %i.027, 1
  %17 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbanks, align 4
  %cmp = icmp ult i32 %inc9, %18
  br i1 %cmp, label %for.inc8.for.body_crit_edge, label %for.inc8.for.end10_crit_edge

for.inc8.for.end10_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end10

for.inc8.for.body_crit_edge:                      ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end10:                                        ; preds = %for.inc8.for.end10_crit_edge, %entry.for.end10_crit_edge
  %regs11 = getelementptr inbounds %struct.tegra_pmx, ptr %1, i32 0, i32 5
  %19 = ptrtoint ptr %regs11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs11, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_pinctrl_probe(ptr noundef %pdev, ptr noundef %soc_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup137_crit_edge, label %if.end

entry.cleanup137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %soc_data, ptr %soc, align 4
  %ngroups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %soc_data, i32 0, i32 7
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  %mul = shl i32 %3, 2
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 4) #7
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !132

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %group_pins5228 = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %group_pins5228 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %group_pins5228, align 4
  br label %cleanup137

devm_kcalloc.exit:                                ; preds = %if.end
  %7 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #7
  %group_pins5 = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %group_pins5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5.i.i, ptr %group_pins5, align 4
  %tobool7.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool7.not, label %devm_kcalloc.exit.cleanup137_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup137_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %nfunctions = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %soc_data, i32 0, i32 5
  %9 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nfunctions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp245.not = icmp eq i32 %10, 0
  br i1 %cmp245.not, label %for.cond.preheader.for.end54_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end54_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %functions = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %soc_data, i32 0, i32 4
  %groups15 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %soc_data, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.end51.for.body_crit_edge, %for.body.lr.ph
  %fn.0247 = phi i32 [ 0, %for.body.lr.ph ], [ %inc53, %for.end51.for.body_crit_edge ]
  %group_pins.0246 = phi ptr [ %call5.i.i, %for.body.lr.ph ], [ %group_pins.1.lcssa, %for.end51.for.body_crit_edge ]
  %11 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %functions, align 4
  %groups = getelementptr %struct.tegra_function, ptr %12, i32 %fn.0247, i32 1
  %13 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %group_pins.0246, ptr %groups, align 4
  %14 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13239.not = icmp eq i32 %15, 0
  br i1 %cmp13239.not, label %for.body.for.end51_crit_edge, label %for.body14.lr.ph

for.body.for.end51_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

for.body14.lr.ph:                                 ; preds = %for.body
  %ngroups47 = getelementptr %struct.tegra_function, ptr %12, i32 %fn.0247, i32 2
  br label %for.body14

for.body14:                                       ; preds = %cleanup.for.body14_crit_edge, %for.body14.lr.ph
  %16 = phi i32 [ %15, %for.body14.lr.ph ], [ %37, %cleanup.for.body14_crit_edge ]
  %gn.0242 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc50, %cleanup.for.body14_crit_edge ]
  %group_pins.1240 = phi ptr [ %group_pins.0246, %for.body14.lr.ph ], [ %group_pins.2, %cleanup.for.body14_crit_edge ]
  %17 = ptrtoint ptr %groups15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %groups15, align 4
  %arrayidx16 = getelementptr %struct.tegra_pingroup, ptr %18, i32 %gn.0242
  %mux_reg = getelementptr %struct.tegra_pingroup, ptr %18, i32 %gn.0242, i32 4
  %19 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mux_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp17 = icmp eq i32 %20, -1
  br i1 %cmp17, label %for.body14.cleanup_crit_edge, label %for.body22.preheader

for.body14.cleanup_crit_edge:                     ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body22.preheader:                             ; preds = %for.body14
  %arrayidx23 = getelementptr %struct.tegra_pingroup, ptr %18, i32 %gn.0242, i32 3, i32 0
  %21 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23, align 1
  %conv = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fn.0247, i32 %conv)
  %cmp24 = icmp eq i32 %fn.0247, %conv
  br i1 %cmp24, label %for.body22.preheader.do.body_crit_edge, label %for.inc

for.body22.preheader.do.body_crit_edge:           ; preds = %for.body22.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc:                                          ; preds = %for.body22.preheader
  %arrayidx23.1 = getelementptr %struct.tegra_pingroup, ptr %18, i32 %gn.0242, i32 3, i32 1
  %23 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23.1, align 1
  %conv.1 = zext i8 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fn.0247, i32 %conv.1)
  %cmp24.1 = icmp eq i32 %fn.0247, %conv.1
  br i1 %cmp24.1, label %for.inc.do.body_crit_edge, label %for.inc.1

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %arrayidx23.2 = getelementptr %struct.tegra_pingroup, ptr %18, i32 %gn.0242, i32 3, i32 2
  %25 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx23.2, align 1
  %conv.2 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fn.0247, i32 %conv.2)
  %cmp24.2 = icmp eq i32 %fn.0247, %conv.2
  br i1 %cmp24.2, label %for.inc.1.do.body_crit_edge, label %for.inc.2

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx23.3 = getelementptr %struct.tegra_pingroup, ptr %18, i32 %gn.0242, i32 3, i32 3
  %27 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx23.3, align 1
  %conv.3 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %fn.0247, i32 %conv.3)
  %cmp24.3 = icmp eq i32 %fn.0247, %conv.3
  br i1 %cmp24.3, label %for.inc.2.do.body_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %for.body22.preheader.do.body_crit_edge
  %29 = ptrtoint ptr %group_pins5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %group_pins5, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %group_pins.1240 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %30 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 2
  %mul34 = shl i32 %16, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div, i32 %mul34)
  %cmp35.not = icmp ult i32 %sub.ptr.div, %mul34
  br i1 %cmp35.not, label %do.end46, label %do.body40, !prof !133

do.body40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/tegra/pinctrl-tegra.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 828, 0\0A.popsection", ""() #7, !srcloc !134
  unreachable

do.end46:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx16, align 4
  %incdec.ptr = getelementptr ptr, ptr %group_pins.1240, i32 1
  %33 = ptrtoint ptr %group_pins.1240 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %group_pins.1240, align 4
  %34 = ptrtoint ptr %ngroups47 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ngroups47, align 4
  %inc48 = add i32 %35, 1
  store i32 %inc48, ptr %ngroups47, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %for.inc.2.cleanup_crit_edge, %for.body14.cleanup_crit_edge
  %group_pins.2 = phi ptr [ %incdec.ptr, %do.end46 ], [ %group_pins.1240, %for.body14.cleanup_crit_edge ], [ %group_pins.1240, %for.inc.2.cleanup_crit_edge ]
  %inc50 = add nuw i32 %gn.0242, 1
  %36 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ngroups, align 4
  %cmp13 = icmp ult i32 %inc50, %37
  br i1 %cmp13, label %cleanup.for.body14_crit_edge, label %cleanup.for.end51_crit_edge

cleanup.for.end51_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end51

cleanup.for.body14_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body14

for.end51:                                        ; preds = %cleanup.for.end51_crit_edge, %for.body.for.end51_crit_edge
  %group_pins.1.lcssa = phi ptr [ %group_pins.0246, %for.body.for.end51_crit_edge ], [ %group_pins.2, %cleanup.for.end51_crit_edge ]
  %inc53 = add nuw i32 %fn.0247, 1
  %38 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nfunctions, align 4
  %cmp = icmp ult i32 %inc53, %39
  br i1 %cmp, label %for.end51.for.body_crit_edge, label %for.end51.for.end54_crit_edge

for.end51.for.end54_crit_edge:                    ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end54

for.end51.for.body_crit_edge:                     ; preds = %for.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end54:                                        ; preds = %for.end51.for.end54_crit_edge, %for.cond.preheader.for.end54_crit_edge
  %40 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soc, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  store i32 %43, ptr getelementptr inbounds (%struct.pinctrl_gpio_range, ptr @tegra_pinctrl_gpio_range, i32 0, i32 5), align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %44 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %45, null
  br i1 %tobool.not.i, label %if.end.i, label %for.end54.dev_name.exit_crit_edge

for.end54.dev_name.exit_crit_edge:                ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %for.end54
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %for.end54.dev_name.exit_crit_edge
  %retval.0.i213 = phi ptr [ %47, %if.end.i ], [ %45, %for.end54.dev_name.exit_crit_edge ]
  store ptr %retval.0.i213, ptr @tegra_pinctrl_desc, align 4
  %pins = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %41, i32 0, i32 2
  %48 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pins, align 4
  store ptr %49, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @tegra_pinctrl_desc, i32 0, i32 1), align 4
  %npins = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %41, i32 0, i32 3
  %50 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %npins, align 4
  store i32 %51, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @tegra_pinctrl_desc, i32 0, i32 2), align 4
  %call61249 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool62.not250 = icmp eq ptr %call61249, null
  br i1 %tobool62.not250, label %dev_name.exit.for.end68_crit_edge, label %dev_name.exit.if.end64_crit_edge

dev_name.exit.if.end64_crit_edge:                 ; preds = %dev_name.exit
  br label %if.end64

dev_name.exit.for.end68_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

if.end64:                                         ; preds = %if.end64.if.end64_crit_edge, %dev_name.exit.if.end64_crit_edge
  %call61253 = phi ptr [ %call61, %if.end64.if.end64_crit_edge ], [ %call61249, %dev_name.exit.if.end64_crit_edge ]
  %backup_regs_size.0252 = phi i32 [ %add, %if.end64.if.end64_crit_edge ], [ 0, %dev_name.exit.if.end64_crit_edge ]
  %i.0251 = phi i32 [ %inc67, %if.end64.if.end64_crit_edge ], [ 0, %dev_name.exit.if.end64_crit_edge ]
  %end.i = getelementptr inbounds %struct.resource, ptr %call61253, i32 0, i32 1
  %52 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %end.i, align 4
  %54 = ptrtoint ptr %call61253 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %call61253, align 4
  %sub.i = add i32 %backup_regs_size.0252, 1
  %add.i = add i32 %sub.i, %53
  %add = sub i32 %add.i, %55
  %inc67 = add i32 %i.0251, 1
  %call61 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %inc67) #7
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end64.for.end68_crit_edge, label %if.end64.if.end64_crit_edge

if.end64.if.end64_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end64.for.end68_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end68

for.end68:                                        ; preds = %if.end64.for.end68_crit_edge, %dev_name.exit.for.end68_crit_edge
  %i.0.lcssa = phi i32 [ 0, %dev_name.exit.for.end68_crit_edge ], [ %inc67, %if.end64.for.end68_crit_edge ]
  %backup_regs_size.0.lcssa = phi i32 [ 0, %dev_name.exit.for.end68_crit_edge ], [ %add, %if.end64.for.end68_crit_edge ]
  %nbanks = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 4
  %56 = ptrtoint ptr %nbanks to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %i.0.lcssa, ptr %nbanks, align 4
  %57 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.0.lcssa, i32 4) #7
  %58 = extractvalue { i32, i1 } %57, 1
  br i1 %58, label %devm_kcalloc.exit217.thread, label %devm_kcalloc.exit217, !prof !132

devm_kcalloc.exit217.thread:                      ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #9
  %regs232 = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 5
  %59 = ptrtoint ptr %regs232 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %regs232, align 4
  br label %cleanup137

devm_kcalloc.exit217:                             ; preds = %for.end68
  %60 = extractvalue { i32, i1 } %57, 0
  %call5.i.i214 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %60, i32 noundef 3520) #7
  %regs = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 5
  %61 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call5.i.i214, ptr %regs, align 4
  %tobool73.not = icmp eq ptr %call5.i.i214, null
  br i1 %tobool73.not, label %devm_kcalloc.exit217.cleanup137_crit_edge, label %if.end75

devm_kcalloc.exit217.cleanup137_crit_edge:        ; preds = %devm_kcalloc.exit217
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

if.end75:                                         ; preds = %devm_kcalloc.exit217
  %call.i218 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %backup_regs_size.0.lcssa, i32 noundef 3520) #7
  %backup_regs = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 6
  %62 = ptrtoint ptr %backup_regs to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i218, ptr %backup_regs, align 4
  %tobool79.not = icmp eq ptr %call.i218, null
  br i1 %tobool79.not, label %if.end75.cleanup137_crit_edge, label %for.cond82.preheader

if.end75.cleanup137_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

for.cond82.preheader:                             ; preds = %if.end75
  %63 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp84256 = icmp sgt i32 %64, 0
  br i1 %cmp84256, label %for.cond82.preheader.for.body86_crit_edge, label %for.cond82.preheader.for.end100_crit_edge

for.cond82.preheader.for.end100_crit_edge:        ; preds = %for.cond82.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.cond82.preheader.for.body86_crit_edge:        ; preds = %for.cond82.preheader
  br label %for.body86

for.cond82:                                       ; preds = %for.body86
  %inc99 = add nuw nsw i32 %i.1257, 1
  %65 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nbanks, align 4
  %cmp84 = icmp slt i32 %inc99, %66
  br i1 %cmp84, label %for.cond82.for.body86_crit_edge, label %for.cond82.for.end100_crit_edge

for.cond82.for.end100_crit_edge:                  ; preds = %for.cond82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end100

for.cond82.for.body86_crit_edge:                  ; preds = %for.cond82
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body86

for.body86:                                       ; preds = %for.cond82.for.body86_crit_edge, %for.cond82.preheader.for.body86_crit_edge
  %i.1257 = phi i32 [ %inc99, %for.cond82.for.body86_crit_edge ], [ 0, %for.cond82.preheader.for.body86_crit_edge ]
  %call87 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %i.1257) #7
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 4
  %arrayidx89 = getelementptr ptr, ptr %68, i32 %i.1257
  %69 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call87, ptr %arrayidx89, align 4
  %70 = load ptr, ptr %regs, align 4
  %arrayidx91 = getelementptr ptr, ptr %70, i32 %i.1257
  %71 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx91, align 4
  %cmp.i = icmp ugt ptr %72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then93, label %for.cond82

if.then93:                                        ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %72 to i32
  br label %cleanup137

for.end100:                                       ; preds = %for.cond82.for.end100_crit_edge, %for.cond82.preheader.for.end100_crit_edge
  %call102 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @tegra_pinctrl_desc, ptr noundef nonnull %call.i) #7
  %pctl = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 1
  %74 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call102, ptr %pctl, align 4
  %cmp.i219 = icmp ugt ptr %call102, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %do.end108, label %if.end112

do.end108:                                        ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #10
  %75 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %pctl, align 4
  %77 = ptrtoint ptr %76 to i32
  br label %cleanup137

if.end112:                                        ; preds = %for.end100
  %78 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %soc, align 4
  %ngroups28.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %79, i32 0, i32 7
  %80 = ptrtoint ptr %ngroups28.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ngroups28.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp29.not.i = icmp eq i32 %81, 0
  br i1 %cmp29.not.i, label %if.end112.tegra_pinctrl_clear_parked_bits.exit_crit_edge, label %if.end112.for.body.i_crit_edge

if.end112.for.body.i_crit_edge:                   ; preds = %if.end112
  br label %for.body.i

if.end112.tegra_pinctrl_clear_parked_bits.exit_crit_edge: ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_pinctrl_clear_parked_bits.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end112.for.body.i_crit_edge
  %82 = phi ptr [ %112, %for.inc.i.for.body.i_crit_edge ], [ %79, %if.end112.for.body.i_crit_edge ]
  %i.030.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end112.for.body.i_crit_edge ]
  %groups.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %82, i32 0, i32 6
  %83 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %groups.i, align 4
  %parked_bitmask.i = getelementptr %struct.tegra_pingroup, ptr %84, i32 %i.030.i, i32 12
  %85 = ptrtoint ptr %parked_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %parked_bitmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp2.not.i = icmp eq i32 %86, 0
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %mux_reg.i = getelementptr %struct.tegra_pingroup, ptr %84, i32 %i.030.i, i32 4
  %87 = ptrtoint ptr %mux_reg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %mux_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp3.not.i = icmp eq i32 %88, -1
  %drv_bank.i = getelementptr %struct.tegra_pingroup, ptr %84, i32 %i.030.i, i32 8
  %89 = ptrtoint ptr %drv_bank.i to i32
  call void @__asan_loadN_noabort(i32 %89, i32 8)
  %bf.load6.i = load i64, ptr %drv_bank.i, align 4
  br i1 %cmp3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr.i = lshr i64 %bf.load6.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  br label %if.end.i220

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr7.i = lshr i64 %bf.load6.i, 56
  %90 = trunc i64 %bf.lshr7.i to i32
  %bf.cast8.i = and i32 %90, 3
  %drv_reg.i = getelementptr %struct.tegra_pingroup, ptr %84, i32 %i.030.i, i32 7
  %91 = ptrtoint ptr %drv_reg.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %drv_reg.i, align 4
  br label %if.end.i220

if.end.i220:                                      ; preds = %if.else.i, %if.then4.i
  %bank.0.i = phi i32 [ %bf.cast.i, %if.then4.i ], [ %bf.cast8.i, %if.else.i ]
  %reg.0.i = phi i32 [ %88, %if.then4.i ], [ %92, %if.else.i ]
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %94, i32 %bank.0.i
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %96, i32 %reg.0.i
  %97 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %99 = ptrtoint ptr %parked_bitmask.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %parked_bitmask.i, align 4
  %neg.i = xor i32 %100, -1
  %and.i = and i32 %98, %neg.i
  %101 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %102 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regs, align 4
  %arrayidx.i26.i = getelementptr ptr, ptr %103, i32 %bank.0.i
  %104 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx.i26.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %105, i32 %reg.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 %101) #7, !srcloc !130
  %106 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs, align 4
  %arrayidx.i.i.i = getelementptr ptr, ptr %107, i32 %bank.0.i
  %108 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %109, i32 %reg.0.i
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i220, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.030.i, 1
  %111 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %soc, align 4
  %ngroups.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %112, i32 0, i32 7
  %113 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ngroups.i, align 4
  %cmp.i221 = icmp ult i32 %inc.i, %114
  br i1 %cmp.i221, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.tegra_pinctrl_clear_parked_bits.exit_crit_edge

for.inc.i.tegra_pinctrl_clear_parked_bits.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_pinctrl_clear_parked_bits.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tegra_pinctrl_clear_parked_bits.exit:             ; preds = %for.inc.i.tegra_pinctrl_clear_parked_bits.exit_crit_edge, %if.end112.tegra_pinctrl_clear_parked_bits.exit_crit_edge
  %115 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %soc, align 4
  %117 = ptrtoint ptr %116 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %116, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp115.not = icmp eq i32 %118, 0
  br i1 %cmp115.not, label %tegra_pinctrl_clear_parked_bits.exit.if.end120_crit_edge, label %land.lhs.true

tegra_pinctrl_clear_parked_bits.exit.if.end120_crit_edge: ; preds = %tegra_pinctrl_clear_parked_bits.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

land.lhs.true:                                    ; preds = %tegra_pinctrl_clear_parked_bits.exit
  %gpio_compatible.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %116, i32 0, i32 1
  %119 = ptrtoint ptr %gpio_compatible.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %gpio_compatible.i, align 4
  %call.i223 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef %120) #7
  %tobool.not.i224 = icmp eq ptr %call.i223, null
  br i1 %tobool.not.i224, label %land.lhs.true.if.then118_crit_edge, label %tegra_pinctrl_gpio_node_has_range.exit

land.lhs.true.if.then118_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

tegra_pinctrl_gpio_node_has_range.exit:           ; preds = %land.lhs.true
  %call2.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i223, ptr noundef nonnull @.str.54, ptr noundef null) #7
  %tobool3.i.not = icmp eq ptr %call2.i, null
  tail call void @of_node_put(ptr noundef nonnull %call.i223) #7
  br i1 %tobool3.i.not, label %tegra_pinctrl_gpio_node_has_range.exit.if.then118_crit_edge, label %tegra_pinctrl_gpio_node_has_range.exit.if.end120_crit_edge

tegra_pinctrl_gpio_node_has_range.exit.if.end120_crit_edge: ; preds = %tegra_pinctrl_gpio_node_has_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

tegra_pinctrl_gpio_node_has_range.exit.if.then118_crit_edge: ; preds = %tegra_pinctrl_gpio_node_has_range.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then118

if.then118:                                       ; preds = %tegra_pinctrl_gpio_node_has_range.exit.if.then118_crit_edge, %land.lhs.true.if.then118_crit_edge
  %121 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pctl, align 4
  tail call void @pinctrl_add_gpio_range(ptr noundef %122, ptr noundef nonnull @tegra_pinctrl_gpio_range) #7
  br label %if.end120

if.end120:                                        ; preds = %if.then118, %tegra_pinctrl_gpio_node_has_range.exit.if.end120_crit_edge, %tegra_pinctrl_clear_parked_bits.exit.if.end120_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %123 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tegra_pinctrl_probe.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tegra_pinctrl_probe, %cleanup137)) #7
          to label %if.then132 [label %cleanup137], !srcloc !136

if.then132:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tegra_pinctrl_probe.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  br label %cleanup137

cleanup137:                                       ; preds = %if.then132, %if.end120, %do.end108, %if.then93, %if.end75.cleanup137_crit_edge, %devm_kcalloc.exit217.cleanup137_crit_edge, %devm_kcalloc.exit217.thread, %devm_kcalloc.exit.cleanup137_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup137_crit_edge
  %retval.0 = phi i32 [ %73, %if.then93 ], [ %77, %do.end108 ], [ -12, %entry.cleanup137_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup137_crit_edge ], [ -12, %devm_kcalloc.exit217.cleanup137_crit_edge ], [ -12, %if.end75.cleanup137_crit_edge ], [ 0, %if.then132 ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit217.thread ], [ 0, %if.end120 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %ngroups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_pinctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %soc, align 4
  %groups3 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups3, align 4
  %npins = getelementptr %struct.tegra_pingroup, ptr %9, i32 %group, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %npins, align 4
  %conv = zext i8 %11 to i32
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_pinctrl_pin_dbg_show(ptr nocapture noundef readonly %pctldev, ptr noundef %s, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #0 align 64 {
entry:
  %function.i = alloca ptr, align 4
  %val.i = alloca i32, align 4
  %configs.i = alloca ptr, align 4
  %num_configs.i = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #7
  %0 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reserved_maps, align 4
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %map, align 4
  %2 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %num_maps, align 4
  %call = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #7
  %cmp.not32 = icmp eq ptr %call, null
  br i1 %cmp.not32, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %dev1.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %np.033 = phi ptr [ %call, %for.body.lr.ph ], [ %call3, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function.i) #7
  %5 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %function.i, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #7
  %7 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %configs.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs.i) #7
  %8 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %num_configs.i, align 4
  %call.i = call i32 @of_property_read_string(ptr noundef nonnull %np.033, ptr noundef nonnull @.str.9, ptr noundef nonnull %function.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %for.body.for.body.i.preheader_crit_edge

for.body.for.body.i.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i)
  %cmp2.not.i = icmp eq i32 %call.i, -22
  br i1 %cmp2.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.10) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %9 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %function.i, align 4
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end.i, %for.body.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.0101.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %i.0101.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %np.033, ptr noundef %11, ptr noundef nonnull %val.i, i32 noundef 1, i32 noundef 0) #7
  %12 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #7
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %do.end17.i [
    i32 0, label %if.then7.i
    i32 -22, label %for.body.i.for.inc.i_crit_edge
  ]

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  %param.i = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %i.0101.i, i32 1
  %14 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %param.i, align 4
  %shl.i = shl i32 %15, 16
  %16 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val.i, align 4
  %or.i = or i32 %shl.i, %17
  %call9.i = call i32 @pinctrl_utils_add_config(ptr noundef %pctldev, ptr noundef nonnull %configs.i, ptr noundef nonnull %num_configs.i, i32 noundef %or.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then7.i.if.then_crit_edge, label %if.then7.i.for.inc.i_crit_edge

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then7.i.if.then_crit_edge:                     ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

do.end17.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.13, ptr noundef %11) #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end17.i, %if.then7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0101.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %18 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %function.i, align 4
  %20 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_configs.i, align 4
  %call.i.i = call i32 @of_property_read_string_helper(ptr noundef nonnull %np.033, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp31.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp31.i, label %do.end35.i, label %if.end36.i

do.end35.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17) #10
  br label %if.then

if.end36.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool26.not.i = icmp eq i32 %21, 0
  %cmp22.not.i = icmp ne ptr %19, null
  %spec.select.i = zext i1 %cmp22.not.i to i32
  %inc28.i = select i1 %cmp22.not.i, i32 2, i32 1
  %reserve.1.i = select i1 %tobool26.not.i, i32 %spec.select.i, i32 %inc28.i
  %mul.i = mul nuw i32 %reserve.1.i, %call.i.i
  %call37.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %mul.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end36.i.if.then_crit_edge, label %if.end40.i

if.end36.i.if.then_crit_edge:                     ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end40.i:                                       ; preds = %if.end36.i
  %call41.i = call ptr @of_find_property(ptr noundef nonnull %np.033, ptr noundef nonnull @.str.15, ptr noundef null) #7
  %call42.i = call ptr @of_prop_next_string(ptr noundef %call41.i, ptr noundef null) #7
  %tobool44.not103.i = icmp eq ptr %call42.i, null
  br i1 %tobool44.not103.i, label %if.end40.i.for.inc_crit_edge, label %if.end40.i.for.body45.i_crit_edge

if.end40.i.for.body45.i_crit_edge:                ; preds = %if.end40.i
  br label %for.body45.i

if.end40.i.for.inc_crit_edge:                     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body45.i:                                     ; preds = %for.inc60.i.for.body45.i_crit_edge, %if.end40.i.for.body45.i_crit_edge
  %group.0104.i = phi ptr [ %call61.i, %for.inc60.i.for.body45.i_crit_edge ], [ %call42.i, %if.end40.i.for.body45.i_crit_edge ]
  %22 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %function.i, align 4
  %tobool46.not.i = icmp eq ptr %23, null
  br i1 %tobool46.not.i, label %for.body45.i.if.end52.i_crit_edge, label %if.then47.i

for.body45.i.if.end52.i_crit_edge:                ; preds = %for.body45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then47.i:                                      ; preds = %for.body45.i
  %call48.i = call i32 @pinctrl_utils_add_map_mux(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef nonnull %group.0104.i, ptr noundef nonnull %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.then47.i.if.then_crit_edge, label %if.then47.i.if.end52.i_crit_edge

if.then47.i.if.end52.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then47.i.if.then_crit_edge:                    ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end52.i:                                       ; preds = %if.then47.i.if.end52.i_crit_edge, %for.body45.i.if.end52.i_crit_edge
  %24 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_configs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool53.not.i = icmp eq i32 %25, 0
  br i1 %tobool53.not.i, label %if.end52.i.for.inc60.i_crit_edge, label %if.then54.i

if.end52.i.for.inc60.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc60.i

if.then54.i:                                      ; preds = %if.end52.i
  %26 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %configs.i, align 4
  %call55.i = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef nonnull %group.0104.i, ptr noundef %27, i32 noundef %25, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %cmp56.i = icmp slt i32 %call55.i, 0
  br i1 %cmp56.i, label %if.then54.i.if.then_crit_edge, label %if.then54.i.for.inc60.i_crit_edge

if.then54.i.for.inc60.i_crit_edge:                ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc60.i

if.then54.i.if.then_crit_edge:                    ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.inc60.i:                                      ; preds = %if.then54.i.for.inc60.i_crit_edge, %if.end52.i.for.inc60.i_crit_edge
  %call61.i = call ptr @of_prop_next_string(ptr noundef %call41.i, ptr noundef nonnull %group.0104.i) #7
  %tobool44.not.i = icmp eq ptr %call61.i, null
  br i1 %tobool44.not.i, label %for.inc60.i.for.inc_crit_edge, label %for.inc60.i.for.body45.i_crit_edge

for.inc60.i.for.body45.i_crit_edge:               ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body45.i

for.inc60.i.for.inc_crit_edge:                    ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %if.then54.i.if.then_crit_edge, %if.then47.i.if.then_crit_edge, %if.end36.i.if.then_crit_edge, %do.end35.i, %if.then7.i.if.then_crit_edge
  %ret.0.i.ph = phi i32 [ %call.i.i, %do.end35.i ], [ %call55.i, %if.then54.i.if.then_crit_edge ], [ %call48.i, %if.then47.i.if.then_crit_edge ], [ %call9.i, %if.then7.i.if.then_crit_edge ], [ %call37.i, %if.end36.i.if.then_crit_edge ]
  %28 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %29) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #7
  %30 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map, align 4
  %32 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %31, i32 noundef %33) #7
  call void @of_node_put(ptr noundef nonnull %np.033) #7
  br label %cleanup

for.inc:                                          ; preds = %for.inc60.i.for.inc_crit_edge, %if.end40.i.for.inc_crit_edge
  %34 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %35) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function.i) #7
  %call3 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.033) #7
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i.ph, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_config(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_funcs_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %nfunctions = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_pinctrl_get_func_name(ptr noundef %pctldev, i32 noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.tegra_function, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.tegra_function, ptr %3, i32 %function, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %soc, align 4
  %functions3 = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %ngroups = getelementptr %struct.tegra_function, ptr %9, i32 %function, i32 2
  %10 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %mux_reg = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group, i32 4
  %4 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mux_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %do.end, label %for.body.preheader, !prof !132

for.body.preheader:                               ; preds = %entry
  %arrayidx23 = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group, i32 3, i32 0
  %6 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx23, align 1
  %conv = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %function)
  %cmp24 = icmp eq i32 %conv, %function
  br i1 %cmp24, label %for.body.preheader.if.end62_crit_edge, label %for.inc

for.body.preheader.if.end62_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 260, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

for.inc:                                          ; preds = %for.body.preheader
  %arrayidx23.1 = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group, i32 3, i32 1
  %8 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx23.1, align 1
  %conv.1 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.1, i32 %function)
  %cmp24.1 = icmp eq i32 %conv.1, %function
  br i1 %cmp24.1, label %for.inc.if.end62_crit_edge, label %for.inc.1

for.inc.if.end62_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

for.inc.1:                                        ; preds = %for.inc
  %arrayidx23.2 = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx23.2, align 1
  %conv.2 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.2, i32 %function)
  %cmp24.2 = icmp eq i32 %conv.2, %function
  br i1 %cmp24.2, label %for.inc.1.if.end62_crit_edge, label %for.inc.2

for.inc.1.if.end62_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx23.3 = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx23.3, align 1
  %conv.3 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.3, i32 %function)
  %cmp24.3 = icmp eq i32 %conv.3, %function
  br i1 %cmp24.3, label %for.inc.2.if.end62_crit_edge, label %do.end46

for.inc.2.if.end62_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

do.end46:                                         ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 267, i32 noundef 9, ptr noundef null) #7
  br label %cleanup

if.end62:                                         ; preds = %for.inc.2.if.end62_crit_edge, %for.inc.1.if.end62_crit_edge, %for.inc.if.end62_crit_edge, %for.body.preheader.if.end62_crit_edge
  %i.0104.lcssa = phi i32 [ 0, %for.body.preheader.if.end62_crit_edge ], [ 1, %for.inc.if.end62_crit_edge ], [ 2, %for.inc.1.if.end62_crit_edge ], [ 3, %for.inc.2.if.end62_crit_edge ]
  %mux_bank = getelementptr %struct.tegra_pingroup, ptr %3, i32 %group, i32 8
  %14 = ptrtoint ptr %mux_bank to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load = load i64, ptr %mux_bank, align 4
  %bf.lshr = lshr i64 %bf.load, 62
  %bf.cast = trunc i64 %bf.lshr to i32
  %regs.i = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %16, i32 %bf.cast
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %5
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %21 = ptrtoint ptr %mux_bank to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load65 = load i64, ptr %mux_bank, align 4
  %bf.shl = shl i64 %bf.load65, 8
  %bf.ashr = ashr i64 %bf.shl, 58
  %bf.cast66 = trunc i64 %bf.ashr to i32
  %shl = shl i32 3, %bf.cast66
  %neg = xor i32 %shl, -1
  %and = and i32 %20, %neg
  %shl72 = shl i32 %i.0104.lcssa, %bf.cast66
  %or = or i32 %and, %shl72
  %bf.lshr75 = lshr i64 %bf.load65, 62
  %bf.cast76 = trunc i64 %bf.lshr75 to i32
  %22 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mux_reg, align 4
  %24 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 4
  %arrayidx.i99 = getelementptr ptr, ptr %26, i32 %bf.cast76
  %27 = ptrtoint ptr %arrayidx.i99 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i99, align 4
  %add.ptr.i100 = getelementptr i8, ptr %28, i32 %23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %24) #7, !srcloc !130
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %30, i32 %bf.cast76
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 %23
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end46, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end46 ], [ 0, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinctrl_gpio_request_enable(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %sfsel_in_mux = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sfsel_in_mux to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sfsel_in_mux, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc.i = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %ngroups32.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ngroups32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp33.not.i = icmp eq i32 %7, 0
  br i1 %cmp33.not.i, label %if.end.tegra_pinctrl_get_group.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.tegra_pinctrl_get_group.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_pinctrl_get_group.exit.thread

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %group.034.i = phi i32 [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc.i.i = getelementptr inbounds %struct.tegra_pmx, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i.i, align 4
  %groups.i.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %groups.i.i, align 4
  %pins1.i.i = getelementptr %struct.tegra_pingroup, ptr %11, i32 %group.034.i, i32 1
  %12 = ptrtoint ptr %pins1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pins1.i.i, align 4
  %npins.i.i = getelementptr %struct.tegra_pingroup, ptr %11, i32 %group.034.i, i32 2
  %14 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %npins.i.i, align 4
  %conv.i.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp430.not.i = icmp eq i8 %15, 0
  br i1 %cmp430.not.i, label %for.body.i.for.inc11.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.cond3.i:                                      ; preds = %for.body5.i
  %inc.i = add nuw nsw i32 %j.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i.i
  br i1 %exitcond.not.i, label %for.cond3.i.for.inc11.i_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i

for.cond3.i.for.inc11.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %j.031.i = phi i32 [ %inc.i, %for.cond3.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %13, i32 %j.031.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %offset)
  %cmp6.i = icmp eq i32 %17, %offset
  br i1 %cmp6.i, label %tegra_pinctrl_get_group.exit, label %for.cond3.i

for.inc11.i:                                      ; preds = %for.cond3.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %group.034.i, 1
  %18 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc.i, align 4
  %ngroups.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ngroups.i, align 4
  %cmp.i = icmp ult i32 %inc12.i, %21
  br i1 %cmp.i, label %for.inc11.i.for.body.i_crit_edge, label %for.inc11.i.tegra_pinctrl_get_group.exit.thread_crit_edge

for.inc11.i.tegra_pinctrl_get_group.exit.thread_crit_edge: ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_pinctrl_get_group.exit.thread

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tegra_pinctrl_get_group.exit.thread:              ; preds = %for.inc11.i.tegra_pinctrl_get_group.exit.thread_crit_edge, %if.end.tegra_pinctrl_get_group.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.35, i32 noundef %offset) #10
  br label %cleanup

tegra_pinctrl_get_group.exit:                     ; preds = %for.body5.i
  %24 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc.i, align 4
  %groups.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %groups.i, align 4
  %arrayidx9.i = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i
  %tobool2.not = icmp eq ptr %arrayidx9.i, null
  br i1 %tobool2.not, label %tegra_pinctrl_get_group.exit.cleanup_crit_edge, label %if.end4

tegra_pinctrl_get_group.exit.cleanup_crit_edge:   ; preds = %tegra_pinctrl_get_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %tegra_pinctrl_get_group.exit
  %mux_reg = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i, i32 4
  %28 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mux_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp slt i32 %29, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %sfsel_bit = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i, i32 9
  %30 = ptrtoint ptr %sfsel_bit to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %sfsel_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load)
  %cmp5 = icmp slt i32 %bf.load, 0
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %mux_bank = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i, i32 8
  %31 = ptrtoint ptr %mux_bank to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load8 = load i64, ptr %mux_bank, align 4
  %bf.lshr = lshr i64 %bf.load8, 62
  %bf.cast = trunc i64 %bf.lshr to i32
  %regs.i = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 5
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %arrayidx.i32 = getelementptr ptr, ptr %33, i32 %bf.cast
  %34 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i32, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %29
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %38 = ptrtoint ptr %sfsel_bit to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load12 = load i32, ptr %sfsel_bit, align 4
  %bf.ashr13 = ashr i32 %bf.load12, 26
  %shl = shl nuw i32 1, %bf.ashr13
  %neg = xor i32 %shl, -1
  %and = and i32 %37, %neg
  %39 = ptrtoint ptr %mux_bank to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load15 = load i64, ptr %mux_bank, align 4
  %bf.lshr16 = lshr i64 %bf.load15, 62
  %bf.cast17 = trunc i64 %bf.lshr16 to i32
  %40 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mux_reg, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %arrayidx.i34 = getelementptr ptr, ptr %44, i32 %bf.cast17
  %45 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i34, align 4
  %add.ptr.i35 = getelementptr i8, ptr %46, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %42) #7, !srcloc !130
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %48, i32 %bf.cast17
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %41
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %tegra_pinctrl_get_group.exit.cleanup_crit_edge, %tegra_pinctrl_get_group.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %tegra_pinctrl_get_group.exit.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %tegra_pinctrl_get_group.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_pinctrl_gpio_disable_free(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %sfsel_in_mux = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %sfsel_in_mux to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sfsel_in_mux, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc.i = getelementptr inbounds %struct.tegra_pmx, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %ngroups32.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %ngroups32.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp33.not.i = icmp eq i32 %7, 0
  br i1 %cmp33.not.i, label %if.end.tegra_pinctrl_get_group.exit.thread_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.tegra_pinctrl_get_group.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_pinctrl_get_group.exit.thread

for.body.i:                                       ; preds = %for.inc11.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %group.034.i = phi i32 [ %inc12.i, %for.inc11.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %call.i.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %soc.i.i = getelementptr inbounds %struct.tegra_pmx, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i.i, align 4
  %groups.i.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %groups.i.i, align 4
  %pins1.i.i = getelementptr %struct.tegra_pingroup, ptr %11, i32 %group.034.i, i32 1
  %12 = ptrtoint ptr %pins1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pins1.i.i, align 4
  %npins.i.i = getelementptr %struct.tegra_pingroup, ptr %11, i32 %group.034.i, i32 2
  %14 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %npins.i.i, align 4
  %conv.i.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp430.not.i = icmp eq i8 %15, 0
  br i1 %cmp430.not.i, label %for.body.i.for.inc11.i_crit_edge, label %for.body.i.for.body5.i_crit_edge

for.body.i.for.body5.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body5.i

for.body.i.for.inc11.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.cond3.i:                                      ; preds = %for.body5.i
  %inc.i = add nuw nsw i32 %j.031.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i.i
  br i1 %exitcond.not.i, label %for.cond3.i.for.inc11.i_crit_edge, label %for.cond3.i.for.body5.i_crit_edge

for.cond3.i.for.body5.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body5.i

for.cond3.i.for.inc11.i_crit_edge:                ; preds = %for.cond3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc11.i

for.body5.i:                                      ; preds = %for.cond3.i.for.body5.i_crit_edge, %for.body.i.for.body5.i_crit_edge
  %j.031.i = phi i32 [ %inc.i, %for.cond3.i.for.body5.i_crit_edge ], [ 0, %for.body.i.for.body5.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %13, i32 %j.031.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %offset)
  %cmp6.i = icmp eq i32 %17, %offset
  br i1 %cmp6.i, label %tegra_pinctrl_get_group.exit, label %for.cond3.i

for.inc11.i:                                      ; preds = %for.cond3.i.for.inc11.i_crit_edge, %for.body.i.for.inc11.i_crit_edge
  %inc12.i = add nuw i32 %group.034.i, 1
  %18 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %soc.i, align 4
  %ngroups.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ngroups.i, align 4
  %cmp.i = icmp ult i32 %inc12.i, %21
  br i1 %cmp.i, label %for.inc11.i.for.body.i_crit_edge, label %for.inc11.i.tegra_pinctrl_get_group.exit.thread_crit_edge

for.inc11.i.tegra_pinctrl_get_group.exit.thread_crit_edge: ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tegra_pinctrl_get_group.exit.thread

for.inc11.i.for.body.i_crit_edge:                 ; preds = %for.inc11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

tegra_pinctrl_get_group.exit.thread:              ; preds = %for.inc11.i.tegra_pinctrl_get_group.exit.thread_crit_edge, %if.end.tegra_pinctrl_get_group.exit.thread_crit_edge
  %dev.i = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.35, i32 noundef %offset) #10
  br label %cleanup

tegra_pinctrl_get_group.exit:                     ; preds = %for.body5.i
  %24 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc.i, align 4
  %groups.i = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %groups.i, align 4
  %arrayidx9.i = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i
  %tobool2.not = icmp eq ptr %arrayidx9.i, null
  br i1 %tobool2.not, label %tegra_pinctrl_get_group.exit.cleanup_crit_edge, label %if.end4

tegra_pinctrl_get_group.exit.cleanup_crit_edge:   ; preds = %tegra_pinctrl_get_group.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %tegra_pinctrl_get_group.exit
  %mux_reg = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i, i32 4
  %28 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mux_reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp slt i32 %29, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %sfsel_bit = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i, i32 9
  %30 = ptrtoint ptr %sfsel_bit to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load = load i32, ptr %sfsel_bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load)
  %cmp5 = icmp slt i32 %bf.load, 0
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %mux_bank = getelementptr %struct.tegra_pingroup, ptr %27, i32 %group.034.i, i32 8
  %31 = ptrtoint ptr %mux_bank to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load8 = load i64, ptr %mux_bank, align 4
  %bf.lshr = lshr i64 %bf.load8, 62
  %bf.cast = trunc i64 %bf.lshr to i32
  %regs.i = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 5
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %arrayidx.i32 = getelementptr ptr, ptr %33, i32 %bf.cast
  %34 = ptrtoint ptr %arrayidx.i32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i32, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %29
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %38 = ptrtoint ptr %sfsel_bit to i32
  call void @__asan_load4_noabort(i32 %38)
  %bf.load12 = load i32, ptr %sfsel_bit, align 4
  %bf.ashr13 = ashr i32 %bf.load12, 26
  %shl = shl nuw i32 1, %bf.ashr13
  %or = or i32 %shl, %37
  %39 = ptrtoint ptr %mux_bank to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load15 = load i64, ptr %mux_bank, align 4
  %bf.lshr16 = lshr i64 %bf.load15, 62
  %bf.cast17 = trunc i64 %bf.lshr16 to i32
  %40 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mux_reg, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %arrayidx.i34 = getelementptr ptr, ptr %44, i32 %bf.cast17
  %45 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i34, align 4
  %add.ptr.i35 = getelementptr i8, ptr %46, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i35, i32 %42) #7, !srcloc !130
  %47 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %48, i32 %bf.cast17
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %41
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %tegra_pinctrl_get_group.exit.cleanup_crit_edge, %tegra_pinctrl_get_group.exit.thread, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_get(ptr nocapture noundef readonly %pctldev, i32 noundef %pin, ptr nocapture noundef readnone %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.37) #10
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_set(ptr nocapture noundef readonly %pctldev, i32 noundef %pin, ptr nocapture noundef readnone %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.39) #10
  ret i32 -524
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #0 align 64 {
entry:
  %bank = alloca i8, align 1
  %bit = alloca i8, align 1
  %width = alloca i8, align 1
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %shr = lshr i32 %1, 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bank) #7
  %2 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %bank, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit) #7
  %3 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %bit, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %width) #7
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %width, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg, align 4, !annotation !137
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.tegra_pingroup, ptr %9, i32 %group
  %call1 = call fastcc i32 @tegra_pinconf_reg(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %shr, i1 noundef zeroext true, ptr noundef nonnull %bank, ptr noundef nonnull %reg, ptr noundef nonnull %bit, ptr noundef nonnull %width)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bank, align 1
  %conv = sext i8 %11 to i32
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %regs.i = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %conv
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %20 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %width, align 1
  %conv324 = zext i8 %21 to i32
  %notmask = shl nsw i32 -1, %conv324
  %22 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bit, align 1
  %conv425 = zext i8 %23 to i32
  %shr5 = lshr i32 %19, %conv425
  %shl7 = and i32 %1, -65536
  %sub = and i32 %notmask, 65535
  %and = xor i32 %sub, 65535
  %conv8 = and i32 %and, %shr5
  %or = or i32 %conv8, %shl7
  %24 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %width) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bank) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  %bank = alloca i8, align 1
  %bit = alloca i8, align 1
  %width = alloca i8, align 1
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bank) #7
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bank, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit) #7
  %1 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %bit, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %width) #7
  %2 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %width, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !137
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.tegra_pingroup, ptr %7, i32 %group
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp84.not = icmp eq i32 %num_configs, 0
  br i1 %cmp84.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %regs.i = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %for.body.lr.ph
  %i.085 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end38.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.085
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  %shr = lshr i32 %9, 16
  %conv = trunc i32 %9 to i16
  %call3 = call fastcc i32 @tegra_pinconf_reg(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %shr, i1 noundef zeroext true, ptr noundef nonnull %bank, ptr noundef nonnull %reg, ptr noundef nonnull %bit, ptr noundef nonnull %width)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bank, align 1
  %conv6 = sext i8 %11 to i32
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %conv6
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %shr)
  %cmp8 = icmp eq i32 %shr, 4
  br i1 %cmp8, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then10:                                        ; preds = %if.end
  %20 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bit, align 1
  %conv1179 = zext i8 %21 to i32
  %shl = shl nuw i32 1, %conv1179
  %and12 = and i32 %shl, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp ne i32 %and12, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool13.not = icmp eq i16 %conv, 0
  %or.cond = select i1 %tobool.not, i1 %tobool13.not, i1 false
  br i1 %or.cond, label %do.end, label %if.then10.if.end16_crit_edge

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.47) #10
  br label %cleanup

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %24 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp18 = icmp eq i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool21 = icmp ne i16 %conv, 0
  %lnot.ext = zext i1 %tobool21 to i32
  %arg.0 = select i1 %cmp18, i32 %lnot.ext, i32 %9
  %conv2587 = zext i8 %25 to i32
  %notmask = shl nsw i32 -1, %conv2587
  %conv27 = and i32 %arg.0, 65535
  %and28 = and i32 %conv27, %notmask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end38, label %do.end33

do.end33:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1.le = getelementptr i32, ptr %configs, i32 %i.085
  %conv25.le = sext i8 %25 to i32
  %dev34 = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %26 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev34, align 4
  %28 = ptrtoint ptr %arrayidx1.le to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.le, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.50, i32 noundef %29, i32 noundef %conv27, i32 noundef %conv25.le) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end16
  %sub = xor i32 %notmask, -1
  %30 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bit, align 1
  %conv39 = sext i8 %31 to i32
  %shl40 = shl i32 %sub, %conv39
  %neg41 = xor i32 %shl40, -1
  %and42 = and i32 %19, %neg41
  %shl45 = shl i32 %conv27, %conv39
  %or = or i32 %and42, %shl45
  %32 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 4
  %arrayidx.i81 = getelementptr ptr, ptr %34, i32 %conv6
  %35 = ptrtoint ptr %arrayidx.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i81, align 4
  %add.ptr.i82 = getelementptr i8, ptr %36, i32 %13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i82, i32 %32) #7, !srcloc !130
  %37 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %38, i32 %conv6
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %40, i32 %13
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %inc = add nuw i32 %i.085, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %if.end38.cleanup_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end38.cleanup_crit_edge, %do.end33, %do.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end33 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %width) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bank) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra_pinconf_dbg_show(ptr nocapture noundef %pctldev, ptr nocapture noundef %s, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_pinconf_group_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %group) #0 align 64 {
entry:
  %bank = alloca i8, align 1
  %bit = alloca i8, align 1
  %width = alloca i8, align 1
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bank) #7
  %0 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bank, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bit) #7
  %1 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %bit, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %width) #7
  %2 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %width, align 1, !annotation !137
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %reg, align 4, !annotation !137
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.tegra_pingroup, ptr %7, i32 %group
  %regs.i = getelementptr inbounds %struct.tegra_pmx, ptr %call, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %param = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %i.019, i32 1
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param, align 4
  %call2 = call fastcc i32 @tegra_pinconf_reg(ptr noundef %call, ptr noundef %arrayidx, i32 noundef %9, i1 noundef zeroext false, ptr noundef nonnull %bank, ptr noundef nonnull %reg, ptr noundef nonnull %bit, ptr noundef nonnull %width)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx1 = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %i.019
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bank, align 1
  %conv = sext i8 %11 to i32
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %14 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %conv
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %13
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !129
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  %20 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bit, align 1
  %conv516 = zext i8 %21 to i32
  %shr = lshr i32 %19, %conv516
  %22 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %width, align 1
  %conv617 = zext i8 %23 to i32
  %notmask = shl nsw i32 -1, %conv617
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %24 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1, align 4
  %call.i = tail call ptr @strchr(ptr noundef %25, i32 noundef 44) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i18 = getelementptr i8, ptr %call.i, i32 1
  %retval.0.i = select i1 %tobool.not.i, ptr %25, ptr %add.ptr.i18
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, ptr noundef %retval.0.i, i32 noundef %and) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %width) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bit) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bank) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_pinconf_config_dbg_show(ptr nocapture noundef readnone %pctldev, ptr noundef %s, i32 noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %config)
  %cmp3 = icmp ult i32 %config, 65536
  br i1 %cmp3, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

switch.lookup:                                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %0 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.tegra_pinconf_config_dbg_show, i32 0, i32 %0
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.then

if.then:                                          ; preds = %switch.lookup, %entry.if.then_crit_edge
  %i.012.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ %switch.load, %switch.lookup ]
  %arrayidx = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %i.012.lcssa
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  br label %for.end

for.inc:                                          ; preds = %entry
  %shr = lshr i32 %config, 16
  %trunc = trunc i32 %shr to i16
  %switch.tableidx = add i16 %trunc, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %switch.tableidx)
  %4 = icmp ult i16 %switch.tableidx, 14
  br i1 %4, label %switch.lookup, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then
  %pname.0 = phi ptr [ %3, %if.then ], [ @.str.43, %for.inc.for.end_crit_edge ]
  %call.i = tail call ptr @strchr(ptr noundef %pname.0, i32 noundef 44) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 1
  %retval.0.i = select i1 %tobool.not.i, ptr %pname.0, ptr %add.ptr.i
  %conv6 = and i32 %config, 65535
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, ptr noundef %retval.0.i, i32 noundef %conv6) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tegra_pinconf_reg(ptr nocapture noundef readonly %pmx, ptr noundef readonly %g, i32 noundef %param, i1 noundef zeroext %report_err, ptr nocapture noundef writeonly %bank, ptr nocapture noundef %reg, ptr nocapture noundef %bit, ptr nocapture noundef writeonly %width) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %param, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb15
    i32 3, label %sw.bb25
    i32 4, label %sw.bb37
    i32 5, label %sw.bb49
    i32 6, label %sw.bb61
    i32 7, label %sw.bb73
    i32 8, label %sw.bb90
    i32 9, label %sw.bb113
    i32 10, label %sw.bb125
    i32 11, label %sw.bb141
    i32 12, label %sw.bb156
    i32 13, label %sw.bb172
    i32 14, label %sw.bb187
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pupd_bank = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %1 = ptrtoint ptr %pupd_bank to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %bf.load = load i64, ptr %pupd_bank, align 4
  %bf.lshr = lshr i64 %bf.load, 60
  %2 = trunc i64 %bf.lshr to i8
  %bf.cast = and i8 %2, 3
  %3 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.cast, ptr %bank, align 1
  %pupd_reg = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 5
  %4 = ptrtoint ptr %pupd_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pupd_reg, align 4
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %reg, align 4
  %bf.load1 = load i64, ptr %pupd_bank, align 4
  %bf.shl = shl i64 %bf.load1, 14
  %bf.ashr = ashr i64 %bf.shl, 58
  %conv3 = trunc i64 %bf.ashr to i8
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3, ptr %bit, align 1
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tri_bank = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %8 = ptrtoint ptr %tri_bank to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load5 = load i64, ptr %tri_bank, align 4
  %bf.lshr6 = lshr i64 %bf.load5, 58
  %9 = trunc i64 %bf.lshr6 to i8
  %bf.cast8 = and i8 %9, 3
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.cast8, ptr %bank, align 1
  %tri_reg = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 6
  %11 = ptrtoint ptr %tri_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tri_reg, align 4
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %reg, align 4
  %bf.load10 = load i64, ptr %tri_bank, align 4
  %bf.shl11 = shl i64 %bf.load10, 20
  %bf.ashr12 = ashr i64 %bf.shl11, 58
  %conv14 = trunc i64 %bf.ashr12 to i8
  %14 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %bit, align 1
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mux_bank = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %15 = ptrtoint ptr %mux_bank to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load16 = load i64, ptr %mux_bank, align 4
  %bf.lshr17 = lshr i64 %bf.load16, 62
  %conv19 = trunc i64 %bf.lshr17 to i8
  %16 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv19, ptr %bank, align 1
  %mux_reg = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  %17 = ptrtoint ptr %mux_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mux_reg, align 4
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %reg, align 4
  %bf.load20 = load i64, ptr %mux_bank, align 4
  %bf.shl21 = shl i64 %bf.load20, 26
  %bf.ashr22 = ashr i64 %bf.shl21, 58
  %conv24 = trunc i64 %bf.ashr22 to i8
  %20 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv24, ptr %bit, align 1
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mux_bank26 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %21 = ptrtoint ptr %mux_bank26 to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load27 = load i64, ptr %mux_bank26, align 4
  %bf.lshr28 = lshr i64 %bf.load27, 62
  %conv30 = trunc i64 %bf.lshr28 to i8
  %22 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv30, ptr %bank, align 1
  %mux_reg31 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  %23 = ptrtoint ptr %mux_reg31 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mux_reg31, align 4
  %25 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %reg, align 4
  %bf.load32 = load i64, ptr %mux_bank26, align 4
  %bf.shl33 = shl i64 %bf.load32, 32
  %bf.ashr34 = ashr i64 %bf.shl33, 58
  %conv36 = trunc i64 %bf.ashr34 to i8
  %26 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %bit, align 1
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mux_bank38 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %27 = ptrtoint ptr %mux_bank38 to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load39 = load i64, ptr %mux_bank38, align 4
  %bf.lshr40 = lshr i64 %bf.load39, 62
  %conv42 = trunc i64 %bf.lshr40 to i8
  %28 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv42, ptr %bank, align 1
  %mux_reg43 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  %29 = ptrtoint ptr %mux_reg43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mux_reg43, align 4
  %31 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %reg, align 4
  %bf.load44 = load i64, ptr %mux_bank38, align 4
  %bf.shl45 = shl i64 %bf.load44, 38
  %bf.ashr46 = ashr i64 %bf.shl45, 58
  %conv48 = trunc i64 %bf.ashr46 to i8
  %32 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv48, ptr %bit, align 1
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mux_bank50 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %33 = ptrtoint ptr %mux_bank50 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load51 = load i64, ptr %mux_bank50, align 4
  %bf.lshr52 = lshr i64 %bf.load51, 62
  %conv54 = trunc i64 %bf.lshr52 to i8
  %34 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv54, ptr %bank, align 1
  %mux_reg55 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  %35 = ptrtoint ptr %mux_reg55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mux_reg55, align 4
  %37 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %reg, align 4
  %bf.load56 = load i64, ptr %mux_bank50, align 4
  %bf.shl57 = shl i64 %bf.load56, 44
  %bf.ashr58 = ashr i64 %bf.shl57, 58
  %conv60 = trunc i64 %bf.ashr58 to i8
  %38 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv60, ptr %bit, align 1
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mux_bank62 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %39 = ptrtoint ptr %mux_bank62 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load63 = load i64, ptr %mux_bank62, align 4
  %bf.lshr64 = lshr i64 %bf.load63, 62
  %conv66 = trunc i64 %bf.lshr64 to i8
  %40 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv66, ptr %bank, align 1
  %mux_reg67 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  %41 = ptrtoint ptr %mux_reg67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mux_reg67, align 4
  %43 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %reg, align 4
  %bf.load68 = load i64, ptr %mux_bank62, align 4
  %bf.shl69 = shl i64 %bf.load68, 50
  %bf.ashr70 = ashr i64 %bf.shl69, 58
  %conv72 = trunc i64 %bf.ashr70 to i8
  %44 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv72, ptr %bit, align 1
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  %soc = getelementptr inbounds %struct.tegra_pmx, ptr %pmx, i32 0, i32 2
  %45 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soc, align 4
  %hsm_in_mux = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %46, i32 0, i32 8
  %47 = ptrtoint ptr %hsm_in_mux to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hsm_in_mux, align 4, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not = icmp eq i8 %48, 0
  %drv_bank = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %49 = ptrtoint ptr %drv_bank to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load80 = load i64, ptr %drv_bank, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr76 = lshr i64 %bf.load80, 62
  %conv78 = trunc i64 %bf.lshr76 to i8
  %50 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv78, ptr %bank, align 1
  %mux_reg79 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  br label %if.end

if.else:                                          ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr81 = lshr i64 %bf.load80, 56
  %51 = trunc i64 %bf.lshr81 to i8
  %bf.cast83 = and i8 %51, 3
  %52 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %bf.cast83, ptr %bank, align 1
  %drv_reg = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge360.in = phi ptr [ %drv_reg, %if.else ], [ %mux_reg79, %if.then ]
  %53 = ptrtoint ptr %storemerge360.in to i32
  call void @__asan_load4_noabort(i32 %53)
  %storemerge360 = load i32, ptr %storemerge360.in, align 4
  %54 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %storemerge360, ptr %reg, align 4
  %hsm_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %55 = ptrtoint ptr %hsm_bit to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %bf.load85 = load i64, ptr %hsm_bit, align 4
  %bf.shl86 = shl i64 %bf.load85, 56
  %bf.ashr87 = ashr i64 %bf.shl86, 58
  %conv89 = trunc i64 %bf.ashr87 to i8
  %56 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv89, ptr %bit, align 1
  br label %sw.epilog

sw.bb90:                                          ; preds = %entry
  %soc91 = getelementptr inbounds %struct.tegra_pmx, ptr %pmx, i32 0, i32 2
  %57 = ptrtoint ptr %soc91 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %soc91, align 4
  %schmitt_in_mux = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %58, i32 0, i32 9
  %59 = ptrtoint ptr %schmitt_in_mux to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %schmitt_in_mux, align 1, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool92.not = icmp eq i8 %60, 0
  %drv_bank101 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %61 = ptrtoint ptr %drv_bank101 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %bf.load102 = load i64, ptr %drv_bank101, align 4
  br i1 %tobool92.not, label %if.else100, label %if.then93

if.then93:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr96 = lshr i64 %bf.load102, 62
  %conv98 = trunc i64 %bf.lshr96 to i8
  %62 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %conv98, ptr %bank, align 1
  %mux_reg99 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  br label %if.end108

if.else100:                                       ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr103 = lshr i64 %bf.load102, 56
  %63 = trunc i64 %bf.lshr103 to i8
  %bf.cast105 = and i8 %63, 3
  %64 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %bf.cast105, ptr %bank, align 1
  %drv_reg107 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  br label %if.end108

if.end108:                                        ; preds = %if.else100, %if.then93
  %storemerge359.in = phi ptr [ %drv_reg107, %if.else100 ], [ %mux_reg99, %if.then93 ]
  %65 = ptrtoint ptr %storemerge359.in to i32
  call void @__asan_load4_noabort(i32 %65)
  %storemerge359 = load i32, ptr %storemerge359.in, align 4
  %66 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %storemerge359, ptr %reg, align 4
  %schmitt_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 9
  %67 = ptrtoint ptr %schmitt_bit to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load109 = load i32, ptr %schmitt_bit, align 4
  %bf.shl110 = shl i32 %bf.load109, 6
  %bf.ashr111 = ashr i32 %bf.shl110, 26
  %conv112 = trunc i32 %bf.ashr111 to i8
  %68 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv112, ptr %bit, align 1
  br label %sw.epilog

sw.bb113:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_bank114 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %69 = ptrtoint ptr %drv_bank114 to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %bf.load115 = load i64, ptr %drv_bank114, align 4
  %bf.lshr116 = lshr i64 %bf.load115, 56
  %70 = trunc i64 %bf.lshr116 to i8
  %bf.cast118 = and i8 %70, 3
  %71 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %bf.cast118, ptr %bank, align 1
  %drv_reg120 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  %72 = ptrtoint ptr %drv_reg120 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %drv_reg120, align 4
  %74 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %73, ptr %reg, align 4
  %lpmd_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 9
  %75 = ptrtoint ptr %lpmd_bit to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load121 = load i32, ptr %lpmd_bit, align 4
  %bf.shl122 = shl i32 %bf.load121, 12
  %bf.ashr123 = ashr i32 %bf.shl122, 26
  %conv124 = trunc i32 %bf.ashr123 to i8
  %76 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv124, ptr %bit, align 1
  br label %sw.epilog

sw.bb125:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_bank126 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %77 = ptrtoint ptr %drv_bank126 to i32
  call void @__asan_loadN_noabort(i32 %77, i32 8)
  %bf.load127 = load i64, ptr %drv_bank126, align 4
  %bf.lshr128 = lshr i64 %bf.load127, 56
  %78 = trunc i64 %bf.lshr128 to i8
  %bf.cast130 = and i8 %78, 3
  %79 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %bf.cast130, ptr %bank, align 1
  %drv_reg132 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  %80 = ptrtoint ptr %drv_reg132 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %drv_reg132, align 4
  %82 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %reg, align 4
  %drvdn_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 9
  %83 = ptrtoint ptr %drvdn_bit to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load133 = load i32, ptr %drvdn_bit, align 4
  %bf.shl134 = shl i32 %bf.load133, 18
  %bf.ashr135 = ashr i32 %bf.shl134, 26
  %conv136 = trunc i32 %bf.ashr135 to i8
  %84 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv136, ptr %bit, align 1
  %drvdn_width = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 10
  %85 = ptrtoint ptr %drvdn_width to i32
  call void @__asan_load4_noabort(i32 %85)
  %bf.load137 = load i32, ptr %drvdn_width, align 4
  %bf.shl138 = shl i32 %bf.load137, 24
  %bf.ashr139 = ashr i32 %bf.shl138, 26
  %conv140 = trunc i32 %bf.ashr139 to i8
  br label %sw.epilog

sw.bb141:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_bank142 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %86 = ptrtoint ptr %drv_bank142 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %bf.load143 = load i64, ptr %drv_bank142, align 4
  %bf.lshr144 = lshr i64 %bf.load143, 56
  %87 = trunc i64 %bf.lshr144 to i8
  %bf.cast146 = and i8 %87, 3
  %88 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %bf.cast146, ptr %bank, align 1
  %drv_reg148 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  %89 = ptrtoint ptr %drv_reg148 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %drv_reg148, align 4
  %91 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %reg, align 4
  %drvup_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 9
  %92 = ptrtoint ptr %drvup_bit to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load149 = load i32, ptr %drvup_bit, align 4
  %bf.shl150 = shl i32 %bf.load149, 24
  %bf.ashr151 = ashr i32 %bf.shl150, 26
  %conv152 = trunc i32 %bf.ashr151 to i8
  %93 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv152, ptr %bit, align 1
  %drvup_width = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 11
  %94 = ptrtoint ptr %drvup_width to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load153 = load i32, ptr %drvup_width, align 4
  %bf.ashr154 = ashr i32 %bf.load153, 26
  %conv155 = trunc i32 %bf.ashr154 to i8
  br label %sw.epilog

sw.bb156:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_bank157 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %95 = ptrtoint ptr %drv_bank157 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 8)
  %bf.load158 = load i64, ptr %drv_bank157, align 4
  %bf.lshr159 = lshr i64 %bf.load158, 56
  %96 = trunc i64 %bf.lshr159 to i8
  %bf.cast161 = and i8 %96, 3
  %97 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %bf.cast161, ptr %bank, align 1
  %drv_reg163 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  %98 = ptrtoint ptr %drv_reg163 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %drv_reg163, align 4
  %100 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %reg, align 4
  %slwf_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 10
  %101 = ptrtoint ptr %slwf_bit to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load164 = load i32, ptr %slwf_bit, align 4
  %bf.shl165 = shl i32 %bf.load164, 6
  %bf.ashr166 = ashr i32 %bf.shl165, 26
  %conv167 = trunc i32 %bf.ashr166 to i8
  %102 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv167, ptr %bit, align 1
  %slwf_width = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 11
  %103 = ptrtoint ptr %slwf_width to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load168 = load i32, ptr %slwf_width, align 4
  %bf.shl169 = shl i32 %bf.load168, 12
  %bf.ashr170 = ashr i32 %bf.shl169, 26
  %conv171 = trunc i32 %bf.ashr170 to i8
  br label %sw.epilog

sw.bb172:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %drv_bank173 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %104 = ptrtoint ptr %drv_bank173 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 8)
  %bf.load174 = load i64, ptr %drv_bank173, align 4
  %bf.lshr175 = lshr i64 %bf.load174, 56
  %105 = trunc i64 %bf.lshr175 to i8
  %bf.cast177 = and i8 %105, 3
  %106 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %bf.cast177, ptr %bank, align 1
  %drv_reg179 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  %107 = ptrtoint ptr %drv_reg179 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %drv_reg179, align 4
  %109 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %reg, align 4
  %slwr_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 10
  %110 = ptrtoint ptr %slwr_bit to i32
  call void @__asan_load4_noabort(i32 %110)
  %bf.load180 = load i32, ptr %slwr_bit, align 4
  %bf.ashr181 = ashr i32 %bf.load180, 26
  %conv182 = trunc i32 %bf.ashr181 to i8
  %111 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv182, ptr %bit, align 1
  %slwr_width = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 11
  %112 = ptrtoint ptr %slwr_width to i32
  call void @__asan_load4_noabort(i32 %112)
  %bf.load183 = load i32, ptr %slwr_width, align 4
  %bf.shl184 = shl i32 %bf.load183, 6
  %bf.ashr185 = ashr i32 %bf.shl184, 26
  %conv186 = trunc i32 %bf.ashr185 to i8
  br label %sw.epilog

sw.bb187:                                         ; preds = %entry
  %soc188 = getelementptr inbounds %struct.tegra_pmx, ptr %pmx, i32 0, i32 2
  %113 = ptrtoint ptr %soc188 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %soc188, align 4
  %drvtype_in_mux = getelementptr inbounds %struct.tegra_pinctrl_soc_data, ptr %114, i32 0, i32 10
  %115 = ptrtoint ptr %drvtype_in_mux to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %drvtype_in_mux, align 2, !range !138
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool189.not = icmp eq i8 %116, 0
  %drv_bank198 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 8
  %117 = ptrtoint ptr %drv_bank198 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %bf.load199 = load i64, ptr %drv_bank198, align 4
  br i1 %tobool189.not, label %if.else197, label %if.then190

if.then190:                                       ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr193 = lshr i64 %bf.load199, 62
  %conv195 = trunc i64 %bf.lshr193 to i8
  %118 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv195, ptr %bank, align 1
  %mux_reg196 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 4
  br label %if.end205

if.else197:                                       ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #9
  %bf.lshr200 = lshr i64 %bf.load199, 56
  %119 = trunc i64 %bf.lshr200 to i8
  %bf.cast202 = and i8 %119, 3
  %120 = ptrtoint ptr %bank to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %bf.cast202, ptr %bank, align 1
  %drv_reg204 = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 7
  br label %if.end205

if.end205:                                        ; preds = %if.else197, %if.then190
  %storemerge.in = phi ptr [ %drv_reg204, %if.else197 ], [ %mux_reg196, %if.then190 ]
  %121 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %121)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %122 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %storemerge, ptr %reg, align 4
  %drvtype_bit = getelementptr inbounds %struct.tegra_pingroup, ptr %g, i32 0, i32 10
  %123 = ptrtoint ptr %drvtype_bit to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load206 = load i32, ptr %drvtype_bit, align 4
  %bf.shl207 = shl i32 %bf.load206, 18
  %bf.ashr208 = ashr i32 %bf.shl207, 26
  %conv209 = trunc i32 %bf.ashr208 to i8
  %124 = ptrtoint ptr %bit to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv209, ptr %bit, align 1
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %pmx to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pmx, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.41, i32 noundef %param) #10
  br label %return

sw.epilog:                                        ; preds = %if.end205, %sw.bb172, %sw.bb156, %sw.bb141, %sw.bb125, %sw.bb113, %if.end108, %if.end, %sw.bb61, %sw.bb49, %sw.bb37, %sw.bb25, %sw.bb15, %sw.bb4, %sw.bb
  %.sink = phi i8 [ 2, %if.end205 ], [ %conv186, %sw.bb172 ], [ %conv171, %sw.bb156 ], [ %conv155, %sw.bb141 ], [ %conv140, %sw.bb125 ], [ 2, %sw.bb113 ], [ 1, %if.end108 ], [ 1, %if.end ], [ 1, %sw.bb61 ], [ 1, %sw.bb49 ], [ 1, %sw.bb37 ], [ 1, %sw.bb25 ], [ 1, %sw.bb15 ], [ 1, %sw.bb4 ], [ 2, %sw.bb ]
  %127 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %.sink, ptr %width, align 1
  %128 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp = icmp slt i32 %129, 0
  br i1 %cmp, label %if.then214, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %sw.epilog
  %130 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %131)
  %cmp212 = icmp sgt i8 %131, -1
  %report_err.not = xor i1 %report_err, true
  %brmerge = or i1 %cmp212, %report_err.not
  %.mux = select i1 %cmp212, i32 0, i32 -524
  br i1 %brmerge, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.for.cond.preheader_crit_edge

lor.lhs.false.for.cond.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then214:                                       ; preds = %sw.epilog
  br i1 %report_err, label %if.then214.for.cond.preheader_crit_edge, label %if.then214.return_crit_edge

if.then214.return_crit_edge:                      ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then214.for.cond.preheader_crit_edge:          ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then214.for.cond.preheader_crit_edge, %lor.lhs.false.for.cond.preheader_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %param)
  %132 = icmp ult i32 %param, 14
  br i1 %132, label %switch.lookup, label %for.cond.preheader.do.end226_crit_edge

for.cond.preheader.do.end226_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end226

switch.lookup:                                    ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.tegra_pinconf_reg, i32 0, i32 %param
  %133 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %133)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %do.end226

do.end226:                                        ; preds = %switch.lookup, %for.cond.preheader.do.end226_crit_edge
  %i.0362.lcssa = phi i32 [ %switch.load, %switch.lookup ], [ 15, %for.cond.preheader.do.end226_crit_edge ]
  %arrayidx = getelementptr [16 x %struct.cfg_param], ptr @cfg_params, i32 0, i32 %i.0362.lcssa
  %134 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx, align 4
  %136 = ptrtoint ptr %pmx to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %pmx, align 4
  %138 = ptrtoint ptr %g to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %g, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.45, i32 noundef %param, ptr noundef %135, ptr noundef %139) #10
  br label %return

return:                                           ; preds = %do.end226, %if.then214.return_crit_edge, %lor.lhs.false.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ -524, %do.end226 ], [ -524, %if.then214.return_crit_edge ], [ %.mux, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 67)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @tegra_pinctrl_pm, !1, !"tegra_pinctrl_pm", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 761, i32 25}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 865, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_pinctrl_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra_pinctrl_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 876, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tegra_pinctrl_probe.__UNIQUE_ID_ddebug223, !11, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 672, i32 10}
!16 = !{ptr @tegra_pinctrl_gpio_range, !17, !"tegra_pinctrl_gpio_range", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 671, i32 34}
!18 = !{ptr @tegra_pinctrl_desc, !19, !"tegra_pinctrl_desc", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 677, i32 28}
!20 = !{ptr @tegra_pinctrl_ops, !21, !"tegra_pinctrl_ops", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 210, i32 33}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 73, i32 16}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 116, i32 36}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 120, i32 4}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tegra_pinctrl_dt_subnode_to_map._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @tegra_pinctrl_dt_subnode_to_map._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 135, i32 4}
!33 = !{ptr @tegra_pinctrl_dt_subnode_to_map._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tegra_pinctrl_dt_subnode_to_map._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 145, i32 38}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 147, i32 3}
!39 = !{ptr @tegra_pinctrl_dt_subnode_to_map._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra_pinctrl_dt_subnode_to_map._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 81, i32 3}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 82, i32 3}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 83, i32 3}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 84, i32 3}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 85, i32 3}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 86, i32 3}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 87, i32 3}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 88, i32 3}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 89, i32 3}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 90, i32 3}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 91, i32 3}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 92, i32 3}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 93, i32 3}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 94, i32 3}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 95, i32 3}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 96, i32 3}
!73 = !{ptr @cfg_params, !74, !"cfg_params", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 80, i32 3}
!75 = !{ptr @tegra_pinmux_ops, !76, !"tegra_pinmux_ops", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 350, i32 32}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 296, i32 2}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @tegra_pinctrl_get_group._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @tegra_pinctrl_get_group._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @tegra_pinconf_ops, !83, !"tegra_pinconf_ops", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 659, i32 33}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 501, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @tegra_pinconf_get._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @tegra_pinconf_get._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 509, i32 2}
!91 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @tegra_pinconf_set._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @tegra_pinconf_set._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 472, i32 3}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @tegra_pinconf_reg._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @tegra_pinconf_reg._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 478, i32 23}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 488, i32 4}
!103 = !{ptr @tegra_pinconf_reg._entry.44, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @tegra_pinconf_reg._entry_ptr.46, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 570, i32 5}
!107 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @tegra_pinconf_group_set._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @tegra_pinconf_group_set._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 582, i32 4}
!112 = !{ptr @tegra_pinconf_group_set._entry.49, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @tegra_pinconf_group_set._entry_ptr.51, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 634, i32 17}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 655, i32 16}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/tegra/pinctrl-tegra.c", i32 775, i32 34}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 705020}
!130 = !{i64 704602}
!131 = !{i64 2153687184}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{!"branch_weights", i32 2000, i32 1}
!134 = !{i64 2153688050, i64 2153688552, i64 2153688087, i64 2153688143, i64 2153688177, i64 2153688201, i64 2153688242, i64 2153688263, i64 2153688291, i64 2153688325}
!135 = !{i64 2153663097}
!136 = !{i64 2148182243, i64 2148182248, i64 2148182261, i64 2148182305, i64 2148182339, i64 2148182360}
!137 = !{!"auto-init"}
!138 = !{i8 0, i8 2}
