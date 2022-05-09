; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/stm32/pinctrl-stm32.c_pt.bc'
source_filename = "../drivers/pinctrl/stm32/pinctrl-stm32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.64, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.64 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stm32_gpio_bank = type { ptr, ptr, ptr, %struct.spinlock, %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, ptr, i32, i32, [16 x i32], [16 x i8] }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.stm32_pinctrl = type { ptr, ptr, %struct.pinctrl_desc, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, [16 x ptr], ptr, ptr, i32, i32, i16, %struct.spinlock }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.stm32_pinctrl_match_data = type { ptr, i32 }
%struct.stm32_desc_pin = type { %struct.pinctrl_pin_desc, ptr, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.stm32_pinctrl_group = type { ptr, i32, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pin_desc = type { ptr, ptr, i8, ptr, i32, ptr, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.stm32_desc_function = type { ptr, i8 }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.69 }
%union.anon.69 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pins-are-numbered\00", [46 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1436, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"only support pins-are-numbered format\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"stm32_pctl_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/stm32/pinctrl-stm32.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry_ptr = internal global ptr @stm32_pctl_probe._entry, section ".printk_index", align 4
@stm32_pctl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&pctl->irqmux_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st,package\00", [21 x i8] zeroinitializer }, align 32
@stm32_pctl_probe.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 1, i8 110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinctrl_stm32\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"package detected: %x\0A\00", [42 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1480, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"build state failed: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry_ptr.12 = internal global ptr @stm32_pctl_probe._entry.10, section ".printk_index", align 4
@stm32_pconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr null, ptr @stm32_pconf_set, ptr @stm32_pconf_group_get, ptr @stm32_pconf_group_set, ptr @stm32_pconf_dbg_show, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@stm32_pctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @stm32_pctrl_get_groups_count, ptr @stm32_pctrl_get_group_name, ptr @stm32_pctrl_get_group_pins, ptr null, ptr @stm32_pctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@stm32_pmx_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @stm32_pmx_get_funcs_cnt, ptr @stm32_pmx_get_func_name, ptr @stm32_pmx_get_func_groups, ptr @stm32_pmx_set_mux, ptr null, ptr null, ptr @stm32_pmx_gpio_set_direction, i8 1 }, [56 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1512, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed pinctrl registration\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry_ptr.15 = internal global ptr @stm32_pctl_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1521, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"at least one GPIO bank is required\0A\00", [60 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry_ptr.19 = internal global ptr @stm32_pctl_probe._entry.17, section ".printk_index", align 4
@stm32_pctl_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 1546, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get clk (%ld)\0A\00", [39 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry_ptr.22 = internal global ptr @stm32_pctl_probe._entry.20, section ".printk_index", align 4
@stm32_pctl_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 1566, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Pinctrl STM32 initialized\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_pctl_probe._entry_ptr.26 = internal global ptr @stm32_pctl_probe._entry.23, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"interrupt-parent\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@stm32_pctrl_dt_setup_irq.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 1, i8 83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stm32_pctrl_dt_setup_irq\00", [39 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"irqmux%d: reg:%#x, lsb:%d, msb:%d\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_pconf_parse_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.3, i32 1060, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No gpio range defined.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"stm32_pconf_parse_conf\00", [41 x i8] zeroinitializer }, align 32
@stm32_pconf_parse_conf._entry_ptr = internal global ptr @stm32_pconf_parse_conf._entry, section ".printk_index", align 4
@stm32_pconf_set_driving._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 877, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't get hwspinlock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_pconf_set_driving\00", [40 x i8] zeroinitializer }, align 32
@stm32_pconf_set_driving._entry_ptr = internal global ptr @stm32_pconf_set_driving._entry, section ".printk_index", align 4
@stm32_pconf_set_speed._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.35, ptr @.str.3, i32 932, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_pconf_set_speed\00", [42 x i8] zeroinitializer }, align 32
@stm32_pconf_set_speed._entry_ptr = internal global ptr @stm32_pconf_set_speed._entry, section ".printk_index", align 4
@stm32_pconf_set_bias._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.36, ptr @.str.3, i32 987, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stm32_pconf_set_bias\00", [43 x i8] zeroinitializer }, align 32
@stm32_pconf_set_bias._entry_ptr = internal global ptr @stm32_pconf_set_bias._entry, section ".printk_index", align 4
@stm32_pmx_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.37, ptr @.str.3, i32 760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_pmx_set_mode\00", [45 x i8] zeroinitializer }, align 32
@stm32_pmx_set_mode._entry_ptr = internal global ptr @stm32_pmx_set_mode._entry, section ".printk_index", align 4
@stm32_pconf_dbg_show.modes = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"input\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"output\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"alternate\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@stm32_pconf_dbg_show.speeds = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"medium\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"very high\00", [22 x i8] zeroinitializer }, align 32
@stm32_pconf_dbg_show.biasing = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"floating\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pull up\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pull down\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"- %s - %s\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"- %s - %s - %s - %s %s\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"open drain\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"push pull\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"speed\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%d - %s - %s - %s %s\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@stm32_pctrl_dt_subnode_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 581, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing pins property in node %pOFn .\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stm32_pctrl_dt_subnode_to_map\00", [34 x i8] zeroinitializer }, align 32
@stm32_pctrl_dt_subnode_to_map._entry_ptr = internal global ptr @stm32_pctrl_dt_subnode_to_map._entry, section ".printk_index", align 4
@stm32_pctrl_dt_subnode_to_map._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to match pin %d to group\0A\00", [63 x i8] zeroinitializer }, align 32
@stm32_pctrl_dt_subnode_to_map._entry_ptr.62 = internal global ptr @stm32_pctrl_dt_subnode_to_map._entry.60, section ".printk_index", align 4
@stm32_pctrl_is_function_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid function %d on pin %d .\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stm32_pctrl_is_function_valid\00", [34 x i8] zeroinitializer }, align 32
@stm32_pctrl_is_function_valid._entry_ptr = internal global ptr @stm32_pctrl_is_function_valid._entry, section ".printk_index", align 4
@stm32_gpio_functions = internal constant { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.41], [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af0\00", [28 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af1\00", [28 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af2\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af3\00", [28 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af4\00", [28 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af5\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af6\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af7\00", [28 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af8\00", [28 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"af9\00", [28 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"af10\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"af11\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"af12\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"af13\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"af14\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"af15\00", [27 x i8] zeroinitializer }, align 32
@stm32_pmx_set_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.82, ptr @.str.3, i32 828, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stm32_pmx_set_mux\00", [46 x i8] zeroinitializer }, align 32
@stm32_pmx_set_mux._entry_ptr = internal global ptr @stm32_pmx_set_mux._entry, section ".printk_index", align 4
@stm32_gpiolib_register_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.3, i32 1242, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to prepare clk (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"stm32_gpiolib_register_bank\00", [36 x i8] zeroinitializer }, align 32
@stm32_gpiolib_register_bank._entry_ptr = internal global ptr @stm32_gpiolib_register_bank._entry, section ".printk_index", align 4
@stm32_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_gpio_request, ptr @stm32_gpio_free, ptr @stm32_gpio_get_direction, ptr @stm32_gpio_direction_input, ptr @stm32_gpio_direction_output, ptr @stm32_gpio_get, ptr null, ptr @stm32_gpio_set, ptr null, ptr @gpiochip_generic_config, ptr @stm32_gpio_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,bank-name\00", [19 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"st,bank-ioport\00", [17 x i8] zeroinitializer }, align 32
@stm32_gpiolib_register_bank.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&bank->lock\00", [20 x i8] zeroinitializer }, align 32
@stm32_gpio_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_gpio_domain_alloc, ptr @stm32_gpio_domain_free, ptr @stm32_gpio_domain_activate, ptr null, ptr @stm32_gpio_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@stm32_gpiolib_register_bank.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stm32_gpiolib_register_bank.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stm32_gpiolib_register_bank._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.84, ptr @.str.3, i32 1295, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add gpiochip(%d)!\0A\00", [35 x i8] zeroinitializer }, align 32
@stm32_gpiolib_register_bank._entry_ptr.91 = internal global ptr @stm32_gpiolib_register_bank._entry.89, section ".printk_index", align 4
@stm32_gpiolib_register_bank._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.84, ptr @.str.3, i32 1299, ptr @.str.25, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s bank added\0A\00", [17 x i8] zeroinitializer }, align 32
@stm32_gpiolib_register_bank._entry_ptr.94 = internal global ptr @stm32_gpiolib_register_bank._entry.92, section ".printk_index", align 4
@stm32_gpio_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pin %d not in range.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"stm32_gpio_request\00", [45 x i8] zeroinitializer }, align 32
@stm32_gpio_request._entry_ptr = internal global ptr @stm32_gpio_request._entry, section ".printk_index", align 4
@stm32_gpio_domain_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.98, ptr @.str.3, i32 455, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"irq line %ld already requested.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_gpio_domain_alloc\00", [40 x i8] zeroinitializer }, align 32
@stm32_gpio_domain_alloc._entry_ptr = internal global ptr @stm32_gpio_domain_alloc._entry, section ".printk_index", align 4
@stm32_gpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.99, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_ack_parent, ptr @irq_chip_mask_parent, ptr null, ptr @stm32_gpio_irq_unmask, ptr @stm32_gpio_irq_eoi, ptr null, ptr null, ptr @stm32_gpio_set_type, ptr @irq_chip_set_wake_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stm32_gpio_irq_request_resources, ptr @stm32_gpio_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stm32gpio\00", [22 x i8] zeroinitializer }, align 32
@stm32_gpio_irq_request_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 366, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"stm32_gpio_irq_request_resources\00", [63 x i8] zeroinitializer }, align 32
@stm32_gpio_irq_request_resources._entry_ptr = internal global ptr @stm32_gpio_irq_request_resources._entry, section ".printk_index", align 4
@stm32_gpio_domain_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.102, ptr @.str.3, i32 423, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"stm32_gpio_domain_activate\00", [37 x i8] zeroinitializer }, align 32
@stm32_gpio_domain_activate._entry_ptr = internal global ptr @stm32_gpio_domain_activate._entry, section ".printk_index", align 4
@switch.table.stm32_pmx_set_mux = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 3], [60 x i8] zeroinitializer }, align 32
@switch.table.stm32_gpio_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 3, i32 1, i32 1, i32 1, i32 1, i32 2], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 3, i64 5, i64 6, i64 8, i64 17, i64 24]
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1435, i32 28 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1436, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1460, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1466, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1467, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1480, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [16 x i8] c"stm32_pconf_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1211, i32 33 }
@___asan_gen_.149 = private unnamed_addr constant [16 x i8] c"stm32_pctrl_ops\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 708, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant [14 x i8] c"stm32_pmx_ops\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 851, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1512, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1517, i32 36 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1521, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1544, i32 6 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1566, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1308, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1332, i32 53 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1355, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1060, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 877, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 932, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 987, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 760, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"modes\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1154, i32 28 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1155, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1155, i32 13 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1155, i32 23 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1155, i32 36 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"speeds\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1156, i32 28 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1157, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1157, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1157, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1157, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant [8 x i8] c"biasing\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1158, i32 28 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1159, i32 4 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1159, i32 16 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1159, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1159, i32 40 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1172, i32 16 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1178, i32 17 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1188, i32 17 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1190, i32 15 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1190, i32 30 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1192, i32 22 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1199, i32 17 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 578, i32 32 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 580, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 629, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 535, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant [21 x i8] c"stm32_gpio_functions\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 69, i32 27 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 70, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 70, i32 10 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 70, i32 17 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 71, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 71, i32 9 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 71, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 72, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 72, i32 9 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 72, i32 16 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 73, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 73, i32 9 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 73, i32 16 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 74, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 74, i32 10 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 74, i32 18 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 75, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 75, i32 10 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 828, i32 3 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1242, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [20 x i8] c"stm32_gpio_template\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 297, i32 31 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1248, i32 30 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1250, i32 44 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1271, i32 31 }
@___asan_gen_.407 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1281, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [22 x i8] c"stm32_gpio_domain_ops\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 491, i32 36 }
@___asan_gen_.416 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.419 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1293, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1295, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1299, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 216, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 455, i32 3 }
@___asan_gen_.452 = private unnamed_addr constant [20 x i8] c"stm32_gpio_irq_chip\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 386, i32 24 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 387, i32 11 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 365, i32 3 }
@___asan_gen_.467 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.471 = private constant [41 x i8] c"../drivers/pinctrl/stm32/pinctrl-stm32.c\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 423, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant [31 x i8] c"switch.table.stm32_pmx_set_mux\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [33 x i8] c"switch.table.stm32_gpio_set_type\00", align 1
@llvm.compiler.used = appending global [147 x ptr] [ptr @stm32_gpio_domain_activate._entry, ptr @stm32_gpio_domain_activate._entry_ptr, ptr @stm32_gpio_domain_alloc._entry, ptr @stm32_gpio_domain_alloc._entry_ptr, ptr @stm32_gpio_irq_request_resources._entry, ptr @stm32_gpio_irq_request_resources._entry_ptr, ptr @stm32_gpio_request._entry, ptr @stm32_gpio_request._entry_ptr, ptr @stm32_gpiolib_register_bank._entry, ptr @stm32_gpiolib_register_bank._entry.89, ptr @stm32_gpiolib_register_bank._entry.92, ptr @stm32_gpiolib_register_bank._entry_ptr, ptr @stm32_gpiolib_register_bank._entry_ptr.91, ptr @stm32_gpiolib_register_bank._entry_ptr.94, ptr @stm32_pconf_parse_conf._entry, ptr @stm32_pconf_parse_conf._entry_ptr, ptr @stm32_pconf_set_bias._entry, ptr @stm32_pconf_set_bias._entry_ptr, ptr @stm32_pconf_set_driving._entry, ptr @stm32_pconf_set_driving._entry_ptr, ptr @stm32_pconf_set_speed._entry, ptr @stm32_pconf_set_speed._entry_ptr, ptr @stm32_pctl_probe._entry, ptr @stm32_pctl_probe._entry.10, ptr @stm32_pctl_probe._entry.13, ptr @stm32_pctl_probe._entry.17, ptr @stm32_pctl_probe._entry.20, ptr @stm32_pctl_probe._entry.23, ptr @stm32_pctl_probe._entry_ptr, ptr @stm32_pctl_probe._entry_ptr.12, ptr @stm32_pctl_probe._entry_ptr.15, ptr @stm32_pctl_probe._entry_ptr.19, ptr @stm32_pctl_probe._entry_ptr.22, ptr @stm32_pctl_probe._entry_ptr.26, ptr @stm32_pctrl_dt_subnode_to_map._entry, ptr @stm32_pctrl_dt_subnode_to_map._entry.60, ptr @stm32_pctrl_dt_subnode_to_map._entry_ptr, ptr @stm32_pctrl_dt_subnode_to_map._entry_ptr.62, ptr @stm32_pctrl_is_function_valid._entry, ptr @stm32_pctrl_is_function_valid._entry_ptr, ptr @stm32_pmx_set_mode._entry, ptr @stm32_pmx_set_mode._entry_ptr, ptr @stm32_pmx_set_mux._entry, ptr @stm32_pmx_set_mux._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stm32_pctl_probe.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @stm32_pconf_ops, ptr @stm32_pctrl_ops, ptr @stm32_pmx_ops, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @stm32_pconf_dbg_show.modes, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @stm32_pconf_dbg_show.speeds, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @stm32_pconf_dbg_show.biasing, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @stm32_gpio_functions, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @stm32_gpio_template, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @stm32_gpiolib_register_bank.__key, ptr @.str.88, ptr @stm32_gpio_domain_ops, ptr @stm32_gpiolib_register_bank.lock_key, ptr @stm32_gpiolib_register_bank.request_key, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @stm32_gpio_irq_chip, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @switch.table.stm32_pmx_set_mux, ptr @switch.table.stm32_gpio_set_type], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctl_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pmx_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctl_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctl_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctl_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctl_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_parse_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_set_driving._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_set_speed._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_set_bias._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pmx_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_dbg_show.modes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_dbg_show.speeds to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pconf_dbg_show.biasing to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctrl_dt_subnode_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctrl_dt_subnode_to_map._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pctrl_is_function_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_functions to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_pmx_set_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpiolib_register_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpiolib_register_bank.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpiolib_register_bank.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpiolib_register_bank.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpiolib_register_bank._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpiolib_register_bank._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_domain_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_irq_request_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_gpio_domain_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_pmx_set_mux to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.stm32_gpio_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stm32_pmx_get_mode(ptr noundef %bank, i32 noundef %pin, ptr nocapture noundef writeonly %mode, ptr nocapture noundef writeonly %alt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %div = sdiv i32 %pin, 8
  %0 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin, %0
  %mul = shl nsw i32 %rem.decomposed, 2
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 32
  %clk = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 1
  %1 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk, align 4
  %call = tail call i32 @clk_enable(ptr noundef %2) #7
  %lock = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %3 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bank, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %add
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !239
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %shl.neg = shl nsw i32 -1, %mul
  %sub11 = sub nsw i32 28, %mul
  %shr = lshr i32 -1, %sub11
  %and = and i32 %shr, %shl.neg
  %and13 = and i32 %and, %6
  %shr14 = lshr i32 %and13, %mul
  %7 = ptrtoint ptr %alt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr14, ptr %alt, align 4
  %8 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bank, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #7, !srcloc !239
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %mul20 = shl i32 %pin, 1
  %shl21.neg = shl nsw i32 -1, %mul20
  %sub26 = sub i32 30, %mul20
  %shr27 = lshr i32 -1, %sub26
  %and28 = and i32 %shr27, %shl21.neg
  %and30 = and i32 %and28, %11
  %shr32 = lshr i32 %and30, %mul20
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr32, ptr %mode, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %14) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stm32_pctl_probe(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %bank_ioport_nr.i = alloca i32, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  %res.i = alloca %struct.resource, align 4
  %fwspec.i.i4.i.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup195_crit_edge, label %if.end

entry.cleanup195_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end:                                           ; preds = %entry
  %driver = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver, align 4
  %of_match_table = getelementptr inbounds %struct.device_driver, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %of_match_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_match_table, align 4
  %call = tail call ptr @of_match_device(ptr noundef %5, ptr noundef %dev) #7
  %tobool3.not = icmp eq ptr %call, null
  br i1 %tobool3.not, label %if.end.cleanup195_crit_edge, label %lor.lhs.false

if.end.cleanup195_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

lor.lhs.false:                                    ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup195_crit_edge, label %if.end6

lor.lhs.false.cleanup195_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end6:                                          ; preds = %lor.lhs.false
  %call7 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str, ptr noundef null) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup195

if.end10:                                         ; preds = %if.end6
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 212, i32 noundef 3520) #7
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end10.cleanup195_crit_edge, label %if.end14

if.end10.cleanup195_crit_edge:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end14:                                         ; preds = %if.end10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i316 = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.27, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call.i316, null
  br i1 %tobool.not.i, label %stm32_pctrl_get_irq_domain.exit.thread361, label %if.end.i

stm32_pctrl_get_irq_domain.exit.thread361:        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %domain363 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 9
  %9 = ptrtoint ptr %domain363 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %domain363, align 4
  br label %if.end21

if.end.i:                                         ; preds = %if.end14
  %call1.i = tail call ptr @of_irq_find_parent(ptr noundef nonnull %1) #7
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge, label %if.end5.i

if.end.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_get_irq_domain.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %fwnode.i.i.i.i = getelementptr inbounds %struct.device_node, ptr %call1.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i.i) #7
  %10 = getelementptr inbounds i8, ptr %fwspec.i.i.i.i, i32 4
  %11 = call ptr @memset(ptr %10, i32 0, i32 68)
  %12 = ptrtoint ptr %fwspec.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %fwnode.i.i.i.i, ptr %fwspec.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_host.exit.i, label %if.end5.i.stm32_pctrl_get_irq_domain.exit_crit_edge

if.end5.i.stm32_pctrl_get_irq_domain.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_get_irq_domain.exit

irq_find_host.exit.i:                             ; preds = %if.end5.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i.i) #7
  %13 = getelementptr inbounds i8, ptr %fwspec.i.i4.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 68)
  %15 = ptrtoint ptr %fwspec.i.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fwnode.i.i.i.i, ptr %fwspec.i.i4.i.i, align 4
  %call.i.i8.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i.i, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i.i) #7
  %tobool7.not.i = icmp eq ptr %call.i.i8.i.i, null
  br i1 %tobool7.not.i, label %irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge, label %irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit_crit_edge

irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit_crit_edge: ; preds = %irq_find_host.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_get_irq_domain.exit

irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge: ; preds = %irq_find_host.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_get_irq_domain.exit.thread

stm32_pctrl_get_irq_domain.exit.thread:           ; preds = %irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge, %if.end.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge
  %retval.0.i317.ph = phi ptr [ inttoptr (i32 -6 to ptr), %if.end.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge ], [ inttoptr (i32 -517 to ptr), %irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit.thread_crit_edge ]
  %domain358 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %domain358 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i317.ph, ptr %domain358, align 4
  br label %if.then18

stm32_pctrl_get_irq_domain.exit:                  ; preds = %irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit_crit_edge, %if.end5.i.stm32_pctrl_get_irq_domain.exit_crit_edge
  %retval.0.i317 = phi ptr [ %call.i.i.i.i, %if.end5.i.stm32_pctrl_get_irq_domain.exit_crit_edge ], [ %call.i.i8.i.i, %irq_find_host.exit.i.stm32_pctrl_get_irq_domain.exit_crit_edge ]
  %domain = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 9
  %17 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i317, ptr %domain, align 4
  %cmp.i = icmp ugt ptr %retval.0.i317, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %stm32_pctrl_get_irq_domain.exit.if.then18_crit_edge, label %stm32_pctrl_get_irq_domain.exit.if.end21_crit_edge

stm32_pctrl_get_irq_domain.exit.if.end21_crit_edge: ; preds = %stm32_pctrl_get_irq_domain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

stm32_pctrl_get_irq_domain.exit.if.then18_crit_edge: ; preds = %stm32_pctrl_get_irq_domain.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.then18:                                        ; preds = %stm32_pctrl_get_irq_domain.exit.if.then18_crit_edge, %stm32_pctrl_get_irq_domain.exit.thread
  %retval.0.i317360 = phi ptr [ %retval.0.i317.ph, %stm32_pctrl_get_irq_domain.exit.thread ], [ %retval.0.i317, %stm32_pctrl_get_irq_domain.exit.if.then18_crit_edge ]
  %18 = ptrtoint ptr %retval.0.i317360 to i32
  br label %cleanup195

if.end21:                                         ; preds = %stm32_pctrl_get_irq_domain.exit.if.end21_crit_edge, %stm32_pctrl_get_irq_domain.exit.thread361
  %domain365 = phi ptr [ %domain363, %stm32_pctrl_get_irq_domain.exit.thread361 ], [ %domain, %stm32_pctrl_get_irq_domain.exit.if.end21_crit_edge ]
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call24 = call i32 @of_hwspin_lock_get_id(ptr noundef %20, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %if.then25, label %if.else

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call24)
  %cmp26 = icmp eq i32 %call24, -517
  br i1 %cmp26, label %if.then25.cleanup195_crit_edge, label %if.then25.do.body31_crit_edge

if.then25.do.body31_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body31

if.then25.cleanup195_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = call ptr @hwspin_lock_request_specific(i32 noundef %call24) #7
  %hwlock = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 12
  %21 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call29, ptr %hwlock, align 4
  br label %do.body31

do.body31:                                        ; preds = %if.else, %if.then25.do.body31_crit_edge
  %irqmux_lock = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 17
  call void @__raw_spin_lock_init(ptr noundef %irqmux_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @stm32_pctl_probe.__key, i16 noundef signext 3) #7
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %dev, ptr %call.i, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data, align 4
  %match_data = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %match_data to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %match_data, align 4
  %pkg = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 15
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %1, ptr noundef nonnull @.str.7, ptr noundef %pkg, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool38.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool38.not, label %do.body40, label %do.body31.if.end52_crit_edge

do.body31.if.end52_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

do.body40:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_pctl_probe.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_pctl_probe, %if.end52)) #7
          to label %if.then46 [label %if.end52], !srcloc !240

if.then46:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  %28 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pkg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_pctl_probe.__UNIQUE_ID_ddebug226, ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %29) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %do.body40, %do.body31.if.end52_crit_edge
  %30 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %match_data, align 4
  %npins = getelementptr inbounds %struct.stm32_pinctrl_match_data, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %npins, align 4
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %33, i32 20) #7
  %35 = extractvalue { i32, i1 } %34, 1
  br i1 %35, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !241

devm_kcalloc.exit.thread:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %pins56368 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 13
  %36 = ptrtoint ptr %pins56368 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %pins56368, align 4
  br label %cleanup195

devm_kcalloc.exit:                                ; preds = %if.end52
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = extractvalue { i32, i1 } %34, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %38, i32 noundef %39, i32 noundef 3520) #7
  %pins56 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 13
  %40 = ptrtoint ptr %pins56 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i, ptr %pins56, align 4
  %tobool58.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool58.not, label %devm_kcalloc.exit.cleanup195_crit_edge, label %if.end60

devm_kcalloc.exit.cleanup195_crit_edge:           ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end60:                                         ; preds = %devm_kcalloc.exit
  %41 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %match_data, align 4
  %npins1.i = getelementptr inbounds %struct.stm32_pinctrl_match_data, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %npins1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %npins1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp2.not.i = icmp eq i32 %44, 0
  br i1 %cmp2.not.i, label %if.end60.stm32_pctrl_create_pins_tab.exit_crit_edge, label %if.end60.for.body.i_crit_edge

if.end60.for.body.i_crit_edge:                    ; preds = %if.end60
  br label %for.body.i

if.end60.stm32_pctrl_create_pins_tab.exit_crit_edge: ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_create_pins_tab.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end60.for.body.i_crit_edge
  %45 = phi ptr [ %57, %for.inc.i.for.body.i_crit_edge ], [ %42, %if.end60.for.body.i_crit_edge ]
  %nb_pins_available.07.i = phi i32 [ %nb_pins_available.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end60.for.body.i_crit_edge ]
  %i.04.i = phi i32 [ %inc8.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end60.for.body.i_crit_edge ]
  %pins.addr.03.i = phi ptr [ %pins.addr.1.i, %for.inc.i.for.body.i_crit_edge ], [ %call5.i.i, %if.end60.for.body.i_crit_edge ]
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %add.ptr.i = getelementptr %struct.stm32_desc_pin, ptr %47, i32 %i.04.i
  %48 = ptrtoint ptr %pkg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pkg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i318 = icmp eq i32 %49, 0
  br i1 %tobool.not.i318, label %for.body.i.if.end.i319_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i319_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i319

land.lhs.true.i:                                  ; preds = %for.body.i
  %pkg4.i = getelementptr %struct.stm32_desc_pin, ptr %47, i32 %i.04.i, i32 2
  %50 = ptrtoint ptr %pkg4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pkg4.i, align 4
  %and.i = and i32 %51, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.if.end.i319_crit_edge

land.lhs.true.i.if.end.i319_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i319

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i319:                                      ; preds = %land.lhs.true.i.if.end.i319_crit_edge, %for.body.i.if.end.i319_crit_edge
  %52 = call ptr @memcpy(ptr %pins.addr.03.i, ptr %add.ptr.i, i32 12)
  %functions.i = getelementptr %struct.stm32_desc_pin, ptr %47, i32 %i.04.i, i32 1
  %53 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %functions.i, align 4
  %functions7.i = getelementptr inbounds %struct.stm32_desc_pin, ptr %pins.addr.03.i, i32 0, i32 1
  %55 = ptrtoint ptr %functions7.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %functions7.i, align 4
  %incdec.ptr.i = getelementptr %struct.stm32_desc_pin, ptr %pins.addr.03.i, i32 1
  %inc.i = add i32 %nb_pins_available.07.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i319, %land.lhs.true.i.for.inc.i_crit_edge
  %pins.addr.1.i = phi ptr [ %incdec.ptr.i, %if.end.i319 ], [ %pins.addr.03.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %nb_pins_available.1.i = phi i32 [ %inc.i, %if.end.i319 ], [ %nb_pins_available.07.i, %land.lhs.true.i.for.inc.i_crit_edge ]
  %inc8.i = add nuw i32 %i.04.i, 1
  %56 = ptrtoint ptr %match_data to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %match_data, align 4
  %npins.i = getelementptr inbounds %struct.stm32_pinctrl_match_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %npins.i, align 4
  %cmp.i320 = icmp ult i32 %inc8.i, %59
  br i1 %cmp.i320, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.stm32_pctrl_create_pins_tab.exit_crit_edge

for.inc.i.stm32_pctrl_create_pins_tab.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_create_pins_tab.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

stm32_pctrl_create_pins_tab.exit:                 ; preds = %for.inc.i.stm32_pctrl_create_pins_tab.exit_crit_edge, %if.end60.stm32_pctrl_create_pins_tab.exit_crit_edge
  %nb_pins_available.0.lcssa.i = phi i32 [ 0, %if.end60.stm32_pctrl_create_pins_tab.exit_crit_edge ], [ %nb_pins_available.1.i, %for.inc.i.stm32_pctrl_create_pins_tab.exit_crit_edge ]
  %npins9.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 14
  %60 = ptrtoint ptr %npins9.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %nb_pins_available.0.lcssa.i, ptr %npins9.i, align 4
  %61 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %driver_data.i.i, align 4
  %npins.i321 = getelementptr inbounds %struct.stm32_pinctrl, ptr %62, i32 0, i32 14
  %63 = ptrtoint ptr %npins.i321 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %npins.i321, align 4
  %ngroups.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %62, i32 0, i32 4
  %65 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %ngroups.i, align 4
  %66 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 12) #7
  %67 = extractvalue { i32, i1 } %66, 1
  br i1 %67, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !241

devm_kcalloc.exit.thread.i:                       ; preds = %stm32_pctrl_create_pins_tab.exit
  call void @__sanitizer_cov_trace_pc() #9
  %groups47.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %62, i32 0, i32 3
  br label %cleanup.sink.split.i

devm_kcalloc.exit.i:                              ; preds = %stm32_pctrl_create_pins_tab.exit
  %68 = extractvalue { i32, i1 } %66, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %68, i32 noundef 3520) #7
  %groups.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %62, i32 0, i32 3
  %69 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call5.i.i.i, ptr %groups.i, align 4
  %tobool.not.i322 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i322, label %devm_kcalloc.exit.i.do.end71_crit_edge, label %if.end.i323

devm_kcalloc.exit.i.do.end71_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.end.i323:                                      ; preds = %devm_kcalloc.exit.i
  %70 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ngroups.i, align 4
  %72 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %71, i32 4) #7
  %73 = extractvalue { i32, i1 } %72, 1
  br i1 %73, label %devm_kcalloc.exit45.thread.i, label %devm_kcalloc.exit45.i, !prof !241

devm_kcalloc.exit45.thread.i:                     ; preds = %if.end.i323
  call void @__sanitizer_cov_trace_pc() #9
  %grp_names50.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %62, i32 0, i32 5
  br label %cleanup.sink.split.i

devm_kcalloc.exit45.i:                            ; preds = %if.end.i323
  %74 = extractvalue { i32, i1 } %72, 0
  %call5.i.i42.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %74, i32 noundef 3520) #7
  %grp_names.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %62, i32 0, i32 5
  %75 = ptrtoint ptr %grp_names.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call5.i.i42.i, ptr %grp_names.i, align 4
  %tobool8.not.i = icmp eq ptr %call5.i.i42.i, null
  br i1 %tobool8.not.i, label %devm_kcalloc.exit45.i.do.end71_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit45.i.do.end71_crit_edge:         ; preds = %devm_kcalloc.exit45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit45.i
  %76 = ptrtoint ptr %npins.i321 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %npins.i321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp52.not.i = icmp eq i32 %77, 0
  br i1 %cmp52.not.i, label %for.cond.preheader.i.if.end72_crit_edge, label %for.body.lr.ph.i324

for.cond.preheader.i.if.end72_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

for.body.lr.ph.i324:                              ; preds = %for.cond.preheader.i
  %pins.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %62, i32 0, i32 13
  br label %for.body.i328

for.body.i328:                                    ; preds = %for.body.i328.for.body.i328_crit_edge, %for.body.lr.ph.i324
  %i.053.i = phi i32 [ 0, %for.body.lr.ph.i324 ], [ %inc.i326, %for.body.i328.for.body.i328_crit_edge ]
  %78 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pins.i, align 4
  %add.ptr.i325 = getelementptr %struct.stm32_desc_pin, ptr %79, i32 %i.053.i
  %80 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %groups.i, align 4
  %add.ptr13.i = getelementptr %struct.stm32_pinctrl_group, ptr %81, i32 %i.053.i
  %name.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %add.ptr.i325, i32 0, i32 1
  %82 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name.i, align 4
  %84 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %83, ptr %add.ptr13.i, align 4
  %85 = ptrtoint ptr %add.ptr.i325 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i325, align 4
  %pin17.i = getelementptr %struct.stm32_pinctrl_group, ptr %81, i32 %i.053.i, i32 2
  %87 = ptrtoint ptr %pin17.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %pin17.i, align 4
  %88 = load ptr, ptr %name.i, align 4
  %89 = ptrtoint ptr %grp_names.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %grp_names.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %90, i32 %i.053.i
  %91 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %88, ptr %arrayidx.i, align 4
  %inc.i326 = add nuw i32 %i.053.i, 1
  %92 = ptrtoint ptr %npins.i321 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %npins.i321, align 4
  %cmp.i327 = icmp ult i32 %inc.i326, %93
  br i1 %cmp.i327, label %for.body.i328.for.body.i328_crit_edge, label %for.body.i328.if.end72_crit_edge

for.body.i328.if.end72_crit_edge:                 ; preds = %for.body.i328
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

for.body.i328.for.body.i328_crit_edge:            ; preds = %for.body.i328
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i328

cleanup.sink.split.i:                             ; preds = %devm_kcalloc.exit45.thread.i, %devm_kcalloc.exit.thread.i
  %grp_names50.sink.i = phi ptr [ %grp_names50.i, %devm_kcalloc.exit45.thread.i ], [ %groups47.i, %devm_kcalloc.exit.thread.i ]
  %94 = ptrtoint ptr %grp_names50.sink.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %grp_names50.sink.i, align 4
  br label %do.end71

do.end71:                                         ; preds = %cleanup.sink.split.i, %devm_kcalloc.exit45.i.do.end71_crit_edge, %devm_kcalloc.exit.i.do.end71_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef -12) #10
  br label %cleanup195

if.end72:                                         ; preds = %for.body.i328.if.end72_crit_edge, %for.cond.preheader.i.if.end72_crit_edge
  %95 = ptrtoint ptr %domain365 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %domain365, align 4
  %tobool74.not = icmp eq ptr %96, null
  br i1 %tobool74.not, label %if.end72.if.end80_crit_edge, label %if.then75

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.then75:                                        ; preds = %if.end72
  %call76 = call fastcc i32 @stm32_pctrl_dt_setup_irq(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.then75.if.end80_crit_edge, label %if.then75.cleanup195_crit_edge

if.then75.cleanup195_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.then75.if.end80_crit_edge:                     ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

if.end80:                                         ; preds = %if.then75.if.end80_crit_edge, %if.end72.if.end80_crit_edge
  %97 = ptrtoint ptr %npins9.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %npins9.i, align 4
  %99 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %98, i32 12) #7
  %100 = extractvalue { i32, i1 } %99, 1
  br i1 %100, label %if.end80.cleanup195_crit_edge, label %devm_kcalloc.exit333, !prof !241

if.end80.cleanup195_crit_edge:                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

devm_kcalloc.exit333:                             ; preds = %if.end80
  %101 = extractvalue { i32, i1 } %99, 0
  %call5.i.i330 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %101, i32 noundef 3520) #7
  %tobool84.not = icmp eq ptr %call5.i.i330, null
  br i1 %tobool84.not, label %devm_kcalloc.exit333.cleanup195_crit_edge, label %for.cond.preheader

devm_kcalloc.exit333.cleanup195_crit_edge:        ; preds = %devm_kcalloc.exit333
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

for.cond.preheader:                               ; preds = %devm_kcalloc.exit333
  %102 = ptrtoint ptr %npins9.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %npins9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp88405.not = icmp eq i32 %103, 0
  br i1 %cmp88405.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %104 = ptrtoint ptr %pins56 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %pins56, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0406 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i330, i32 %i.0406
  %arrayidx90 = getelementptr %struct.stm32_desc_pin, ptr %105, i32 %i.0406
  %106 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx90, i32 12)
  %inc = add nuw i32 %i.0406, 1
  %exitcond.not = icmp eq i32 %inc, %103
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %107 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i334 = icmp eq ptr %108, null
  br i1 %tobool.not.i334, label %if.end.i335, label %for.end.dev_name.exit_crit_edge

for.end.dev_name.exit_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i335:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i335, %for.end.dev_name.exit_crit_edge
  %retval.0.i336 = phi ptr [ %110, %if.end.i335 ], [ %108, %for.end.dev_name.exit_crit_edge ]
  %pctl_desc = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2
  %111 = ptrtoint ptr %pctl_desc to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %retval.0.i336, ptr %pctl_desc, align 4
  %owner = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2, i32 6
  %112 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr null, ptr %owner, align 4
  %pins95 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2, i32 1
  %113 = ptrtoint ptr %pins95 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call5.i.i330, ptr %pins95, align 4
  %npins98 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %114 = ptrtoint ptr %npins98 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %103, ptr %npins98, align 4
  %link_consumers = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2, i32 10
  %115 = ptrtoint ptr %link_consumers to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %link_consumers, align 4
  %confops = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2, i32 5
  %116 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @stm32_pconf_ops, ptr %confops, align 4
  %pctlops = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2, i32 3
  %117 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @stm32_pctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 2, i32 4
  %118 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr @stm32_pmx_ops, ptr %pmxops, align 4
  %119 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %dev, ptr %call.i, align 4
  %call107 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %pctl_desc, ptr noundef nonnull %call.i) #7
  %pctl_dev = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 1
  %120 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call107, ptr %pctl_dev, align 4
  %cmp.i337 = icmp ugt ptr %call107, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i337, label %do.end113, label %if.end117

do.end113:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  %121 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pctl_dev, align 4
  %123 = ptrtoint ptr %122 to i32
  br label %cleanup195

if.end117:                                        ; preds = %dev_name.exit
  %call118 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp120.not407 = icmp eq ptr %call118, null
  br i1 %cmp120.not407, label %if.end117.do.end133_crit_edge, label %if.end117.for.body121_crit_edge

if.end117.for.body121_crit_edge:                  ; preds = %if.end117
  br label %for.body121

if.end117.do.end133_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133

for.body121:                                      ; preds = %for.body121.for.body121_crit_edge, %if.end117.for.body121_crit_edge
  %banks.0409 = phi i32 [ %spec.select, %for.body121.for.body121_crit_edge ], [ 0, %if.end117.for.body121_crit_edge ]
  %child.0408 = phi ptr [ %call127, %for.body121.for.body121_crit_edge ], [ %call118, %if.end117.for.body121_crit_edge ]
  %call.i338 = call ptr @of_find_property(ptr noundef nonnull %child.0408, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i.not = icmp ne ptr %call.i338, null
  %inc124 = zext i1 %tobool.i.not to i32
  %spec.select = add i32 %banks.0409, %inc124
  %call127 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.0408) #7
  %cmp120.not = icmp eq ptr %call127, null
  br i1 %cmp120.not, label %for.end128, label %for.body121.for.body121_crit_edge

for.body121.for.body121_crit_edge:                ; preds = %for.body121
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body121

for.end128:                                       ; preds = %for.body121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool129.not = icmp eq i32 %spec.select, 0
  br i1 %tobool129.not, label %for.end128.do.end133_crit_edge, label %if.end134

for.end128.do.end133_crit_edge:                   ; preds = %for.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end133

do.end133:                                        ; preds = %for.end128.do.end133_crit_edge, %if.end117.do.end133_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #10
  br label %cleanup195

if.end134:                                        ; preds = %for.end128
  %124 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 536) #7
  %125 = extractvalue { i32, i1 } %124, 1
  br i1 %125, label %devm_kcalloc.exit342.thread, label %devm_kcalloc.exit342, !prof !241

devm_kcalloc.exit342.thread:                      ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %banks136376 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 6
  %126 = ptrtoint ptr %banks136376 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr null, ptr %banks136376, align 4
  br label %cleanup195

devm_kcalloc.exit342:                             ; preds = %if.end134
  %127 = extractvalue { i32, i1 } %124, 0
  %call5.i.i339 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %127, i32 noundef 3520) #7
  %banks136 = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 6
  %128 = ptrtoint ptr %banks136 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %call5.i.i339, ptr %banks136, align 4
  %tobool138.not = icmp eq ptr %call5.i.i339, null
  br i1 %tobool138.not, label %devm_kcalloc.exit342.cleanup195_crit_edge, label %if.end140

devm_kcalloc.exit342.cleanup195_crit_edge:        ; preds = %devm_kcalloc.exit342
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup195

if.end140:                                        ; preds = %devm_kcalloc.exit342
  %call141 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp143.not411 = icmp eq ptr %call141, null
  br i1 %cmp143.not411, label %if.end140.for.end176_crit_edge, label %if.end140.for.body144_crit_edge

if.end140.for.body144_crit_edge:                  ; preds = %if.end140
  br label %for.body144

if.end140.for.end176_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end176

for.body144:                                      ; preds = %for.inc174.for.body144_crit_edge, %if.end140.for.body144_crit_edge
  %i.1414 = phi i32 [ %i.3.ph, %for.inc174.for.body144_crit_edge ], [ 0, %if.end140.for.body144_crit_edge ]
  %child.1412 = phi ptr [ %call175, %for.inc174.for.body144_crit_edge ], [ %call141, %if.end140.for.body144_crit_edge ]
  %129 = ptrtoint ptr %banks136 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %banks136, align 4
  %call.i343 = call ptr @of_find_property(ptr noundef nonnull %child.1412, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i344.not = icmp eq ptr %call.i343, null
  br i1 %tobool.i344.not, label %for.body144.for.inc174_crit_edge, label %if.then148

for.body144.for.inc174_crit_edge:                 ; preds = %for.body144
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc174

if.then148:                                       ; preds = %for.body144
  %call.i345 = call ptr @__of_reset_control_get(ptr noundef nonnull %child.1412, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %rstc = getelementptr %struct.stm32_gpio_bank, ptr %130, i32 %i.1414, i32 2
  %131 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call.i345, ptr %rstc, align 4
  %cmp152 = icmp eq ptr %call.i345, inttoptr (i32 -517 to ptr)
  br i1 %cmp152, label %if.then153, label %if.end154

if.then153:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #9
  call void @of_node_put(ptr noundef nonnull %child.1412) #7
  br label %cleanup195

if.end154:                                        ; preds = %if.then148
  %call155 = call ptr @of_clk_get_by_name(ptr noundef nonnull %child.1412, ptr noundef null) #7
  %clk = getelementptr %struct.stm32_gpio_bank, ptr %130, i32 %i.1414, i32 1
  %132 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call155, ptr %clk, align 4
  %cmp.i346 = icmp ugt ptr %call155, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i346, label %if.then158, label %if.end171

if.then158:                                       ; preds = %if.end154
  %cmp161.not = icmp eq ptr %call155, inttoptr (i32 -517 to ptr)
  br i1 %cmp161.not, label %if.then158.if.end168_crit_edge, label %do.end165

if.then158.if.end168_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

do.end165:                                        ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %call155 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %133) #10
  br label %if.end168

if.end168:                                        ; preds = %do.end165, %if.then158.if.end168_crit_edge
  call void @of_node_put(ptr noundef nonnull %child.1412) #7
  %134 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %clk, align 4
  %136 = ptrtoint ptr %135 to i32
  br label %cleanup195

if.end171:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  %inc172 = add i32 %i.1414, 1
  br label %for.inc174

for.inc174:                                       ; preds = %if.end171, %for.body144.for.inc174_crit_edge
  %i.3.ph = phi i32 [ %i.1414, %for.body144.for.inc174_crit_edge ], [ %inc172, %if.end171 ]
  %call175 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.1412) #7
  %cmp143.not = icmp eq ptr %call175, null
  br i1 %cmp143.not, label %for.inc174.for.end176_crit_edge, label %for.inc174.for.body144_crit_edge

for.inc174.for.body144_crit_edge:                 ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body144

for.inc174.for.end176_crit_edge:                  ; preds = %for.inc174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end176

for.end176:                                       ; preds = %for.inc174.for.end176_crit_edge, %if.end140.for.end176_crit_edge
  %call177 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef null) #7
  %cmp179.not415 = icmp eq ptr %call177, null
  br i1 %cmp179.not415, label %for.end176.do.end194_crit_edge, label %for.body180.lr.ph

for.end176.do.end194_crit_edge:                   ; preds = %for.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end194

for.body180.lr.ph:                                ; preds = %for.end176
  %nbanks.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 7
  %args24.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %arrayidx25.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 1
  %arrayidx33.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 2
  br label %for.body180

for.body180:                                      ; preds = %for.inc189.for.body180_crit_edge, %for.body180.lr.ph
  %child.2416 = phi ptr [ %call177, %for.body180.lr.ph ], [ %call190, %for.inc189.for.body180_crit_edge ]
  %call.i347 = call ptr @of_find_property(ptr noundef nonnull %child.2416, ptr noundef nonnull @.str.16, ptr noundef null) #7
  %tobool.i348.not = icmp eq ptr %call.i347, null
  br i1 %tobool.i348.not, label %for.body180.for.inc189_crit_edge, label %if.then182

for.body180.for.inc189_crit_edge:                 ; preds = %for.body180
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc189

if.then182:                                       ; preds = %for.body180
  %137 = ptrtoint ptr %banks136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %banks136, align 4
  %139 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nbanks.i, align 4
  %arrayidx.i349 = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank_ioport_nr.i) #7
  %141 = ptrtoint ptr %bank_ioport_nr.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %bank_ioport_nr.i, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %142 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %143 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #7
  %rstc.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 2
  %145 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %146 = ptrtoint ptr %rstc.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rstc.i, align 4
  %cmp.i.i = icmp ugt ptr %147, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then182.if.end.i351_crit_edge, label %if.then.i

if.then182.if.end.i351_crit_edge:                 ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i351

if.then.i:                                        ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 @reset_control_deassert(ptr noundef %147) #7
  br label %if.end.i351

if.end.i351:                                      ; preds = %if.then.i, %if.then182.if.end.i351_crit_edge
  %call5.i = call i32 @of_address_to_resource(ptr noundef nonnull %child.2416, i32 noundef 0, ptr noundef nonnull %res.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i350 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i350, label %if.end7.i, label %if.end.i351.stm32_gpiolib_register_bank.exit.thread_crit_edge

if.end.i351.stm32_gpiolib_register_bank.exit.thread_crit_edge: ; preds = %if.end.i351
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_gpiolib_register_bank.exit.thread

if.end7.i:                                        ; preds = %if.end.i351
  %call8.i = call ptr @devm_ioremap_resource(ptr noundef %144, ptr noundef nonnull %res.i) #7
  %148 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call8.i, ptr %arrayidx.i349, align 4
  %cmp.i170.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i170.i, label %stm32_gpiolib_register_bank.exit, label %if.end14.i

if.end14.i:                                       ; preds = %if.end7.i
  %clk.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 1
  %149 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %clk.i, align 4
  %call15.i = call i32 @clk_prepare(ptr noundef %150) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %do.end.i

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.83, i32 noundef %call15.i) #10
  br label %stm32_gpiolib_register_bank.exit.thread

if.end18.i:                                       ; preds = %if.end14.i
  %gpio_chip.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 4
  %151 = call ptr @memcpy(ptr %gpio_chip.i, ptr @stm32_gpio_template, i32 348)
  %call20.i = call i32 @of_property_read_string(ptr noundef nonnull %child.2416, ptr noundef nonnull @.str.85, ptr noundef %gpio_chip.i) #7
  %call.i.i352 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.2416, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i352)
  %tobool22.not.i = icmp eq i32 %call.i.i352, 0
  br i1 %tobool22.not.i, label %if.then23.i, label %if.else.i

if.then23.i:                                      ; preds = %if.end18.i
  %152 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx25.i, align 4
  %div169.i = lshr i32 %153, 4
  %base29.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 4, i32 19
  %154 = ptrtoint ptr %base29.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %base29.i, align 4
  %155 = ptrtoint ptr %args24.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %args24.i, align 4
  %157 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx33.i, align 4
  %add.i = add i32 %158, %156
  %call.i171172.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.2416, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171172.i)
  %tobool35.not173.i = icmp eq i32 %call.i171172.i, 0
  br i1 %tobool35.not173.i, label %if.then23.i.while.body.i_crit_edge, label %if.then23.i.if.end56.i_crit_edge

if.then23.i.if.end56.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

if.then23.i.while.body.i_crit_edge:               ; preds = %if.then23.i
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then23.i.while.body.i_crit_edge
  %inc175.i = phi i32 [ %inc.i353, %while.body.i.while.body.i_crit_edge ], [ 1, %if.then23.i.while.body.i_crit_edge ]
  %npins.0174.i = phi i32 [ %163, %while.body.i.while.body.i_crit_edge ], [ %add.i, %if.then23.i.while.body.i_crit_edge ]
  %159 = ptrtoint ptr %args24.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %args24.i, align 4
  %161 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %arrayidx33.i, align 4
  %add40.i = add i32 %162, %160
  %163 = call i32 @llvm.smax.i32(i32 %npins.0174.i, i32 %add40.i) #7
  %inc.i353 = add i32 %inc175.i, 1
  %call.i171.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %child.2416, ptr noundef nonnull @.str.86, ptr noundef null, i32 noundef 3, i32 noundef %inc.i353, ptr noundef nonnull %args.i) #7
  %tobool35.not.i = icmp eq i32 %call.i171.i, 0
  br i1 %tobool35.not.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.if.end56.i_crit_edge

while.body.i.if.end56.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nbanks.i, align 4
  %mul.i = shl i32 %165, 4
  %base43.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 4, i32 19
  %166 = ptrtoint ptr %base43.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %mul.i, ptr %base43.i, align 4
  %167 = ptrtoint ptr %gpio_chip.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %gpio_chip.i, align 4
  %name.i354 = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 5, i32 1
  %169 = ptrtoint ptr %name.i354 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %168, ptr %name.i354, align 4
  %id.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 5, i32 2
  %170 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %165, ptr %id.i, align 4
  %pin_base.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 5, i32 4
  %171 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %mul.i, ptr %pin_base.i, align 4
  %base50.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 5, i32 3
  %172 = ptrtoint ptr %base50.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %mul.i, ptr %base50.i, align 4
  %npins51.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 5, i32 5
  %173 = ptrtoint ptr %npins51.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 16, ptr %npins51.i, align 4
  %gc.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 5, i32 7
  %174 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %gpio_chip.i, ptr %gc.i, align 4
  %175 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %pctl_dev, align 4
  %177 = ptrtoint ptr %banks136 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %banks136, align 4
  %range55.i = getelementptr %struct.stm32_gpio_bank, ptr %178, i32 %165, i32 5
  call void @pinctrl_add_gpio_range(ptr noundef %176, ptr noundef %range55.i) #7
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.else.i, %while.body.i.if.end56.i_crit_edge, %if.then23.i.if.end56.i_crit_edge
  %npins.1.i = phi i32 [ 16, %if.else.i ], [ %add.i, %if.then23.i.if.end56.i_crit_edge ], [ %163, %while.body.i.if.end56.i_crit_edge ]
  %bank_nr.0.i = phi i32 [ %165, %if.else.i ], [ %div169.i, %if.then23.i.if.end56.i_crit_edge ], [ %div169.i, %while.body.i.if.end56.i_crit_edge ]
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.2416, ptr noundef nonnull @.str.87, ptr noundef nonnull %bank_ioport_nr.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool58.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool58.not.i, label %if.end56.i.if.end60.i_crit_edge, label %if.then59.i

if.end56.i.if.end60.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  %179 = ptrtoint ptr %bank_ioport_nr.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %bank_nr.0.i, ptr %bank_ioport_nr.i, align 4
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %if.end56.i.if.end60.i_crit_edge
  %mul61.i = shl i32 %bank_nr.0.i, 4
  %base63.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 4, i32 19
  %180 = ptrtoint ptr %base63.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %mul61.i, ptr %base63.i, align 4
  %conv.i = trunc i32 %npins.1.i to i16
  %ngpio.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 4, i32 20
  %181 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %of_node.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 4, i32 39
  %182 = ptrtoint ptr %of_node.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %child.2416, ptr %of_node.i, align 4
  %parent.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 4, i32 2
  %183 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %144, ptr %parent.i, align 4
  %bank_nr67.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 8
  %184 = ptrtoint ptr %bank_nr67.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %bank_nr.0.i, ptr %bank_nr67.i, align 4
  %185 = ptrtoint ptr %bank_ioport_nr.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %bank_ioport_nr.i, align 4
  %bank_ioport_nr68.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 9
  %187 = ptrtoint ptr %bank_ioport_nr68.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %bank_ioport_nr68.i, align 4
  %lock.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @stm32_gpiolib_register_bank.__key, i16 noundef signext 3) #7
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %child.2416, i32 0, i32 3
  %fwnode.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 6
  %188 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %fwnode.i.i, ptr %fwnode.i, align 4
  %189 = ptrtoint ptr %domain365 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %domain365, align 4
  %call75.i = call ptr @irq_domain_create_hierarchy(ptr noundef %190, i32 noundef 0, i32 noundef 16, ptr noundef %fwnode.i.i, ptr noundef nonnull @stm32_gpio_domain_ops, ptr noundef %arrayidx.i349) #7
  %domain76.i = getelementptr %struct.stm32_gpio_bank, ptr %138, i32 %140, i32 7
  %191 = ptrtoint ptr %domain76.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call75.i, ptr %domain76.i, align 4
  %tobool78.not.i = icmp eq ptr %call75.i, null
  br i1 %tobool78.not.i, label %if.end60.i.stm32_gpiolib_register_bank.exit.thread_crit_edge, label %if.end80.i

if.end60.i.stm32_gpiolib_register_bank.exit.thread_crit_edge: ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_gpiolib_register_bank.exit.thread

if.end80.i:                                       ; preds = %if.end60.i
  %call83.i = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip.i, ptr noundef %arrayidx.i349, ptr noundef nonnull @stm32_gpiolib_register_bank.lock_key, ptr noundef nonnull @stm32_gpiolib_register_bank.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %stm32_gpiolib_register_bank.exit.thread386, label %do.end88.i

do.end88.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %144, ptr noundef nonnull @.str.90, i32 noundef %bank_nr.0.i) #10
  br label %stm32_gpiolib_register_bank.exit.thread

stm32_gpiolib_register_bank.exit.thread386:       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %gpio_chip.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %gpio_chip.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.93, ptr noundef %193) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_ioport_nr.i) #7
  %194 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %nbanks.i, align 4
  %inc187 = add i32 %195, 1
  store i32 %inc187, ptr %nbanks.i, align 4
  br label %for.inc189

stm32_gpiolib_register_bank.exit.thread:          ; preds = %do.end88.i, %if.end60.i.stm32_gpiolib_register_bank.exit.thread_crit_edge, %do.end.i, %if.end.i351.stm32_gpiolib_register_bank.exit.thread_crit_edge
  %retval.0.i356.ph = phi i32 [ %call83.i, %do.end88.i ], [ %call15.i, %do.end.i ], [ -19, %if.end60.i.stm32_gpiolib_register_bank.exit.thread_crit_edge ], [ -19, %if.end.i351.stm32_gpiolib_register_bank.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_ioport_nr.i) #7
  br label %if.then185

stm32_gpiolib_register_bank.exit:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %call8.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank_ioport_nr.i) #7
  br label %if.then185

if.then185:                                       ; preds = %stm32_gpiolib_register_bank.exit, %stm32_gpiolib_register_bank.exit.thread
  %retval.0.i356385 = phi i32 [ %retval.0.i356.ph, %stm32_gpiolib_register_bank.exit.thread ], [ %196, %stm32_gpiolib_register_bank.exit ]
  call void @of_node_put(ptr noundef nonnull %child.2416) #7
  br label %cleanup195

for.inc189:                                       ; preds = %stm32_gpiolib_register_bank.exit.thread386, %for.body180.for.inc189_crit_edge
  %call190 = call ptr @of_get_next_available_child(ptr noundef nonnull %1, ptr noundef nonnull %child.2416) #7
  %cmp179.not = icmp eq ptr %call190, null
  br i1 %cmp179.not, label %for.inc189.do.end194_crit_edge, label %for.inc189.for.body180_crit_edge

for.inc189.for.body180_crit_edge:                 ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body180

for.inc189.do.end194_crit_edge:                   ; preds = %for.inc189
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end194

do.end194:                                        ; preds = %for.inc189.do.end194_crit_edge, %for.end176.do.end194_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24) #10
  br label %cleanup195

cleanup195:                                       ; preds = %do.end194, %if.then185, %if.end168, %if.then153, %devm_kcalloc.exit342.cleanup195_crit_edge, %devm_kcalloc.exit342.thread, %do.end133, %do.end113, %devm_kcalloc.exit333.cleanup195_crit_edge, %if.end80.cleanup195_crit_edge, %if.then75.cleanup195_crit_edge, %do.end71, %devm_kcalloc.exit.cleanup195_crit_edge, %devm_kcalloc.exit.thread, %if.then25.cleanup195_crit_edge, %if.then18, %if.end10.cleanup195_crit_edge, %do.end, %lor.lhs.false.cleanup195_crit_edge, %if.end.cleanup195_crit_edge, %entry.cleanup195_crit_edge
  %retval.2 = phi i32 [ %18, %if.then18 ], [ -22, %do.end71 ], [ %123, %do.end113 ], [ %retval.0.i356385, %if.then185 ], [ 0, %do.end194 ], [ -22, %do.end133 ], [ -22, %do.end ], [ -22, %entry.cleanup195_crit_edge ], [ -22, %lor.lhs.false.cleanup195_crit_edge ], [ -22, %if.end.cleanup195_crit_edge ], [ -12, %if.end10.cleanup195_crit_edge ], [ -517, %if.then25.cleanup195_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup195_crit_edge ], [ %call76, %if.then75.cleanup195_crit_edge ], [ -12, %devm_kcalloc.exit333.cleanup195_crit_edge ], [ -12, %devm_kcalloc.exit342.cleanup195_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit342.thread ], [ -517, %if.then153 ], [ %136, %if.end168 ], [ -12, %if.end80.cleanup195_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_hwspin_lock_get_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwspin_lock_request_specific(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pctrl_dt_setup_irq(ptr noundef %pdev, ptr nocapture noundef %pctl) unnamed_addr #0 align 64 {
entry:
  %offset = alloca i32, align 4
  %mask = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #7
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %offset, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mask, align 4, !annotation !242
  %call = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %1, ptr noundef nonnull @.str.28) #7
  %regmap = getelementptr inbounds %struct.stm32_pinctrl, ptr %pctl, i32 0, i32 10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call to i32
  br label %cleanup38

if.end:                                           ; preds = %entry
  %call8 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef 1, ptr noundef nonnull %offset) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.end.cleanup38_crit_edge

if.end.cleanup38_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end10:                                         ; preds = %if.end
  %call11 = call i32 @of_property_read_u32_index(ptr noundef %1, ptr noundef nonnull @.str.28, i32 noundef 2, ptr noundef nonnull %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 15, ptr %mask, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end10.if.end14_crit_edge
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %9 = call i32 @llvm.ctlz.i32(i32 %8, i1 true) #7, !range !243
  %sub.i = sub nuw nsw i32 32, %9
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %sub.i
  %add18 = add nsw i32 %cond.i, -1
  br label %for.body

for.cond:                                         ; preds = %do.end
  %inc = add nuw nsw i32 %i.071, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond.cleanup38_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup38_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end14
  %i.071 = phi i32 [ 0, %if.end14 ], [ %inc, %for.cond.for.body_crit_edge ]
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %div70 = and i32 %i.071, 2147483644
  %add = add i32 %11, %div70
  %rem = and i32 %i.071, 3
  %mul16 = mul nuw nsw i32 %rem, %cond.i
  %sub = add nsw i32 %add18, %mul16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stm32_pctrl_dt_setup_irq.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stm32_pctrl_dt_setup_irq, %do.end)) #7
          to label %if.then24 [label %do.end], !srcloc !240

if.then24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stm32_pctrl_dt_setup_irq.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %i.071, i32 noundef %add, i32 noundef %mul16, i32 noundef %sub) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %for.body
  %.fca.0.insert = insertvalue [5 x i32] poison, i32 %add, 0
  %.fca.1.insert = insertvalue [5 x i32] %.fca.0.insert, i32 %mul16, 1
  %.fca.2.insert = insertvalue [5 x i32] %.fca.1.insert, i32 %sub, 2
  %.fca.3.insert = insertvalue [5 x i32] %.fca.2.insert, i32 -1, 3
  %.fca.4.insert = insertvalue [5 x i32] %.fca.3.insert, i32 -1, 4
  %call29 = call ptr @devm_regmap_field_alloc(ptr noundef %dev, ptr noundef %call, [5 x i32] %.fca.4.insert) #7
  %arrayidx = getelementptr %struct.stm32_pinctrl, ptr %pctl, i32 0, i32 11, i32 %i.071
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call29, ptr %arrayidx, align 4
  %cmp.i67 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call29 to i32
  br label %cleanup38

cleanup38:                                        ; preds = %cleanup.thread, %for.cond.cleanup38_crit_edge, %if.end.cleanup38_crit_edge, %if.then
  %retval.2 = phi i32 [ %5, %if.then ], [ %call8, %if.end.cleanup38_crit_edge ], [ %13, %cleanup.thread ], [ 0, %for.cond.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #7
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stm32_pinctrl_resume(ptr nocapture noundef readonly %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ngroups = getelementptr inbounds %struct.stm32_pinctrl, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6.not = icmp eq i32 %3, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %groups = getelementptr inbounds %struct.stm32_pinctrl, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %pctl_dev.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %stm32_pinctrl_restore_gpio_regs.exit.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %stm32_pinctrl_restore_gpio_regs.exit.for.body_crit_edge ]
  %g.07 = phi ptr [ %5, %for.body.lr.ph ], [ %incdec.ptr, %stm32_pinctrl_restore_gpio_regs.exit.for.body_crit_edge ]
  %pin = getelementptr inbounds %struct.stm32_pinctrl_group, ptr %g.07, i32 0, i32 2
  %6 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin, align 4
  %8 = ptrtoint ptr %pctl_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl_dev.i, align 4
  %pin_desc_tree.i.i = getelementptr inbounds %struct.pinctrl_dev, ptr %9, i32 0, i32 2
  %call.i.i = tail call ptr @radix_tree_lookup(ptr noundef %pin_desc_tree.i.i, i32 noundef %7) #7
  %rem.i.i = srem i32 %7, 16
  %10 = ptrtoint ptr %pctl_dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pctl_dev.i, align 4
  %call3.i = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %11, i32 noundef %7) #7
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %for.body.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, label %if.end.i

for.body.stm32_pinctrl_restore_gpio_regs.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pinctrl_restore_gpio_regs.exit

if.end.i:                                         ; preds = %for.body
  %gc.i = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call3.i, i32 0, i32 7
  %12 = ptrtoint ptr %gc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %gc.i, align 4
  %call4.i = tail call zeroext i1 @gpiochip_line_is_irq(ptr noundef %13, i32 noundef %rem.i.i) #7
  %tobool5.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, label %lor.lhs.false.i

if.end.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pinctrl_restore_gpio_regs.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  br i1 %call4.i, label %lor.lhs.false.i.if.end9.i_crit_edge, label %land.lhs.true.i

lor.lhs.false.i.if.end9.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %gpio_owner.i = getelementptr inbounds %struct.pin_desc, ptr %call.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %gpio_owner.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpio_owner.i, align 4
  %tobool7.not.i = icmp eq ptr %15, null
  br i1 %tobool7.not.i, label %land.lhs.true.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.i

land.lhs.true.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pinctrl_restore_gpio_regs.exit

if.end9.i:                                        ; preds = %land.lhs.true.i.if.end9.i_crit_edge, %lor.lhs.false.i.if.end9.i_crit_edge
  %16 = ptrtoint ptr %gc.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gc.i, align 4
  %call11.i = tail call ptr @gpiochip_get_data(ptr noundef %17) #7
  %arrayidx.i = getelementptr %struct.stm32_gpio_bank, ptr %call11.i, i32 0, i32 10, i32 %rem.i.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %and.i = lshr i32 %19, 2
  %shr.i = and i32 %and.i, 15
  %and14.i = and i32 %19, 3
  %call16.i = tail call fastcc i32 @stm32_pmx_set_mode(ptr noundef %call11.i, i32 noundef %rem.i.i, i32 noundef %and14.i, i32 noundef %shr.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end9.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge

if.end9.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pinctrl_restore_gpio_regs.exit

if.end19.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and14.i)
  %cmp.i = icmp eq i32 %and14.i, 1
  br i1 %cmp.i, label %if.then20.i, label %if.end19.i.if.end25.i_crit_edge

if.end19.i.if.end25.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then20.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %and23.i = lshr i32 %21, 11
  %shr24.i = and i32 %and23.i, 1
  %and.i.i.i = and i32 %21, -2049
  %shl.i.i.i = shl nuw nsw i32 %shr24.i, 11
  %or.i.i.i = or i32 %shl.i.i.i, %and.i.i.i
  store i32 %or.i.i.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr24.i)
  %tobool.not.i.i = icmp eq i32 %shr24.i, 0
  %add.i.i = add nsw i32 %rem.i.i, 16
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %add.i.i, i32 %rem.i.i
  %clk.i.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call11.i, i32 0, i32 1
  %22 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i.i, align 4
  %call.i1.i = tail call i32 @clk_enable(ptr noundef %23) #7
  %shl.i.i = shl nuw i32 1, %spec.select.i.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %shl.i.i) #7
  %25 = ptrtoint ptr %call11.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call11.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %24) #7, !srcloc !244
  %27 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %28) #7
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.then20.i, %if.end19.i.if.end25.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i, align 4
  %and28.i = lshr i32 %30, 10
  %shr29.i = and i32 %and28.i, 1
  %call30.i = tail call fastcc i32 @stm32_pconf_set_driving(ptr noundef %call11.i, i32 noundef %rem.i.i, i32 noundef %shr29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %if.end33.i, label %if.end25.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge

if.end25.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pinctrl_restore_gpio_regs.exit

if.end33.i:                                       ; preds = %if.end25.i
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %and36.i = lshr i32 %32, 6
  %shr37.i = and i32 %and36.i, 3
  %call38.i = tail call fastcc i32 @stm32_pconf_set_speed(ptr noundef %call11.i, i32 noundef %rem.i.i, i32 noundef %shr37.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %if.end41.i, label %if.end33.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge

if.end33.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pinctrl_restore_gpio_regs.exit

if.end41.i:                                       ; preds = %if.end33.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  %and44.i = lshr i32 %34, 8
  %shr45.i = and i32 %and44.i, 3
  %call46.i = tail call fastcc i32 @stm32_pconf_set_bias(ptr noundef %call11.i, i32 noundef %rem.i.i, i32 noundef %shr45.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp ne i32 %call46.i, 0
  %call4.not.i = xor i1 %call4.i, true
  %brmerge.i = select i1 %tobool47.not.i, i1 true, i1 %call4.not.i
  br i1 %brmerge.i, label %if.end41.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, label %if.then51.i

if.end41.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge: ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pinctrl_restore_gpio_regs.exit

if.then51.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx52.i = getelementptr %struct.stm32_pinctrl, ptr %1, i32 0, i32 11, i32 %rem.i.i
  %35 = ptrtoint ptr %arrayidx52.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx52.i, align 4
  %bank_ioport_nr.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call11.i, i32 0, i32 9
  %37 = ptrtoint ptr %bank_ioport_nr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bank_ioport_nr.i, align 4
  %call.i2.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %36, i32 noundef -1, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %stm32_pinctrl_restore_gpio_regs.exit

stm32_pinctrl_restore_gpio_regs.exit:             ; preds = %if.then51.i, %if.end41.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, %if.end33.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, %if.end25.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, %if.end9.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, %land.lhs.true.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, %if.end.i.stm32_pinctrl_restore_gpio_regs.exit_crit_edge, %for.body.stm32_pinctrl_restore_gpio_regs.exit_crit_edge
  %inc = add nuw i32 %i.08, 1
  %incdec.ptr = getelementptr %struct.stm32_pinctrl_group, ptr %g.07, i32 1
  %39 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ngroups, align 4
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %stm32_pinctrl_restore_gpio_regs.exit.for.body_crit_edge, label %stm32_pinctrl_restore_gpio_regs.exit.for.end_crit_edge

stm32_pinctrl_restore_gpio_regs.exit.for.end_crit_edge: ; preds = %stm32_pinctrl_restore_gpio_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

stm32_pinctrl_restore_gpio_regs.exit.for.body_crit_edge: ; preds = %stm32_pinctrl_restore_gpio_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %stm32_pinctrl_restore_gpio_regs.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp11.not = icmp eq i32 %num_configs, 0
  br i1 %cmp11.not, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.012 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.012
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %1, 255
  %shr.i = lshr i32 %1, 8
  %call3 = tail call fastcc i32 @stm32_pconf_parse_conf(ptr noundef %pctldev, i32 noundef %pin, i32 noundef %and.i, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call3, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %config1 = getelementptr %struct.stm32_pinctrl_group, ptr %1, i32 %group, i32 1
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %config1, align 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %config, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %mutex = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp23.not = icmp eq i32 %num_configs, 0
  br i1 %cmp23.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %groups = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.stm32_pinctrl_group, ptr %1, i32 %group, i32 2
  %config = getelementptr %struct.stm32_pinctrl_group, ptr %1, i32 %group, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %2 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin, align 4
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.024
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %and.i = and i32 %5, 255
  %shr.i = lshr i32 %5, 8
  %call5 = tail call fastcc i32 @stm32_pconf_parse_conf(ptr noundef %pctldev, i32 noundef %3, i32 noundef %and.i, i32 noundef %shr.i)
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp7 = icmp slt i32 %call5, 0
  br i1 %cmp7, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %config, align 4
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call5, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_pconf_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %pctldev, i32 noundef %pin) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %rem.i = srem i32 %pin, 16
  %div.i.lhs.trunc = trunc i32 %rem.i to i8
  %div.i117 = sdiv i8 %div.i.lhs.trunc, 8
  %div.i.sext = sext i8 %div.i117 to i32
  %mul1.i = shl nsw i32 %div.i.sext, 2
  %add.i = add nsw i32 %mul1.i, 32
  %clk.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #7
  %lock.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call1, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !239
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call1, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !239
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %mul20.i = shl nsw i32 %rem.i, 1
  %shl21.neg.i = shl nsw i32 -1, %mul20.i
  %sub26.i = sub nsw i32 30, %mul20.i
  %shr27.i = lshr i32 -1, %sub26.i
  %and28.i = and i32 %shr27.i, %shl21.neg.i
  %and30.i = and i32 %10, %and28.i
  %shr32.i = lshr i32 %and30.i, %mul20.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  %13 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk.i, align 4
  %call.i59 = tail call i32 @clk_enable(ptr noundef %14) #7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %15 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call1, align 4
  %add.ptr.i61 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #7, !srcloc !239
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  %and12.i = and i32 %18, %and28.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  %19 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %20) #7
  %shr16.i = lshr i32 %and12.i, %mul20.i
  %arrayidx = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.modes, i32 0, i32 %shr32.i
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, ptr noundef %22) #7
  %23 = zext i32 %shr32.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr32.i, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk.i, align 4
  %call.i67 = tail call i32 @clk_enable(ptr noundef %25) #7
  %call3.i69 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %26 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call1, align 4
  %add.ptr.i70 = getelementptr i8, ptr %27, i32 16
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i70) #7, !srcloc !239
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i69) #7
  %30 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %31) #7
  %32 = shl nuw nsw i32 1, %rem.i
  %33 = and i32 %29, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool24.i.not = icmp eq i32 %33, 0
  %cond = select i1 %tobool24.i.not, ptr @.str.42, ptr @.str.44
  %arrayidx6 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.biasing, i32 0, i32 %shr16.i
  %34 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx6, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull %cond, ptr noundef %35) #7
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i, align 4
  %call.i72 = tail call i32 @clk_enable(ptr noundef %37) #7
  %call3.i74 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %38 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call1, align 4
  %add.ptr.i75 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i75) #7, !srcloc !239
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %and.i76 = and i32 %41, %shl.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i74) #7
  %42 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %43) #7
  %shr.i77 = lshr i32 %and.i76, %rem.i
  %44 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk.i, align 4
  %call.i79 = tail call i32 @clk_enable(ptr noundef %45) #7
  %call3.i81 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %46 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call1, align 4
  %add.ptr.i82 = getelementptr i8, ptr %47, i32 8
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #7, !srcloc !239
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #7
  %and12.i88 = and i32 %49, %and28.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i81) #7
  %50 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %51) #7
  %shr16.i89 = lshr i32 %and12.i88, %mul20.i
  %52 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk.i, align 4
  %call.i91 = tail call i32 @clk_enable(ptr noundef %53) #7
  %call3.i93 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %54 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call1, align 4
  %add.ptr12.i = getelementptr i8, ptr %55, i32 20
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7, !srcloc !239
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i93) #7
  %58 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %59) #7
  %60 = and i32 %57, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool24.i94.not = icmp eq i32 %60, 0
  %cond13 = select i1 %tobool24.i94.not, ptr @.str.42, ptr @.str.44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i77)
  %tobool14.not = icmp eq i32 %shr.i77, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.54, ptr @.str.53
  %arrayidx16 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.biasing, i32 0, i32 %shr16.i
  %61 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx16, align 4
  %arrayidx17 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.speeds, i32 0, i32 %shr16.i89
  %63 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx17, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, ptr noundef nonnull %cond13, ptr noundef nonnull %cond15, ptr noundef %62, ptr noundef %64, ptr noundef nonnull @.str.55) #7
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %65 = mul i8 %div.i117, 8
  %rem.i57116.decomposed = sub i8 %div.i.lhs.trunc, %65
  %rem.i57.sext = sext i8 %rem.i57116.decomposed to i32
  %mul.i = shl nsw i32 %rem.i57.sext, 2
  %sub11.i = sub nsw i32 28, %mul.i
  %shr.i = lshr i32 -1, %sub11.i
  %shl.neg.i = shl nsw i32 -1, %mul.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %66 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  %and13.i = and i32 %and.i, %66
  %shr14.i = lshr i32 %and13.i, %mul.i
  %67 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %clk.i, align 4
  %call.i96 = tail call i32 @clk_enable(ptr noundef %68) #7
  %call3.i98 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %69 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call1, align 4
  %add.ptr.i99 = getelementptr i8, ptr %70, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #7, !srcloc !239
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  %shl.i100 = shl nuw nsw i32 1, %rem.i
  %and.i101 = and i32 %72, %shl.i100
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i98) #7
  %73 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %74) #7
  %shr.i102 = lshr i32 %and.i101, %rem.i
  %75 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %clk.i, align 4
  %call.i104 = tail call i32 @clk_enable(ptr noundef %76) #7
  %call3.i106 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %77 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call1, align 4
  %add.ptr.i107 = getelementptr i8, ptr %78, i32 8
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #7, !srcloc !239
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  %and12.i113 = and i32 %80, %and28.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i106) #7
  %81 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %82) #7
  %shr16.i114 = lshr i32 %and12.i113, %mul20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr.i102)
  %tobool21.not = icmp eq i32 %shr.i102, 0
  %cond22 = select i1 %tobool21.not, ptr @.str.54, ptr @.str.53
  %arrayidx23 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.biasing, i32 0, i32 %shr16.i
  %83 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx23, align 4
  %arrayidx24 = getelementptr [4 x ptr], ptr @stm32_pconf_dbg_show.speeds, i32 0, i32 %shr16.i114
  %85 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx24, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %shr14.i, ptr noundef nonnull %cond22, ptr noundef %84, ptr noundef %86, ptr noundef nonnull @.str.55) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pconf_parse_conf(ptr noundef %pctldev, i32 noundef %pin, i32 noundef %param, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call1 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %pctldev, i32 noundef %pin) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call1, i32 0, i32 7
  %2 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gc, align 4
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %3) #7
  %rem.i = srem i32 %pin, 16
  %4 = zext i32 %param to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %param, label %if.end.cleanup_crit_edge [
    i32 8, label %sw.bb
    i32 6, label %sw.bb5
    i32 24, label %sw.bb7
    i32 1, label %sw.bb9
    i32 5, label %sw.bb11
    i32 3, label %sw.bb13
    i32 17, label %sw.bb15
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call fastcc i32 @stm32_pconf_set_driving(ptr noundef %call2, i32 noundef %rem.i, i32 noundef 0)
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call fastcc i32 @stm32_pconf_set_driving(ptr noundef %call2, i32 noundef %rem.i, i32 noundef 1)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call fastcc i32 @stm32_pconf_set_speed(ptr noundef %call2, i32 noundef %rem.i, i32 noundef %arg)
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call fastcc i32 @stm32_pconf_set_bias(ptr noundef %call2, i32 noundef %rem.i, i32 noundef 0)
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call fastcc i32 @stm32_pconf_set_bias(ptr noundef %call2, i32 noundef %rem.i, i32 noundef 1)
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call fastcc i32 @stm32_pconf_set_bias(ptr noundef %call2, i32 noundef %rem.i, i32 noundef 2)
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.stm32_gpio_bank, ptr %call2, i32 0, i32 10, i32 %rem.i
  %5 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %6, -2049
  %shl.i.i = shl i32 %arg, 11
  %or.i.i = or i32 %and.i.i, %shl.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %arg)
  %tobool.not.i = icmp eq i32 %arg, 0
  %add.i = add nsw i32 %rem.i, 16
  %spec.select.i = select i1 %tobool.not.i, i32 %add.i, i32 %rem.i
  %clk.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call2, i32 0, i32 1
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %8) #7
  %shl.i = shl nuw i32 1, %spec.select.i
  %9 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %10 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call2, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %9) #7, !srcloc !244
  %12 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  %14 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gc, align 4
  %call.i40 = tail call ptr @gpiochip_get_data(ptr noundef %15) #7
  %call2.i = tail call fastcc i32 @stm32_pmx_set_mode(ptr noundef %call.i40, i32 noundef %rem.i, i32 noundef 1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call2.i, %sw.bb15 ], [ %call14, %sw.bb13 ], [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb7 ], [ %call6, %sw.bb5 ], [ %call4, %sw.bb ], [ -524, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pconf_set_driving(ptr noundef %bank, i32 noundef %offset, i32 noundef %drive) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #7
  %lock = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hwlock = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwlock, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef nonnull %7, i32 noundef 1000, i32 noundef 4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %do.end13

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33) #10
  br label %unlock

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bank, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !239
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %shl = shl nuw i32 1, %offset
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  %shl17 = shl i32 %drive, %offset
  %or = or i32 %and, %shl17
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bank, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %14) #7, !srcloc !244
  %17 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwlock, align 4
  %tobool21.not = icmp eq ptr %18, null
  br i1 %tobool21.not, label %if.end14.if.end24_crit_edge, label %if.then22

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then22:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__hwspin_unlock(ptr noundef nonnull %18, i32 noundef 4, ptr noundef null) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end14.if.end24_crit_edge
  %arrayidx.i = getelementptr %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 10, i32 %offset
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %20, -1025
  %shl.i = shl i32 %drive, 10
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end24, %do.end13
  %err.1 = phi i32 [ %call.i, %do.end13 ], [ 0, %if.end24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pconf_set_speed(ptr noundef %bank, i32 noundef %offset, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #7
  %lock = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hwlock = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwlock, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef nonnull %7, i32 noundef 1000, i32 noundef 4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %do.end13

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33) #10
  br label %unlock

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bank, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !239
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %mul = shl i32 %offset, 1
  %shl.neg = shl nsw i32 -1, %mul
  %sub19 = sub i32 30, %mul
  %shr = lshr i32 -1, %sub19
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and21 = and i32 %13, %neg
  %shl23 = shl i32 %speed, %mul
  %or = or i32 %and21, %shl23
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bank, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %14) #7, !srcloc !244
  %17 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwlock, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %if.end14.if.end30_crit_edge, label %if.then28

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__hwspin_unlock(ptr noundef nonnull %18, i32 noundef 4, ptr noundef null) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end14.if.end30_crit_edge
  %arrayidx.i = getelementptr %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 10, i32 %offset
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %20, -193
  %shl.i = shl i32 %speed, 6
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end30, %do.end13
  %err.1 = phi i32 [ %call.i, %do.end13 ], [ 0, %if.end30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pconf_set_bias(ptr noundef %bank, i32 noundef %offset, i32 noundef %bias) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %5) #7
  %lock = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hwlock = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 12
  %6 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwlock, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef nonnull %7, i32 noundef 1000, i32 noundef 4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.then.if.end14_crit_edge, label %do.end13

if.then.if.end14_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end13:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33) #10
  br label %unlock

if.end14:                                         ; preds = %if.then.if.end14_crit_edge, %entry.if.end14_crit_edge
  %10 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bank, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !239
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %mul = shl i32 %offset, 1
  %shl.neg = shl nsw i32 -1, %mul
  %sub19 = sub i32 30, %mul
  %shr = lshr i32 -1, %sub19
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and21 = and i32 %13, %neg
  %shl23 = shl i32 %bias, %mul
  %or = or i32 %and21, %shl23
  %14 = tail call i32 @llvm.bswap.i32(i32 %or)
  %15 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bank, align 4
  %add.ptr25 = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %14) #7, !srcloc !244
  %17 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hwlock, align 4
  %tobool27.not = icmp eq ptr %18, null
  br i1 %tobool27.not, label %if.end14.if.end30_crit_edge, label %if.then28

if.end14.if.end30_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__hwspin_unlock(ptr noundef nonnull %18, i32 noundef 4, ptr noundef null) #7
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end14.if.end30_crit_edge
  %arrayidx.i = getelementptr %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 10, i32 %offset
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %20, -769
  %shl.i = shl i32 %bias, 8
  %or.i = or i32 %and.i, %shl.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end30, %do.end13
  %err.1 = phi i32 [ %call.i, %do.end13 ], [ 0, %if.end30 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %21 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %22) #7
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pmx_gpio_set_direction(ptr nocapture noundef readnone %pctldev, ptr nocapture noundef readonly %range, i32 noundef %gpio, i1 noundef zeroext %input) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %range, i32 0, i32 7
  %0 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gc, align 4
  %call = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %rem.i = srem i32 %gpio, 16
  %lnot = xor i1 %input, true
  %lnot.ext = zext i1 %lnot to i32
  %call2 = tail call fastcc i32 @stm32_pmx_set_mode(ptr noundef %call, i32 noundef %rem.i, i32 noundef %lnot.ext, i32 noundef 0)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwspin_lock_timeout(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hwspin_unlock(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stm32_pmx_set_mode(ptr noundef %bank, i32 noundef %pin, i32 noundef %mode, i32 noundef %alt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %pin, 8
  %4 = mul i32 %div, 8
  %rem.decomposed = sub i32 %pin, %4
  %mul = shl nsw i32 %rem.decomposed, 2
  %mul1 = shl nsw i32 %div, 2
  %add = add nsw i32 %mul1, 32
  %clk = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %6) #7
  %lock = getelementptr inbounds %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %hwlock = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hwlock, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef nonnull %8, i32 noundef 1000, i32 noundef 4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool10.not = icmp eq i32 %call.i, 0
  br i1 %tobool10.not, label %if.then.if.end15_crit_edge, label %do.end14

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end14:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.33) #10
  br label %unlock

if.end15:                                         ; preds = %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  %11 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %bank, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !239
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %shl.neg = shl nsw i32 -1, %mul
  %sub20 = sub nsw i32 28, %mul
  %shr = lshr i32 -1, %sub20
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %and22 = and i32 %14, %neg
  %shl23 = shl i32 %alt, %mul
  %or = or i32 %and22, %shl23
  %15 = tail call i32 @llvm.bswap.i32(i32 %or)
  %16 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bank, align 4
  %add.ptr25 = getelementptr i8, ptr %17, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %15) #7, !srcloc !244
  %18 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bank, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !239
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %mul31 = shl i32 %pin, 1
  %shl32.neg = shl nsw i32 -1, %mul31
  %sub37 = sub i32 30, %mul31
  %shr38 = lshr i32 -1, %sub37
  %and39 = and i32 %shr38, %shl32.neg
  %neg41 = xor i32 %and39, -1
  %and42 = and i32 %21, %neg41
  %shl44 = shl i32 %mode, %mul31
  %or45 = or i32 %and42, %shl44
  %22 = tail call i32 @llvm.bswap.i32(i32 %or45)
  %23 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bank, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #7, !srcloc !244
  %25 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hwlock, align 4
  %tobool49.not = icmp eq ptr %26, null
  br i1 %tobool49.not, label %if.end15.if.end52_crit_edge, label %if.then50

if.end15.if.end52_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52

if.then50:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__hwspin_unlock(ptr noundef nonnull %26, i32 noundef 4, ptr noundef null) #7
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %if.end15.if.end52_crit_edge
  %arrayidx.i = getelementptr %struct.stm32_gpio_bank, ptr %bank, i32 0, i32 10, i32 %pin
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %28, -64
  %shl3.i = shl i32 %alt, 2
  %or.i = or i32 %shl3.i, %mode
  %or6.i = or i32 %or.i, %and.i
  store i32 %or6.i, ptr %arrayidx.i, align 4
  br label %unlock

unlock:                                           ; preds = %if.end52, %do.end14
  %err.1 = phi i32 [ %call.i, %do.end14 ], [ 0, %if.end52 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #7
  %29 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %30) #7
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pctrl_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %ngroups = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @stm32_pctrl_get_group_name(ptr noundef %pctldev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.stm32_pinctrl_group, ptr %1, i32 %group
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pctrl_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin = getelementptr %struct.stm32_pinctrl_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pin, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pctrl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #0 align 64 {
entry:
  %pinfunc.i = alloca i32, align 4
  %configs.i = alloca ptr, align 4
  %num_configs.i = alloca i32, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #7
  %0 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %map, align 4
  %1 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %num_maps, align 4
  %2 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reserved_maps, align 4
  %call = tail call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef null) #7
  %cmp.not50 = icmp eq ptr %call, null
  br i1 %cmp.not50, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %np.051 = phi ptr [ %call3, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pinfunc.i) #7
  %3 = ptrtoint ptr %pinfunc.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %pinfunc.i, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %configs.i) #7
  %4 = ptrtoint ptr %configs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %configs.i, align 4, !annotation !242
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_configs.i) #7
  %5 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %num_configs.i, align 4, !annotation !242
  %call.i = call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call1.i = call ptr @of_find_property(ptr noundef nonnull %np.051, ptr noundef nonnull @.str.57, ptr noundef null) #7
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %stm32_pctrl_dt_subnode_to_map.exit.thread, label %if.end.i

stm32_pctrl_dt_subnode_to_map.exit.thread:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58, ptr noundef nonnull %np.051) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfunc.i) #7
  br label %if.then

if.end.i:                                         ; preds = %for.body
  %call2.i = call i32 @pinconf_generic_parse_dt_config(ptr noundef nonnull %np.051, ptr noundef %pctldev, ptr noundef nonnull %configs.i, ptr noundef nonnull %num_configs.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.stm32_pctrl_dt_subnode_to_map.exit_crit_edge

if.end.i.stm32_pctrl_dt_subnode_to_map.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_dt_subnode_to_map.exit

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_configs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  %length.i = getelementptr inbounds %struct.property, ptr %call1.i, i32 0, i32 1
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %div105.i = lshr i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %tobool9.not.i = icmp ult i32 %11, 4
  br i1 %tobool9.not.i, label %if.end5.i.exit.i_crit_edge, label %if.end19.i

if.end5.i.exit.i_crit_edge:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end19.i:                                       ; preds = %if.end5.i
  %maps_per_pin.1.i = select i1 %tobool6.not.i, i32 1, i32 2
  %mul.i = mul nuw nsw i32 %maps_per_pin.1.i, %div105.i
  %call20.i = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %mul.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %for.body.lr.ph.i, label %if.end19.i.exit.i_crit_edge

if.end19.i.exit.i_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

for.body.lr.ph.i:                                 ; preds = %if.end19.i
  %npins.i.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 14
  %pins.i.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 13
  %ngroups.i.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 4
  %groups.i.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call.i, i32 0, i32 3
  %smax.i = call i32 @llvm.smax.i32(i32 %div105.i, i32 1) #7
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0147.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc51.i, %for.inc.i.for.body.i_crit_edge ]
  %call25.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %np.051, ptr noundef nonnull @.str.57, i32 noundef %i.0147.i, ptr noundef nonnull %pinfunc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.body.i.exit.i_crit_edge

for.body.i.exit.i_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end28.i:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %pinfunc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pinfunc.i, align 4
  %shr.i = lshr i32 %13, 8
  %and.i = and i32 %13, 255
  %14 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp24.not.i.i = icmp eq i32 %15, 0
  br i1 %cmp24.not.i.i, label %if.end28.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end28.i.stm32_pctrl_is_function_valid.exit.i_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end28.i
  %16 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pins.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.stm32_desc_pin, ptr %17, i32 %i.025.i.i
  %18 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %shr.i)
  %cmp2.not.i.i = icmp eq i32 %19, %shr.i
  br i1 %cmp2.not.i.i, label %while.cond.preheader.i.i, label %for.inc.i.i

while.cond.preheader.i.i:                         ; preds = %for.body.i.i
  %functions.le.i.i = getelementptr %struct.stm32_desc_pin, ptr %17, i32 %i.025.i.i, i32 1
  %20 = ptrtoint ptr %functions.le.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %functions.le.i.i, align 4
  %tobool.not26.i.i = icmp eq ptr %21, null
  br i1 %tobool.not26.i.i, label %while.cond.preheader.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, label %land.rhs.i.preheader.i

while.cond.preheader.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge: ; preds = %while.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i

land.rhs.i.preheader.i:                           ; preds = %while.cond.preheader.i.i
  %22 = trunc i32 %13 to i8
  br label %land.rhs.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.stm32_desc_function, ptr %func.027.i.i, i32 1
  %tobool.not.i.i = icmp eq ptr %incdec.ptr.i.i, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, label %while.cond.i.i.land.rhs.i.i_crit_edge

while.cond.i.i.land.rhs.i.i_crit_edge:            ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i

while.cond.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i.land.rhs.i.i_crit_edge, %land.rhs.i.preheader.i
  %func.027.i.i = phi ptr [ %incdec.ptr.i.i, %while.cond.i.i.land.rhs.i.i_crit_edge ], [ %21, %land.rhs.i.preheader.i ]
  %23 = ptrtoint ptr %func.027.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %func.027.i.i, align 4
  %tobool3.not.i.i = icmp eq ptr %24, null
  br i1 %tobool3.not.i.i, label %land.rhs.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, label %while.body.i.i

land.rhs.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %num.i.i = getelementptr inbounds %struct.stm32_desc_function, ptr %func.027.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %num.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %num.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %22)
  %cmp4.i.i = icmp eq i8 %26, %22
  br i1 %cmp4.i.i, label %if.end31.i, label %while.cond.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %15
  br i1 %exitcond.not.i.i, label %for.inc.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i

stm32_pctrl_is_function_valid.exit.i:             ; preds = %for.inc.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, %land.rhs.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, %while.cond.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, %while.cond.preheader.i.i.stm32_pctrl_is_function_valid.exit.i_crit_edge, %if.end28.i.stm32_pctrl_is_function_valid.exit.i_crit_edge
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.63, i32 noundef %and.i, i32 noundef %shr.i) #10
  br label %exit.i

if.end31.i:                                       ; preds = %while.body.i.i
  %29 = ptrtoint ptr %ngroups.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ngroups.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp10.not.i.i = icmp eq i32 %30, 0
  br i1 %cmp10.not.i.i, label %if.end31.i.do.end37.i_crit_edge, label %for.body.lr.ph.i107.i

if.end31.i.do.end37.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

for.body.lr.ph.i107.i:                            ; preds = %if.end31.i
  %31 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %groups.i.i, align 4
  br label %for.body.i108.i

for.body.i108.i:                                  ; preds = %for.inc.i111.i.for.body.i108.i_crit_edge, %for.body.lr.ph.i107.i
  %i.011.i.i = phi i32 [ 0, %for.body.lr.ph.i107.i ], [ %inc.i109.i, %for.inc.i111.i.for.body.i108.i_crit_edge ]
  %pin1.i.i = getelementptr %struct.stm32_pinctrl_group, ptr %32, i32 %i.011.i.i, i32 2
  %33 = ptrtoint ptr %pin1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pin1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %shr.i)
  %cmp2.i.i = icmp eq i32 %34, %shr.i
  br i1 %cmp2.i.i, label %stm32_pctrl_find_group_by_pin.exit.i, label %for.inc.i111.i

for.inc.i111.i:                                   ; preds = %for.body.i108.i
  %inc.i109.i = add nuw i32 %i.011.i.i, 1
  %exitcond.not.i110.i = icmp eq i32 %inc.i109.i, %30
  br i1 %exitcond.not.i110.i, label %for.inc.i111.i.do.end37.i_crit_edge, label %for.inc.i111.i.for.body.i108.i_crit_edge

for.inc.i111.i.for.body.i108.i_crit_edge:         ; preds = %for.inc.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i108.i

for.inc.i111.i.do.end37.i_crit_edge:              ; preds = %for.inc.i111.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

stm32_pctrl_find_group_by_pin.exit.i:             ; preds = %for.body.i108.i
  %add.ptr.le.i.i = getelementptr %struct.stm32_pinctrl_group, ptr %32, i32 %i.011.i.i
  %tobool33.not.i = icmp eq ptr %add.ptr.le.i.i, null
  br i1 %tobool33.not.i, label %stm32_pctrl_find_group_by_pin.exit.i.do.end37.i_crit_edge, label %if.end39.i

stm32_pctrl_find_group_by_pin.exit.i.do.end37.i_crit_edge: ; preds = %stm32_pctrl_find_group_by_pin.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end37.i

do.end37.i:                                       ; preds = %stm32_pctrl_find_group_by_pin.exit.i.do.end37.i_crit_edge, %for.inc.i111.i.do.end37.i_crit_edge, %if.end31.i.do.end37.i_crit_edge
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.61, i32 noundef %shr.i) #10
  br label %exit.i

if.end39.i:                                       ; preds = %stm32_pctrl_find_group_by_pin.exit.i
  %37 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_maps, align 4
  %39 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %reserved_maps, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp.i.i = icmp eq i32 %38, %40
  br i1 %cmp.i.i, label %if.end39.i.exit.i_crit_edge, label %if.end.i.i

if.end39.i.exit.i_crit_edge:                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.end.i.i:                                       ; preds = %if.end39.i
  %41 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %map, align 4
  %type.i.i = getelementptr %struct.pinctrl_map, ptr %42, i32 %38, i32 2
  %43 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %type.i.i, align 4
  %44 = ptrtoint ptr %add.ptr.le.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %add.ptr.le.i.i, align 4
  %46 = load ptr, ptr %map, align 4
  %47 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_maps, align 4
  %data.i.i = getelementptr %struct.pinctrl_map, ptr %46, i32 %48, i32 4
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %45, ptr %data.i.i, align 4
  %50 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp24.not.i.i.i = icmp eq i32 %51, 0
  br i1 %cmp24.not.i.i.i, label %if.end.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i
  %52 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pins.i.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.025.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %add.ptr.i.i.i = getelementptr %struct.stm32_desc_pin, ptr %53, i32 %i.025.i.i.i
  %54 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %shr.i)
  %cmp2.not.i.i.i = icmp eq i32 %55, %shr.i
  br i1 %cmp2.not.i.i.i, label %while.cond.preheader.i.i.i, label %for.inc.i.i.i

while.cond.preheader.i.i.i:                       ; preds = %for.body.i.i.i
  %functions.le.i.i.i = getelementptr %struct.stm32_desc_pin, ptr %53, i32 %i.025.i.i.i, i32 1
  %56 = ptrtoint ptr %functions.le.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %functions.le.i.i.i, align 4
  %tobool.not26.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not26.i.i.i, label %while.cond.preheader.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, label %while.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge

while.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  br label %land.rhs.i.i.i

while.cond.preheader.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge: ; preds = %while.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct.stm32_desc_function, ptr %func.027.i.i.i, i32 1
  %tobool.not.i.i.i = icmp eq ptr %incdec.ptr.i.i.i, null
  br i1 %tobool.not.i.i.i, label %while.cond.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, label %while.cond.i.i.i.land.rhs.i.i.i_crit_edge

while.cond.i.i.i.land.rhs.i.i.i_crit_edge:        ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i.i

while.cond.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge: ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i.i

land.rhs.i.i.i:                                   ; preds = %while.cond.i.i.i.land.rhs.i.i.i_crit_edge, %while.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge
  %func.027.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %while.cond.i.i.i.land.rhs.i.i.i_crit_edge ], [ %57, %while.cond.preheader.i.i.i.land.rhs.i.i.i_crit_edge ]
  %58 = ptrtoint ptr %func.027.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %func.027.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %59, null
  br i1 %tobool3.not.i.i.i, label %land.rhs.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, label %while.body.i.i.i

land.rhs.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i.i

while.body.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %num.i.i.i = getelementptr inbounds %struct.stm32_desc_function, ptr %func.027.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %num.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %num.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %61, i8 %22)
  %cmp4.i.i.i = icmp eq i8 %61, %22
  br i1 %cmp4.i.i.i, label %if.end43.i, label %while.cond.i.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %inc.i.i.i = add nuw i32 %i.025.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %51
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i.i

for.inc.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit.i.i

stm32_pctrl_is_function_valid.exit.i.i:           ; preds = %for.inc.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, %land.rhs.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, %while.cond.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, %while.cond.preheader.i.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge, %if.end.i.i.stm32_pctrl_is_function_valid.exit.i.i_crit_edge
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.63, i32 noundef %and.i, i32 noundef %shr.i) #10
  br label %exit.i

if.end43.i:                                       ; preds = %while.body.i.i.i
  %arrayidx4.i.i = getelementptr [18 x ptr], ptr @stm32_gpio_functions, i32 0, i32 %and.i
  %64 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx4.i.i, align 4
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 4
  %68 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %num_maps, align 4
  %function.i.i = getelementptr %struct.pinctrl_map, ptr %67, i32 %69, i32 4, i32 0, i32 1
  %70 = ptrtoint ptr %function.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %65, ptr %function.i.i, align 4
  %71 = load i32, ptr %num_maps, align 4
  %inc.i113.i = add i32 %71, 1
  store i32 %inc.i113.i, ptr %num_maps, align 4
  br i1 %tobool6.not.i, label %if.end43.i.for.inc.i_crit_edge, label %if.then45.i

if.end43.i.for.inc.i_crit_edge:                   ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then45.i:                                      ; preds = %if.end43.i
  %72 = ptrtoint ptr %add.ptr.le.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr.le.i.i, align 4
  %74 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %configs.i, align 4
  %76 = ptrtoint ptr %num_configs.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_configs.i, align 4
  %call46.i = call i32 @pinctrl_utils_add_map_configs(ptr noundef %pctldev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef %73, ptr noundef %75, i32 noundef %77, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.then45.i.for.inc.i_crit_edge, label %if.then45.i.exit.i_crit_edge

if.then45.i.exit.i_crit_edge:                     ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

if.then45.i.for.inc.i_crit_edge:                  ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then45.i.for.inc.i_crit_edge, %if.end43.i.for.inc.i_crit_edge
  %inc51.i = add nuw nsw i32 %i.0147.i, 1
  %exitcond.not.i = icmp eq i32 %inc51.i, %smax.i
  br i1 %exitcond.not.i, label %for.inc.i.exit.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.exit.i_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit.i

exit.i:                                           ; preds = %for.inc.i.exit.i_crit_edge, %if.then45.i.exit.i_crit_edge, %stm32_pctrl_is_function_valid.exit.i.i, %if.end39.i.exit.i_crit_edge, %do.end37.i, %stm32_pctrl_is_function_valid.exit.i, %for.body.i.exit.i_crit_edge, %if.end19.i.exit.i_crit_edge, %if.end5.i.exit.i_crit_edge
  %err.2.i = phi i32 [ %call20.i, %if.end19.i.exit.i_crit_edge ], [ -22, %do.end37.i ], [ -22, %if.end5.i.exit.i_crit_edge ], [ -22, %stm32_pctrl_is_function_valid.exit.i ], [ -22, %stm32_pctrl_is_function_valid.exit.i.i ], [ -28, %if.end39.i.exit.i_crit_edge ], [ 0, %for.inc.i.exit.i_crit_edge ], [ %call46.i, %if.then45.i.exit.i_crit_edge ], [ %call25.i, %for.body.i.exit.i_crit_edge ]
  %78 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %configs.i, align 4
  call void @kfree(ptr noundef %79) #7
  br label %stm32_pctrl_dt_subnode_to_map.exit

stm32_pctrl_dt_subnode_to_map.exit:               ; preds = %exit.i, %if.end.i.stm32_pctrl_dt_subnode_to_map.exit_crit_edge
  %retval.0.i = phi i32 [ %err.2.i, %exit.i ], [ %call2.i, %if.end.i.stm32_pctrl_dt_subnode_to_map.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %configs.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinfunc.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp2 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp2, label %stm32_pctrl_dt_subnode_to_map.exit.if.then_crit_edge, label %for.inc

stm32_pctrl_dt_subnode_to_map.exit.if.then_crit_edge: ; preds = %stm32_pctrl_dt_subnode_to_map.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %stm32_pctrl_dt_subnode_to_map.exit.if.then_crit_edge, %stm32_pctrl_dt_subnode_to_map.exit.thread
  %retval.0.i18 = phi i32 [ -22, %stm32_pctrl_dt_subnode_to_map.exit.thread ], [ %retval.0.i, %stm32_pctrl_dt_subnode_to_map.exit.if.then_crit_edge ]
  %80 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %map, align 4
  %82 = ptrtoint ptr %num_maps to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_maps, align 4
  call void @pinctrl_utils_free_map(ptr noundef %pctldev, ptr noundef %81, i32 noundef %83) #7
  call void @of_node_put(ptr noundef nonnull %np.051) #7
  br label %cleanup

for.inc:                                          ; preds = %stm32_pctrl_dt_subnode_to_map.exit
  %call3 = call ptr @of_get_next_child(ptr noundef %np_config, ptr noundef nonnull %np.051) #7
  %cmp.not = icmp eq ptr %call3, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i18, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_parse_dt_config(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_configs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_pmx_get_funcs_cnt(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @stm32_pmx_get_func_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x ptr], ptr @stm32_gpio_functions, i32 0, i32 %selector
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pmx_get_func_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %grp_names = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %grp_names to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grp_names, align 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %groups, align 4
  %ngroups = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ngroups, align 4
  %5 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_pmx_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %groups = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin1 = getelementptr %struct.stm32_pinctrl_group, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pin1, align 4
  %npins.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 14
  %4 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24.not.i = icmp eq i32 %5, 0
  br i1 %cmp24.not.i, label %entry.stm32_pctrl_is_function_valid.exit_crit_edge, label %for.body.lr.ph.i

entry.stm32_pctrl_is_function_valid.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %pins.i = getelementptr inbounds %struct.stm32_pinctrl, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.stm32_desc_pin, ptr %7, i32 %i.025.i
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %3)
  %cmp2.not.i = icmp eq i32 %9, %3
  br i1 %cmp2.not.i, label %while.cond.preheader.i, label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body.i
  %functions.le.i = getelementptr %struct.stm32_desc_pin, ptr %7, i32 %i.025.i, i32 1
  %10 = ptrtoint ptr %functions.le.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %functions.le.i, align 4
  %tobool.not26.i = icmp eq ptr %11, null
  br i1 %tobool.not26.i, label %while.cond.preheader.i.stm32_pctrl_is_function_valid.exit_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.stm32_pctrl_is_function_valid.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.stm32_desc_function, ptr %func.027.i, i32 1
  %tobool.not.i = icmp eq ptr %incdec.ptr.i, null
  br i1 %tobool.not.i, label %while.cond.i.stm32_pctrl_is_function_valid.exit_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

while.cond.i.stm32_pctrl_is_function_valid.exit_crit_edge: ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %func.027.i = phi ptr [ %incdec.ptr.i, %while.cond.i.land.rhs.i_crit_edge ], [ %11, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %12 = ptrtoint ptr %func.027.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %func.027.i, align 4
  %tobool3.not.i = icmp eq ptr %13, null
  br i1 %tobool3.not.i, label %land.rhs.i.stm32_pctrl_is_function_valid.exit_crit_edge, label %while.body.i

land.rhs.i.stm32_pctrl_is_function_valid.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit

while.body.i:                                     ; preds = %land.rhs.i
  %num.i = getelementptr inbounds %struct.stm32_desc_function, ptr %func.027.i, i32 0, i32 1
  %14 = ptrtoint ptr %num.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %num.i, align 4
  %conv.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %function)
  %cmp4.i = icmp eq i32 %conv.i, %function
  br i1 %cmp4.i, label %if.end, label %while.cond.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.stm32_pctrl_is_function_valid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.stm32_pctrl_is_function_valid.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_pctrl_is_function_valid.exit

stm32_pctrl_is_function_valid.exit:               ; preds = %for.inc.i.stm32_pctrl_is_function_valid.exit_crit_edge, %land.rhs.i.stm32_pctrl_is_function_valid.exit_crit_edge, %while.cond.i.stm32_pctrl_is_function_valid.exit_crit_edge, %while.cond.preheader.i.stm32_pctrl_is_function_valid.exit_crit_edge, %entry.stm32_pctrl_is_function_valid.exit_crit_edge
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.63, i32 noundef %function, i32 noundef %3) #10
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %18 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pin1, align 4
  %call4 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %pctldev, i32 noundef %19) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %gc = getelementptr inbounds %struct.pinctrl_gpio_range, ptr %call4, i32 0, i32 7
  %22 = ptrtoint ptr %gc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gc, align 4
  %call8 = tail call ptr @gpiochip_get_data(ptr noundef %23) #7
  %24 = ptrtoint ptr %pin1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pin1, align 4
  %rem.i = srem i32 %25, 16
  %switch.tableidx = add i32 %function, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %26 = icmp ult i32 %switch.tableidx, 17
  br i1 %26, label %switch.lookup, label %if.end7.stm32_gpio_get_mode.exit_crit_edge

if.end7.stm32_gpio_get_mode.exit_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_gpio_get_mode.exit

switch.lookup:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.stm32_pmx_set_mux, i32 0, i32 %switch.tableidx
  %27 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %stm32_gpio_get_mode.exit

stm32_gpio_get_mode.exit:                         ; preds = %switch.lookup, %if.end7.stm32_gpio_get_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end7.stm32_gpio_get_mode.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %function.off.i = add i32 %function, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %function.off.i)
  %switch.i = icmp ult i32 %function.off.i, 16
  %spec.select.i = select i1 %switch.i, i32 %function.off.i, i32 0
  %call13 = tail call fastcc i32 @stm32_pmx_set_mode(ptr noundef %call8, i32 noundef %rem.i, i32 noundef %retval.0.i, i32 noundef %spec.select.i)
  br label %cleanup

cleanup:                                          ; preds = %stm32_gpio_get_mode.exit, %do.end, %stm32_pctrl_is_function_valid.exit
  %retval.0 = phi i32 [ %call13, %stm32_gpio_get_mode.exit ], [ -22, %do.end ], [ -22, %stm32_pctrl_is_function_valid.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__of_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_request(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %bank_nr = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %bank_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_nr, align 4
  %mul = shl i32 %5, 4
  %add = add i32 %mul, %offset
  %pctl_dev = getelementptr inbounds %struct.stm32_pinctrl, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pctl_dev, align 4
  %call2 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %7, i32 noundef %add) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.95, i32 noundef %add) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base, align 4
  %add3 = add i32 %11, %offset
  %call4 = tail call i32 @pinctrl_gpio_request(i32 noundef %add3) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_gpio_free(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  tail call void @pinctrl_gpio_free(i32 noundef %add) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %rem.i = srem i32 %offset, 16
  %rem.i9.lhs.trunc = trunc i32 %rem.i to i8
  %div.i13 = sdiv i8 %rem.i9.lhs.trunc, 8
  %0 = mul i8 %div.i13, 8
  %rem.i912.decomposed = sub i8 %rem.i9.lhs.trunc, %0
  %rem.i9.sext = sext i8 %rem.i912.decomposed to i32
  %mul.i = shl nsw i32 %rem.i9.sext, 2
  %div.i.sext = sext i8 %div.i13 to i32
  %mul1.i = shl nsw i32 %div.i.sext, 2
  %add.i = add nsw i32 %mul1.i, 32
  %clk.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %2) #7
  %lock.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 3
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 %add.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !239
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #7
  %shl.neg.i = shl nsw i32 -1, %mul.i
  %sub11.i = sub nsw i32 28, %mul.i
  %shr.i = lshr i32 -1, %sub11.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %and13.i = and i32 %and.i, %6
  %shr14.i = lshr i32 %and13.i, %mul.i
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !239
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %mul20.i = shl nsw i32 %rem.i, 1
  %shl21.neg.i = shl nsw i32 -1, %mul20.i
  %sub26.i = sub nsw i32 30, %mul20.i
  %shr27.i = lshr i32 -1, %sub26.i
  %and28.i = and i32 %shr27.i, %shl21.neg.i
  %and30.i = and i32 %and28.i, %10
  %shr32.i = lshr i32 %and30.i, %mul20.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #7
  %11 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr14.i)
  %cmp = icmp eq i32 %shr14.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr32.i)
  %switch.selectcmp = icmp eq i32 %shr32.i, 1
  %switch.select = select i1 %switch.selectcmp, i32 0, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shr32.i)
  %switch.selectcmp14 = icmp eq i32 %shr32.i, 0
  %switch.select15 = select i1 %switch.selectcmp14, i32 1, i32 %switch.select
  %ret.0 = select i1 %cmp, i32 %switch.select15, i32 -22
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %arrayidx.i.i = getelementptr %struct.stm32_gpio_bank, ptr %call, i32 0, i32 10, i32 %offset
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %1, -2049
  %shl.i.i = shl i32 %value, 11
  %or.i.i = or i32 %and.i.i, %shl.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %add.i = add i32 %offset, 16
  %spec.select.i = select i1 %tobool.not.i, i32 %add.i, i32 %offset
  %clk.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #7
  %shl.i = shl nuw i32 1, %spec.select.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !244
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %add = add i32 %10, %offset
  %call1 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %clk = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %1) #7
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 16
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !239
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %6 = lshr i32 %5, %offset
  %7 = and i32 %6, 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %arrayidx.i.i = getelementptr %struct.stm32_gpio_bank, ptr %call, i32 0, i32 10, i32 %offset
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %1, -2049
  %shl.i.i = shl i32 %value, 11
  %or.i.i = or i32 %and.i.i, %shl.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %add.i = add i32 %offset, 16
  %spec.select.i = select i1 %tobool.not.i, i32 %add.i, i32 %offset
  %clk.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk.i, align 4
  %call.i = tail call i32 @clk_enable(ptr noundef %3) #7
  %shl.i = shl nuw i32 1, %spec.select.i
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !244
  %7 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %8) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_to_irq(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  %fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec) #7
  %0 = getelementptr inbounds i8, ptr %fwspec, i32 16
  %1 = call ptr @memset(ptr %0, i32 255, i32 56)
  %fwnode = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fwnode, align 4
  %4 = ptrtoint ptr %fwspec to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %5 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %param_count, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %offset, ptr %param, align 4
  %arrayidx3 = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %arrayidx3, align 4
  %call4 = call i32 @irq_create_fwspec_mapping(ptr noundef nonnull %fwspec) #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec) #7
  ret i32 %call4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_fwspec_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_domain_alloc(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #7
  %2 = getelementptr inbounds i8, ptr %parent_fwspec, i32 16
  %3 = call ptr @memset(ptr %2, i32 255, i32 56)
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param, align 4
  %irqmux_lock = getelementptr inbounds %struct.stm32_pinctrl, ptr %7, i32 0, i32 17
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqmux_lock) #7
  %irqmux_map = getelementptr inbounds %struct.stm32_pinctrl, ptr %7, i32 0, i32 16
  %10 = ptrtoint ptr %irqmux_map to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %irqmux_map, align 4
  %conv6 = zext i16 %11 to i32
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %conv6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end17, label %if.end

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.97, i32 noundef %9) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqmux_lock, i32 noundef %call3) #7
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = trunc i32 %shl to i16
  %conv13 = or i16 %11, %14
  %15 = ptrtoint ptr %irqmux_map to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv13, ptr %irqmux_map, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqmux_lock, i32 noundef %call3) #7
  %parent18 = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 9
  %16 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %parent18, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fwnode, align 4
  %20 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %21 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %param_count, align 4
  %22 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %param, align 4
  %param22 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %24 = ptrtoint ptr %param22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %param22, align 4
  %arrayidx25 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %25 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx25, align 4
  %arrayidx27 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %arrayidx27, align 4
  %call28 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %d, i32 noundef %virq, i32 noundef %9, ptr noundef nonnull @stm32_gpio_irq_chip, ptr noundef %1) #7
  %call29 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end
  %retval.0 = phi i32 [ %call29, %if.end17 ], [ -16, %if.end ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_gpio_domain_free(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @irq_domain_get_irq_data(ptr noundef %d, i32 noundef %virq) #7
  %hwirq2 = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq2, align 4
  tail call void @irq_domain_free_irqs_common(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs) #7
  %irqmux_lock = getelementptr inbounds %struct.stm32_pinctrl, ptr %5, i32 0, i32 17
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irqmux_lock) #7
  %shl = shl nuw i32 1, %7
  %irqmux_map = getelementptr inbounds %struct.stm32_pinctrl, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %irqmux_map to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %irqmux_map, align 4
  %10 = trunc i32 %shl to i16
  %11 = xor i16 %10, -1
  %conv9 = and i16 %9, %11
  store i16 %conv9, ptr %irqmux_map, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irqmux_lock, i32 noundef %call5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_domain_activate(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %irq_data, i1 noundef zeroext %reserve) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %1, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %hwlock = getelementptr inbounds %struct.stm32_pinctrl, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hwlock, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @__hwspin_lock_timeout(ptr noundef nonnull %7, i32 noundef 1000, i32 noundef 4, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.stm32_pinctrl, ptr %5, i32 0, i32 11, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %bank_ioport_nr = getelementptr inbounds %struct.stm32_gpio_bank, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %bank_ioport_nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bank_ioport_nr, align 4
  %call.i23 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %16 = ptrtoint ptr %hwlock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hwlock, align 4
  %tobool8.not = icmp eq ptr %17, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.then9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__hwspin_unlock(ptr noundef nonnull %17, i32 noundef 4, ptr noundef null) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end5.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.then9 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stm32_gpio_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %3)
  %cmp1 = icmp ugt i32 %3, 15
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %hwirq, align 4
  %arrayidx5 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx5, align 4
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_gpio_irq_unmask(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #7
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data.i, align 4
  %gpio_chip.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip.i) #7
  %clk.i.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i.i, align 4
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %7) #7
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !239
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  %14 = shl nuw i32 1, %5
  %15 = and i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %switch.not.not.i = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_gpio_bank, ptr %3, i32 0, i32 11, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  br i1 %switch.not.not.i, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp2.i = icmp eq i8 %19, 8
  br i1 %cmp2.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.stm32_gpio_irq_trigger.exit_crit_edge

land.lhs.true.i.stm32_gpio_irq_trigger.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_gpio_irq_trigger.exit

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true6.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp11.i = icmp eq i8 %19, 4
  br i1 %cmp11.i, label %land.lhs.true6.i.if.then.i_crit_edge, label %land.lhs.true6.i.stm32_gpio_irq_trigger.exit_crit_edge

land.lhs.true6.i.stm32_gpio_irq_trigger.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_gpio_irq_trigger.exit

land.lhs.true6.i.if.then.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true6.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call13.i = tail call i32 @irq_chip_retrigger_hierarchy(ptr noundef %d) #7
  br label %stm32_gpio_irq_trigger.exit

stm32_gpio_irq_trigger.exit:                      ; preds = %if.then.i, %land.lhs.true6.i.stm32_gpio_irq_trigger.exit_crit_edge, %land.lhs.true.i.stm32_gpio_irq_trigger.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_gpio_irq_eoi(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_chip_eoi_parent(ptr noundef %d) #7
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data.i, align 4
  %gpio_chip.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip.i) #7
  %clk.i.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %call.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk.i.i, align 4
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %7) #7
  %8 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !239
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  %12 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk.i.i, align 4
  tail call void @clk_disable(ptr noundef %13) #7
  %14 = shl nuw i32 1, %5
  %15 = and i32 %11, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %switch.not.not.i = icmp eq i32 %15, 0
  %16 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq.i, align 4
  %arrayidx.i = getelementptr %struct.stm32_gpio_bank, ptr %3, i32 0, i32 11, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  br i1 %switch.not.not.i, label %land.lhs.true.i, label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %19)
  %cmp2.i = icmp eq i8 %19, 8
  br i1 %cmp2.i, label %land.lhs.true.i.if.then.i_crit_edge, label %land.lhs.true.i.stm32_gpio_irq_trigger.exit_crit_edge

land.lhs.true.i.stm32_gpio_irq_trigger.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_gpio_irq_trigger.exit

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

land.lhs.true6.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %19)
  %cmp11.i = icmp eq i8 %19, 4
  br i1 %cmp11.i, label %land.lhs.true6.i.if.then.i_crit_edge, label %land.lhs.true6.i.stm32_gpio_irq_trigger.exit_crit_edge

land.lhs.true6.i.stm32_gpio_irq_trigger.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stm32_gpio_irq_trigger.exit

land.lhs.true6.i.if.then.i_crit_edge:             ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true6.i.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %call13.i = tail call i32 @irq_chip_retrigger_hierarchy(ptr noundef %d) #7
  br label %stm32_gpio_irq_trigger.exit

stm32_gpio_irq_trigger.exit:                      ; preds = %if.then.i, %land.lhs.true6.i.stm32_gpio_irq_trigger.exit_crit_edge, %land.lhs.true.i.stm32_gpio_irq_trigger.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_set_type(ptr noundef %d, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.stm32_gpio_set_type, i32 0, i32 %switch.tableidx
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conv = trunc i32 %type to i8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.stm32_gpio_bank, ptr %3, i32 0, i32 11, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  %call = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %switch.load) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_gpio_irq_request_resources(ptr nocapture noundef readonly %irq_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %parent = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %base.i = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 4, i32 19
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i, align 4
  %add.i = add i32 %11, %9
  %call.i = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_chip = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwirq, align 4
  %call5 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %gpio_chip, i32 noundef %13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  %16 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.100, i32 noundef %17) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_gpio_irq_release_resources(ptr nocapture noundef readonly %irq_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 5
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %gpio_chip = getelementptr inbounds %struct.stm32_gpio_bank, ptr %3, i32 0, i32 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %gpio_chip, i32 noundef %5) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @radix_tree_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !177, !178, !180, !181, !182, !183, !185, !187, !189, !191, !192, !194, !195, !197, !198, !199, !201, !202, !203, !205, !207, !208, !209, !210, !212, !214, !215, !216, !217, !219, !221, !223, !224, !225, !226, !228, !229}
!llvm.module.flags = !{!230, !231, !232, !233, !234, !235, !236, !237}
!llvm.ident = !{!238}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1435, i32 28}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1436, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @stm32_pctl_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @stm32_pctl_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @stm32_pctl_probe.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1460, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1466, i32 32}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1467, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @stm32_pctl_probe.__UNIQUE_ID_ddebug226, !16, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1480, i32 3}
!21 = !{ptr @stm32_pctl_probe._entry.10, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @stm32_pctl_probe._entry_ptr.12, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1512, i32 3}
!25 = !{ptr @stm32_pctl_probe._entry.13, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @stm32_pctl_probe._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1517, i32 36}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1521, i32 3}
!31 = !{ptr @stm32_pctl_probe._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @stm32_pctl_probe._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1544, i32 6}
!35 = !{ptr @stm32_pctl_probe._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @stm32_pctl_probe._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1566, i32 2}
!39 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @stm32_pctl_probe._entry.23, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @stm32_pctl_probe._entry_ptr.26, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.27, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1308, i32 28}
!44 = !{ptr @.str.28, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1332, i32 53}
!46 = !{ptr @.str.29, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1355, i32 3}
!48 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @stm32_pctrl_dt_setup_irq.__UNIQUE_ID_ddebug225, !47, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!50 = !{ptr @stm32_pconf_ops, !51, !"stm32_pconf_ops", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1211, i32 33}
!52 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1060, i32 3}
!54 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @stm32_pconf_parse_conf._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @stm32_pconf_parse_conf._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 877, i32 4}
!59 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stm32_pconf_set_driving._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @stm32_pconf_set_driving._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 932, i32 4}
!64 = !{ptr @stm32_pconf_set_speed._entry, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @stm32_pconf_set_speed._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 987, i32 4}
!68 = !{ptr @stm32_pconf_set_bias._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @stm32_pconf_set_bias._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 760, i32 4}
!72 = !{ptr @stm32_pmx_set_mode._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @stm32_pmx_set_mode._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1155, i32 4}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1155, i32 13}
!78 = !{ptr @.str.40, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1155, i32 23}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1155, i32 36}
!82 = !{ptr @stm32_pconf_dbg_show.modes, !83, !"modes", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1154, i32 28}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1157, i32 4}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1157, i32 11}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1157, i32 21}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1157, i32 29}
!92 = !{ptr @stm32_pconf_dbg_show.speeds, !93, !"speeds", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1156, i32 28}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1159, i32 4}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1159, i32 16}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1159, i32 27}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1159, i32 40}
!102 = !{ptr @stm32_pconf_dbg_show.biasing, !103, !"biasing", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1158, i32 28}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1172, i32 16}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1178, i32 17}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1188, i32 17}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1190, i32 15}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1190, i32 30}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1192, i32 22}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1199, i32 17}
!118 = !{ptr @stm32_pctrl_ops, !119, !"stm32_pctrl_ops", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 708, i32 33}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 578, i32 32}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 580, i32 3}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @stm32_pctrl_dt_subnode_to_map._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @stm32_pctrl_dt_subnode_to_map._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 629, i32 4}
!129 = !{ptr @stm32_pctrl_dt_subnode_to_map._entry.60, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @stm32_pctrl_dt_subnode_to_map._entry_ptr.62, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 535, i32 2}
!133 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @stm32_pctrl_is_function_valid._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @stm32_pctrl_is_function_valid._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 70, i32 2}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 70, i32 10}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 70, i32 17}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 71, i32 2}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 71, i32 9}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 71, i32 16}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 72, i32 2}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 72, i32 9}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 72, i32 16}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 73, i32 2}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 73, i32 9}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 73, i32 16}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 74, i32 2}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 74, i32 10}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 74, i32 18}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 75, i32 2}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 75, i32 10}
!170 = !{ptr @stm32_gpio_functions, !171, !"stm32_gpio_functions", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 69, i32 27}
!172 = !{ptr @stm32_pmx_ops, !173, !"stm32_pmx_ops", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 851, i32 32}
!174 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 828, i32 3}
!176 = !{ptr @stm32_pmx_set_mux._entry, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @stm32_pmx_set_mux._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1242, i32 3}
!180 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @stm32_gpiolib_register_bank._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @stm32_gpiolib_register_bank._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1248, i32 30}
!185 = !{ptr @.str.86, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1250, i32 44}
!187 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1271, i32 31}
!189 = !{ptr @stm32_gpiolib_register_bank.__key, !190, !"__key", i1 false, i1 false}
!190 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1281, i32 2}
!191 = !{ptr @.str.88, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @stm32_gpiolib_register_bank.lock_key, !193, !"lock_key", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1293, i32 8}
!194 = !{ptr @stm32_gpiolib_register_bank.request_key, !193, !"request_key", i1 false, i1 false}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1295, i32 3}
!197 = !{ptr @stm32_gpiolib_register_bank._entry.89, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @stm32_gpiolib_register_bank._entry_ptr.91, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 1299, i32 2}
!201 = !{ptr @stm32_gpiolib_register_bank._entry.92, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @stm32_gpiolib_register_bank._entry_ptr.94, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @stm32_gpio_template, !204, !"stm32_gpio_template", i1 false, i1 false}
!204 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 297, i32 31}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 216, i32 3}
!207 = !{ptr @.str.96, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @stm32_gpio_request._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @stm32_gpio_request._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @stm32_gpio_domain_ops, !211, !"stm32_gpio_domain_ops", i1 false, i1 false}
!211 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 491, i32 36}
!212 = !{ptr @.str.97, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 455, i32 3}
!214 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @stm32_gpio_domain_alloc._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @stm32_gpio_domain_alloc._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 387, i32 11}
!219 = !{ptr @stm32_gpio_irq_chip, !220, !"stm32_gpio_irq_chip", i1 false, i1 false}
!220 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 386, i32 24}
!221 = !{ptr @.str.100, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 365, i32 3}
!223 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @stm32_gpio_irq_request_resources._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @stm32_gpio_irq_request_resources._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/pinctrl/stm32/pinctrl-stm32.c", i32 423, i32 4}
!228 = !{ptr @stm32_gpio_domain_activate._entry, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @stm32_gpio_domain_activate._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{i32 1, !"wchar_size", i32 2}
!231 = !{i32 1, !"min_enum_size", i32 4}
!232 = !{i32 8, !"branch-target-enforcement", i32 0}
!233 = !{i32 8, !"sign-return-address", i32 0}
!234 = !{i32 8, !"sign-return-address-all", i32 0}
!235 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!236 = !{i32 7, !"uwtable", i32 1}
!237 = !{i32 7, !"frame-pointer", i32 2}
!238 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!239 = !{i64 4909810}
!240 = !{i64 2148760508, i64 2148760513, i64 2148760526, i64 2148760570, i64 2148760604, i64 2148760625}
!241 = !{!"branch_weights", i32 1, i32 2000}
!242 = !{!"auto-init"}
!243 = !{i32 0, i32 33}
!244 = !{i64 4909392}
