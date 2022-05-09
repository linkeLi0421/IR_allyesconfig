; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-equilibrium.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-equilibrium.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.eqbr_pinctrl_drv_data = type { ptr, %struct.pinctrl_desc, ptr, ptr, ptr, i32, ptr, i32, %struct.raw_spinlock }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.eqbr_gpio_ctrl = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip, ptr, i32, %struct.raw_spinlock }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.eqbr_pin_bank = type { ptr, i32, i32, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.eqbr_pmx_func = type { ptr, ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.group_desc = type { ptr, ptr, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_pinctrl_equilibrium__228_957_eqbr_pinctrl_driver_init6 = internal global ptr @eqbr_pinctrl_driver_init, section ".initcall6.init", align 4
@eqbr_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @eqbr_pinctrl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @eqbr_pinctrl_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_eqbr_pinctrl_driver_exit = internal global ptr @eqbr_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [98 x i8] c"pinctrl_equilibrium.author=Zhu Yixin <yixin.zhu@intel.com>, Rahul Tanwar <rahul.tanwar@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [73 x i8] c"pinctrl_equilibrium.description=Pinctrl Driver for LGM SoC (Equilibrium)\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [61 x i8] c"pinctrl_equilibrium.file=drivers/pinctrl/pinctrl-equilibrium\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [35 x i8] c"pinctrl_equilibrium.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eqbr-pinctrl\00", [19 x i8] zeroinitializer }, align 32
@eqbr_pinctrl_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-io\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@pinbank_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 875, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NO pin bank available!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pinbank_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/pinctrl-equilibrium.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pinbank_probe._entry_ptr = internal global ptr @pinbank_probe._entry, section ".printk_index", align 4
@pinbank_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 0, i8 -34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pinctrl_equilibrium\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found %d gpio controller!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@pinbank_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 842, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"gpio-range not available!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pinbank_init\00", [19 x i8] zeroinitializer }, align 32
@pinbank_init._entry_ptr = internal global ptr @pinbank_init._entry, section ".printk_index", align 4
@pinbank_init.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.4, ptr @.str.12, i8 0, i8 -43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"pinbank id: %d, reg: %px, pinbase: %u, pin number: %u, pinmap: 0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@eqbr_pctl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pinctrl_generic_get_group_count, ptr @pinctrl_generic_get_group_name, ptr @pinctrl_generic_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@eqbr_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pinmux_generic_get_function_count, ptr @pinmux_generic_get_function_name, ptr @pinmux_generic_get_function_groups, ptr @eqbr_pinmux_set_mux, ptr @eqbr_pinmux_gpio_request, ptr null, ptr null, i8 1 }, [56 x i8] zeroinitializer }, align 32
@eqbr_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @eqbr_pinconf_get, ptr @eqbr_pinconf_set, ptr @eqbr_pinconf_group_get, ptr @eqbr_pinconf_group_set, ptr null, ptr null, ptr @pinconf_generic_dump_config }, [32 x i8] zeroinitializer }, align 32
@pinctrl_reg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&drvdata->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"io-%d\00", [26 x i8] zeroinitializer }, align 32
@pinctrl_reg.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.15, ptr @.str.4, ptr @.str.16, i8 0, i8 -54, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pinctrl_reg\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pinctrl total pin number: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@pinctrl_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.4, i32 817, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to build groups\0A\00", [40 x i8] zeroinitializer }, align 32
@pinctrl_reg._entry_ptr = internal global ptr @pinctrl_reg._entry, section ".printk_index", align 4
@pinctrl_reg._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.15, ptr @.str.4, i32 823, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to build functions\0A\00", [37 x i8] zeroinitializer }, align 32
@pinctrl_reg._entry_ptr.20 = internal global ptr @pinctrl_reg._entry.18, section ".printk_index", align 4
@eqbr_set_pin_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't find pin bank for pin %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eqbr_set_pin_mux\00", [47 x i8] zeroinitializer }, align 32
@eqbr_set_pin_mux._entry_ptr = internal global ptr @eqbr_set_pin_mux._entry, section ".printk_index", align 4
@eqbr_set_pin_mux._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.4, i32 301, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"PIN: %u is not valid, pinbase: %u, bitmap: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@eqbr_set_pin_mux._entry_ptr.25 = internal global ptr @eqbr_set_pin_mux._entry.23, section ".printk_index", align 4
@eqbr_pinconf_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.26, ptr @.str.4, i32 389, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eqbr_pinconf_get\00", [47 x i8] zeroinitializer }, align 32
@eqbr_pinconf_get._entry_ptr = internal global ptr @eqbr_pinconf_get._entry, section ".printk_index", align 4
@eqbr_pinconf_get._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.26, ptr @.str.4, i32 398, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@eqbr_pinconf_get._entry_ptr.28 = internal global ptr @eqbr_pinconf_get._entry.27, section ".printk_index", align 4
@eqbr_pinconf_get._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.26, ptr @.str.4, i32 423, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Failed to find gpio via bank pinbase: %u, pin: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@eqbr_pinconf_get._entry_ptr.31 = internal global ptr @eqbr_pinconf_get._entry.29, section ".printk_index", align 4
@eqbr_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.32, ptr @.str.4, i32 460, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"eqbr_pinconf_set\00", [47 x i8] zeroinitializer }, align 32
@eqbr_pinconf_set._entry_ptr = internal global ptr @eqbr_pinconf_set._entry, section ".printk_index", align 4
@eqbr_pinconf_set._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.4, i32 492, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@eqbr_pinconf_set._entry_ptr.34 = internal global ptr @eqbr_pinconf_set._entry.33, section ".printk_index", align 4
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"groups\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pins\00", [27 x i8] zeroinitializer }, align 32
@eqbr_build_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 715, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No pins in the group: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"eqbr_build_groups\00", [46 x i8] zeroinitializer }, align 32
@eqbr_build_groups._entry_ptr = internal global ptr @eqbr_build_groups._entry, section ".printk_index", align 4
@eqbr_build_groups._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 737, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Group %s: Read intel pins id failed\0A\00", [59 x i8] zeroinitializer }, align 32
@eqbr_build_groups._entry_ptr.41 = internal global ptr @eqbr_build_groups._entry.39, section ".printk_index", align 4
@eqbr_build_groups._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.4, i32 743, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Group %s: Invalid pin ID, idx: %d, pin %u\0A\00", [53 x i8] zeroinitializer }, align 32
@eqbr_build_groups._entry_ptr.44 = internal global ptr @eqbr_build_groups._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pinmux\00", [25 x i8] zeroinitializer }, align 32
@eqbr_build_groups._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.38, ptr @.str.4, i32 750, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Group %s: Read intel pinmux id failed\0A\00", [57 x i8] zeroinitializer }, align 32
@eqbr_build_groups._entry_ptr.48 = internal global ptr @eqbr_build_groups._entry.46, section ".printk_index", align 4
@eqbr_build_groups._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.38, ptr @.str.4, i32 761, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to register group %s\0A\00", [35 x i8] zeroinitializer }, align 32
@eqbr_build_groups._entry_ptr.51 = internal global ptr @eqbr_build_groups._entry.49, section ".printk_index", align 4
@eqbr_build_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.4, i32 690, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register function %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"eqbr_build_functions\00", [43 x i8] zeroinitializer }, align 32
@eqbr_build_functions._entry_ptr = internal global ptr @eqbr_build_functions._entry, section ".printk_index", align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@funcs_utils.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.55, ptr @.str.4, ptr @.str.56, i8 0, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"funcs_utils\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Group %s: not function binded!\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpiochip%d\00", [21 x i8] zeroinitializer }, align 32
@gpiolib_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 219, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to get GPIO register address\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpiolib_reg\00", [20 x i8] zeroinitializer }, align 32
@gpiolib_reg._entry_ptr = internal global ptr @gpiolib_reg._entry, section ".printk_index", align 4
@gpiolib_reg._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 230, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to parse and map irq\0A\00", [63 x i8] zeroinitializer }, align 32
@gpiolib_reg._entry_ptr.62 = internal global ptr @gpiolib_reg._entry.60, section ".printk_index", align 4
@gpiolib_reg.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&gctrl->lock\00", [19 x i8] zeroinitializer }, align 32
@gpiolib_reg._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.4, i32 242, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to init generic GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@gpiolib_reg._entry_ptr.66 = internal global ptr @gpiolib_reg._entry.64, section ".printk_index", align 4
@gpiolib_reg.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpiolib_reg.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"interrupt-controller\00", [43 x i8] zeroinitializer }, align 32
@gpiochip_setup.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.68, ptr @.str.4, ptr @.str.69, i8 0, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gpiochip_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"gc %s: doesn't act as interrupt controller!\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio_irq\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 5, i64 6, i64 9, i64 18, i64 24]
@__sancov_gen_cov_switch_values.71 = internal global [8 x i64] [i64 6, i64 8, i64 3, i64 5, i64 6, i64 9, i64 18, i64 24]
@__sancov_gen_cov_switch_values.72 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.73 = private unnamed_addr constant [20 x i8] c"eqbr_pinctrl_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 949, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 952, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"eqbr_pinctrl_dt_match\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 943, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 869, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 875, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 888, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 840, i32 45 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 842, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 852, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"eqbr_pctl_ops\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 274, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [16 x i8] c"eqbr_pinmux_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 344, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"eqbr_pinconf_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 555, i32 33 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 788, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 801, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 808, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 817, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 823, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 292, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 299, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 389, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 396, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 422, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 459, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 491, i32 5 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 709, i32 31 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 713, i32 52 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 715, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 736, i32 5 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 742, i32 5 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 748, i32 39 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 749, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 761, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 689, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 598, i32 35 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 600, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 214, i32 49 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 219, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 229, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 233, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 242, i32 4 }
@___asan_gen_.289 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 250, i32 9 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 174, i32 42 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 175, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.305 = private constant [41 x i8] c"../drivers/pinctrl/pinctrl-equilibrium.c\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.305, i32 180, i32 19 }
@llvm.compiler.used = appending global [105 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_eqbr_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_equilibrium__228_957_eqbr_pinctrl_driver_init6, ptr @eqbr_build_functions._entry, ptr @eqbr_build_functions._entry_ptr, ptr @eqbr_build_groups._entry, ptr @eqbr_build_groups._entry.39, ptr @eqbr_build_groups._entry.42, ptr @eqbr_build_groups._entry.46, ptr @eqbr_build_groups._entry.49, ptr @eqbr_build_groups._entry_ptr, ptr @eqbr_build_groups._entry_ptr.41, ptr @eqbr_build_groups._entry_ptr.44, ptr @eqbr_build_groups._entry_ptr.48, ptr @eqbr_build_groups._entry_ptr.51, ptr @eqbr_pinconf_get._entry, ptr @eqbr_pinconf_get._entry.27, ptr @eqbr_pinconf_get._entry.29, ptr @eqbr_pinconf_get._entry_ptr, ptr @eqbr_pinconf_get._entry_ptr.28, ptr @eqbr_pinconf_get._entry_ptr.31, ptr @eqbr_pinconf_set._entry, ptr @eqbr_pinconf_set._entry.33, ptr @eqbr_pinconf_set._entry_ptr, ptr @eqbr_pinconf_set._entry_ptr.34, ptr @eqbr_pinctrl_driver_exit, ptr @eqbr_set_pin_mux._entry, ptr @eqbr_set_pin_mux._entry.23, ptr @eqbr_set_pin_mux._entry_ptr, ptr @eqbr_set_pin_mux._entry_ptr.25, ptr @gpiolib_reg._entry, ptr @gpiolib_reg._entry.60, ptr @gpiolib_reg._entry.64, ptr @gpiolib_reg._entry_ptr, ptr @gpiolib_reg._entry_ptr.62, ptr @gpiolib_reg._entry_ptr.66, ptr @pinbank_init._entry, ptr @pinbank_init._entry_ptr, ptr @pinbank_probe._entry, ptr @pinbank_probe._entry_ptr, ptr @pinctrl_reg._entry, ptr @pinctrl_reg._entry.18, ptr @pinctrl_reg._entry_ptr, ptr @pinctrl_reg._entry_ptr.20, ptr @eqbr_pinctrl_driver, ptr @.str, ptr @eqbr_pinctrl_dt_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @eqbr_pctl_ops, ptr @eqbr_pinmux_ops, ptr @eqbr_pinconf_ops, ptr @pinctrl_reg.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @gpiolib_reg.__key, ptr @.str.63, ptr @.str.65, ptr @gpiolib_reg.lock_key, ptr @gpiolib_reg.request_key, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [78 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinctrl_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinbank_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinbank_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pctl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_reg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pinctrl_reg._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_set_pin_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_set_pin_mux._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinconf_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinconf_get._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinconf_get._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_pinconf_set._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_build_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_build_groups._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_build_groups._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_build_groups._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_build_groups._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqbr_build_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiolib_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiolib_reg._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiolib_reg.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiolib_reg._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiolib_reg.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpiolib_reg.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @eqbr_pinctrl_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @eqbr_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @eqbr_pinctrl_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %membase = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call fastcc i32 @pinbank_probe(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call fastcc i32 @pinctrl_reg(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #9
  %nr_gpio_ctrls.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call.i, i32 0, i32 7
  %5 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %6 = ptrtoint ptr %nr_gpio_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_gpio_ctrls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp97.not.i = icmp eq i32 %7, 0
  br i1 %cmp97.not.i, label %if.end17.gpiolib_reg.exit.thread45_crit_edge, label %for.body.lr.ph.i

if.end17.gpiolib_reg.exit.thread45_crit_edge:     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpiolib_reg.exit.thread45

for.body.lr.ph.i:                                 ; preds = %if.end17
  %gpio_ctrls.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.cond.i:                                       ; preds = %if.end44.i
  %inc.i = add nuw i32 %i.098.i, 1
  %8 = ptrtoint ptr %nr_gpio_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_gpio_ctrls.i, align 4
  %cmp.i40 = icmp ult i32 %inc.i, %9
  br i1 %cmp.i40, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.gpiolib_reg.exit.thread45_crit_edge

for.cond.i.gpiolib_reg.exit.thread45_crit_edge:   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpiolib_reg.exit.thread45

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.098.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %gpio_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gpio_ctrls.i, align 4
  %add.ptr.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %11, i32 %i.098.i
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 4
  %call.i41 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %4, i32 noundef 3264, ptr noundef nonnull @.str.57, i32 noundef %i.098.i) #9
  %name.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %11, i32 %i.098.i, i32 5
  %14 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i41, ptr %name.i, align 4
  %tobool.not.i = icmp eq ptr %call.i41, null
  br i1 %tobool.not.i, label %for.body.i.gpiolib_reg.exit.thread_crit_edge, label %if.end.i

for.body.i.gpiolib_reg.exit.thread_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpiolib_reg.exit.thread

if.end.i:                                         ; preds = %for.body.i
  %call3.i = call i32 @of_address_to_resource(ptr noundef %13, i32 noundef 0, ptr noundef nonnull %res.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.58) #12
  br label %gpiolib_reg.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %res.i) #9
  %membase.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %11, i32 %i.098.i, i32 2
  %15 = ptrtoint ptr %membase.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i, ptr %membase.i, align 4
  %cmp.i.i = icmp ugt ptr %call7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %gpiolib_reg.exit, label %if.end13.i

if.end13.i:                                       ; preds = %if.end6.i
  %call14.i = call i32 @irq_of_parse_and_map(ptr noundef %13, i32 noundef 0) #9
  %virq.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %11, i32 %i.098.i, i32 6
  %16 = ptrtoint ptr %virq.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call14.i, ptr %virq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool16.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool16.not.i, label %do.end20.i, label %do.body23.i

do.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.61, ptr noundef %18) #12
  br label %gpiolib_reg.exit.thread

do.body23.i:                                      ; preds = %if.end13.i
  %lock.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %11, i32 %i.098.i, i32 7
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.63, ptr noundef nonnull @gpiolib_reg.__key, i16 noundef signext 2) #9
  %chip.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %11, i32 %i.098.i, i32 3
  %bank.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %11, i32 %i.098.i, i32 1
  %19 = ptrtoint ptr %bank.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %bank.i, align 4
  %nr_pins.i = getelementptr inbounds %struct.eqbr_pin_bank, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_pins.i, align 4
  %div91.i = lshr i32 %22, 3
  %23 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %24, i32 4
  %add.ptr29.i = getelementptr i8, ptr %24, i32 64
  %add.ptr31.i = getelementptr i8, ptr %24, i32 68
  %add.ptr33.i = getelementptr i8, ptr %24, i32 8
  %call34.i = call i32 @bgpio_init(ptr noundef %chip.i, ptr noundef %4, i32 noundef %div91.i, ptr noundef %add.ptr27.i, ptr noundef %add.ptr29.i, ptr noundef %add.ptr31.i, ptr noundef %add.ptr33.i, ptr noundef null, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end40.i, label %do.end39.i

do.end39.i:                                       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.65) #12
  br label %gpiolib_reg.exit.thread

if.end40.i:                                       ; preds = %do.body23.i
  %call41.i = call fastcc i32 @gpiochip_setup(ptr noundef %4, ptr noundef %add.ptr.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end40.i.gpiolib_reg.exit.thread_crit_edge

if.end40.i.gpiolib_reg.exit.thread_crit_edge:     ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpiolib_reg.exit.thread

if.end44.i:                                       ; preds = %if.end40.i
  %call46.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %4, ptr noundef %chip.i, ptr noundef %add.ptr.i, ptr noundef nonnull @gpiolib_reg.lock_key, ptr noundef nonnull @gpiolib_reg.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %for.cond.i, label %if.end44.i.gpiolib_reg.exit.thread_crit_edge

if.end44.i.gpiolib_reg.exit.thread_crit_edge:     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %gpiolib_reg.exit.thread

gpiolib_reg.exit.thread:                          ; preds = %if.end44.i.gpiolib_reg.exit.thread_crit_edge, %if.end40.i.gpiolib_reg.exit.thread_crit_edge, %do.end39.i, %do.end20.i, %do.end.i, %for.body.i.gpiolib_reg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -6, %do.end20.i ], [ %call34.i, %do.end39.i ], [ -6, %do.end.i ], [ -12, %for.body.i.gpiolib_reg.exit.thread_crit_edge ], [ %call41.i, %if.end40.i.gpiolib_reg.exit.thread_crit_edge ], [ %call46.i, %if.end44.i.gpiolib_reg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  br label %cleanup

gpiolib_reg.exit.thread45:                        ; preds = %for.cond.i.gpiolib_reg.exit.thread45_crit_edge, %if.end17.gpiolib_reg.exit.thread45_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %25 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

gpiolib_reg.exit:                                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call7.i to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #9
  br label %cleanup

cleanup:                                          ; preds = %gpiolib_reg.exit, %gpiolib_reg.exit.thread45, %gpiolib_reg.exit.thread, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ 0, %gpiolib_reg.exit.thread45 ], [ -12, %entry.cleanup_crit_edge ], [ %call10, %if.end9.cleanup_crit_edge ], [ %call14, %if.end13.cleanup_crit_edge ], [ %26, %gpiolib_reg.exit ], [ %retval.0.i.ph, %gpiolib_reg.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pinbank_probe(ptr nocapture noundef %drvdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %call = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.1) #9
  %tobool.not85 = icmp eq ptr %call, null
  br i1 %tobool.not85, label %entry.do.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %nr_gpio.087 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %np_gpio.086 = phi ptr [ %call3, %for.body.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %call2 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %np_gpio.086) #9
  %inc = zext i1 %call2 to i32
  %spec.select = add i32 %nr_gpio.087, %inc
  %call3 = tail call ptr @of_find_node_by_name(ptr noundef nonnull %np_gpio.086, ptr noundef nonnull @.str.1) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %tobool4.not = icmp eq i32 %spec.select, 0
  br i1 %tobool4.not, label %for.end.do.end_crit_edge, label %if.end6

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 20) #9
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %if.end6.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !166

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end6
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %4, i32 noundef 3520) #9
  %tobool8.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool8.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end10

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %devm_kcalloc.exit
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 548) #9
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end10.cleanup_crit_edge, label %devm_kcalloc.exit79, !prof !166

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit79:                              ; preds = %if.end10
  %7 = extractvalue { i32, i1 } %5, 0
  %call5.i.i76 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %7, i32 noundef 3520) #9
  %tobool12.not = icmp eq ptr %call5.i.i76, null
  br i1 %tobool12.not, label %devm_kcalloc.exit79.cleanup_crit_edge, label %do.body15

devm_kcalloc.exit79.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body15:                                        ; preds = %devm_kcalloc.exit79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinbank_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinbank_probe, %do.end24)) #9
          to label %if.then21 [label %do.end24], !srcloc !167

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinbank_probe.__UNIQUE_ID_ddebug227, ptr noundef %1, ptr noundef nonnull @.str.8, i32 noundef %spec.select) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body15
  %call25 = tail call ptr @of_find_node_by_name(ptr noundef null, ptr noundef nonnull @.str.1) #9
  %tobool27.not88 = icmp eq ptr %call25, null
  br i1 %tobool27.not88, label %do.end24.for.end38_crit_edge, label %do.end24.for.body28_crit_edge

do.end24.for.body28_crit_edge:                    ; preds = %do.end24
  br label %for.body28

do.end24.for.end38_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38

for.body28:                                       ; preds = %for.inc36.for.body28_crit_edge, %do.end24.for.body28_crit_edge
  %i.091 = phi i32 [ %i.1, %for.inc36.for.body28_crit_edge ], [ 0, %do.end24.for.body28_crit_edge ]
  %np_gpio.189 = phi ptr [ %call37, %for.inc36.for.body28_crit_edge ], [ %call25, %do.end24.for.body28_crit_edge ]
  %call29 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %np_gpio.189) #9
  br i1 %call29, label %if.end31, label %for.body28.for.inc36_crit_edge

for.body28.for.inc36_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc36

if.end31:                                         ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr %struct.eqbr_pin_bank, ptr %call5.i.i, i32 %i.091
  tail call fastcc void @pinbank_init(ptr noundef nonnull %np_gpio.189, ptr noundef %drvdata, ptr noundef %add.ptr, i32 noundef %i.091)
  %arrayidx = getelementptr %struct.eqbr_gpio_ctrl, ptr %call5.i.i76, i32 %i.091
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %np_gpio.189, ptr %arrayidx, align 4
  %bank = getelementptr %struct.eqbr_gpio_ctrl, ptr %call5.i.i76, i32 %i.091, i32 1
  %9 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %bank, align 4
  %inc35 = add i32 %i.091, 1
  br label %for.inc36

for.inc36:                                        ; preds = %if.end31, %for.body28.for.inc36_crit_edge
  %i.1 = phi i32 [ %inc35, %if.end31 ], [ %i.091, %for.body28.for.inc36_crit_edge ]
  %call37 = tail call ptr @of_find_node_by_name(ptr noundef nonnull %np_gpio.189, ptr noundef nonnull @.str.1) #9
  %tobool27.not = icmp eq ptr %call37, null
  br i1 %tobool27.not, label %for.inc36.for.end38_crit_edge, label %for.inc36.for.body28_crit_edge

for.inc36.for.body28_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body28

for.inc36.for.end38_crit_edge:                    ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end38

for.end38:                                        ; preds = %for.inc36.for.end38_crit_edge, %do.end24.for.end38_crit_edge
  %pin_banks = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 4
  %10 = ptrtoint ptr %pin_banks to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i, ptr %pin_banks, align 4
  %nr_banks = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 5
  %11 = ptrtoint ptr %nr_banks to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %nr_banks, align 4
  %gpio_ctrls = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 6
  %12 = ptrtoint ptr %gpio_ctrls to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i76, ptr %gpio_ctrls, align 4
  %nr_gpio_ctrls = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 7
  %13 = ptrtoint ptr %nr_gpio_ctrls to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select, ptr %nr_gpio_ctrls, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end38, %devm_kcalloc.exit79.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %for.end38 ], [ -19, %do.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit79.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pinctrl_reg(ptr noundef %drvdata) unnamed_addr #2 align 64 {
entry:
  %nr_funcs.i = alloca i32, align 4
  %pin_id.i = alloca i32, align 4
  %pinmux_id.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  %pctl_desc2 = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 1
  %2 = ptrtoint ptr %pctl_desc2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str, ptr %pctl_desc2, align 4
  %owner = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @eqbr_pctl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @eqbr_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 1, i32 5
  %6 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @eqbr_pinconf_ops, ptr %confops, align 4
  %lock = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @pinctrl_reg.__key, i16 noundef signext 2) #9
  %nr_banks = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 5
  %7 = ptrtoint ptr %nr_banks to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp152.not = icmp eq i32 %8, 0
  br i1 %cmp152.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pin_banks = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 4
  %9 = ptrtoint ptr %pin_banks to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pin_banks, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %nr_pins.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %nr_pins3 = getelementptr %struct.eqbr_pin_bank, ptr %10, i32 %i.0154, i32 3
  %11 = ptrtoint ptr %nr_pins3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pins3, align 4
  %add = add i32 %12, %nr_pins.0153
  %inc = add nuw i32 %i.0154, 1
  %exitcond.not = icmp eq i32 %inc, %8
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %nr_pins.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %13 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_pins.0.lcssa, i32 12) #9
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %for.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !166

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %for.end
  %15 = extractvalue { i32, i1 } %13, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %15, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %devm_kcalloc.exit102

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit102:                             ; preds = %devm_kcalloc.exit
  %16 = mul nuw i32 %nr_pins.0.lcssa, 10
  %call5.i.i99 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %16, i32 noundef 3520) #9
  %tobool5.not = icmp eq ptr %call5.i.i99, null
  br i1 %tobool5.not, label %devm_kcalloc.exit102.cleanup_crit_edge, label %for.cond8.preheader

devm_kcalloc.exit102.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit102
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond8.preheader:                              ; preds = %devm_kcalloc.exit102
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_pins.0.lcssa)
  %cmp9155.not = icmp eq i32 %nr_pins.0.lcssa, 0
  br i1 %cmp9155.not, label %for.cond8.preheader.for.end17_crit_edge, label %for.cond8.preheader.for.body10_crit_edge

for.cond8.preheader.for.body10_crit_edge:         ; preds = %for.cond8.preheader
  br label %for.body10

for.cond8.preheader.for.end17_crit_edge:          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.cond8.preheader.for.body10_crit_edge
  %i.1157 = phi i32 [ %inc16, %for.body10.for.body10_crit_edge ], [ 0, %for.cond8.preheader.for.body10_crit_edge ]
  %pin_names.0156 = phi ptr [ %add.ptr, %for.body10.for.body10_crit_edge ], [ %call5.i.i99, %for.cond8.preheader.for.body10_crit_edge ]
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %pin_names.0156, ptr noundef nonnull @.str.14, i32 noundef %i.1157)
  %arrayidx12 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.1157
  %17 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.1157, ptr %arrayidx12, align 4
  %name14 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.1157, i32 1
  %18 = ptrtoint ptr %name14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %pin_names.0156, ptr %name14, align 4
  %add.ptr = getelementptr i8, ptr %pin_names.0156, i32 10
  %inc16 = add nuw i32 %i.1157, 1
  %exitcond184.not = icmp eq i32 %inc16, %nr_pins.0.lcssa
  br i1 %exitcond184.not, label %for.body10.for.end17_crit_edge, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10

for.body10.for.end17_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17

for.end17:                                        ; preds = %for.body10.for.end17_crit_edge, %for.cond8.preheader.for.end17_crit_edge
  %pins = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i, ptr %pins, align 4
  %npins = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %nr_pins.0.lcssa, ptr %npins, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_reg.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_reg, %do.end27)) #9
          to label %if.then24 [label %do.end27], !srcloc !167

if.then24:                                        ; preds = %for.end17
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_reg.__UNIQUE_ID_ddebug225, ptr noundef %1, ptr noundef nonnull @.str.16, i32 noundef %nr_pins.0.lcssa) #9
  br label %do.end27

do.end27:                                         ; preds = %if.then24, %for.end17
  %pctl_dev = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 2
  %call28 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %1, ptr noundef %pctl_desc2, ptr noundef %drvdata, ptr noundef %pctl_dev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %do.end27.cleanup_crit_edge

do.end27.cleanup_crit_edge:                       ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %do.end27
  %21 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %drvdata, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pin_id.i) #9
  %25 = ptrtoint ptr %pin_id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %pin_id.i, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pinmux_id.i) #9
  %26 = ptrtoint ptr %pinmux_id.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %pinmux_id.i, align 4, !annotation !168
  %call.i = tail call ptr @of_get_next_child(ptr noundef %24, ptr noundef null) #9
  %cmp.not150.i = icmp eq ptr %call.i, null
  br i1 %cmp.not150.i, label %if.end31.if.end38_crit_edge, label %if.end31.for.body.i_crit_edge

if.end31.for.body.i_crit_edge:                    ; preds = %if.end31
  br label %for.body.i

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

for.body.i:                                       ; preds = %for.inc60.i.for.body.i_crit_edge, %if.end31.for.body.i_crit_edge
  %np.0151.i = phi ptr [ %call61.i, %for.inc60.i.for.body.i_crit_edge ], [ %call.i, %if.end31.for.body.i_crit_edge ]
  %call2.i = call ptr @of_find_property(ptr noundef nonnull %np.0151.i, ptr noundef nonnull @.str.35, ptr noundef null) #9
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %for.body.i.for.inc60.i_crit_edge, label %if.end.i

for.body.i.for.inc60.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %np.0151.i, ptr noundef nonnull @.str.36, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp5.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call2.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.37, ptr noundef %28) #12
  br label %do.end37

if.end7.i:                                        ; preds = %if.end.i
  %value.i = getelementptr inbounds %struct.property, ptr %call2.i, i32 0, i32 2
  %29 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %value.i, align 4
  %31 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i.i, i32 4) #9
  %32 = extractvalue { i32, i1 } %31, 1
  br i1 %32, label %if.end7.i.do.end37_crit_edge, label %devm_kcalloc.exit.i, !prof !166

if.end7.i.do.end37_crit_edge:                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

devm_kcalloc.exit.i:                              ; preds = %if.end7.i
  %33 = extractvalue { i32, i1 } %31, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %33, i32 noundef 3520) #9
  %tobool12.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool12.not.i, label %devm_kcalloc.exit.i.do.end37_crit_edge, label %devm_kcalloc.exit122.i

devm_kcalloc.exit.i.do.end37_crit_edge:           ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

devm_kcalloc.exit122.i:                           ; preds = %devm_kcalloc.exit.i
  %call5.i.i119.i = call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef %33, i32 noundef 3520) #9
  %tobool17.not.i = icmp eq ptr %call5.i.i119.i, null
  br i1 %tobool17.not.i, label %devm_kcalloc.exit122.i.do.end37_crit_edge, label %for.cond20.preheader.i

devm_kcalloc.exit122.i.do.end37_crit_edge:        ; preds = %devm_kcalloc.exit122.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

for.cond20.preheader.i:                           ; preds = %devm_kcalloc.exit122.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp22148.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp22148.not.i, label %for.cond20.preheader.i.for.end.i_crit_edge, label %for.cond20.preheader.i.for.body23.i_crit_edge

for.cond20.preheader.i.for.body23.i_crit_edge:    ; preds = %for.cond20.preheader.i
  br label %for.body23.i

for.cond20.preheader.i.for.end.i_crit_edge:       ; preds = %for.cond20.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body23.i:                                     ; preds = %if.end47.i.for.body23.i_crit_edge, %for.cond20.preheader.i.for.body23.i_crit_edge
  %j.0149.i = phi i32 [ %inc.i, %if.end47.i.for.body23.i_crit_edge ], [ 0, %for.cond20.preheader.i.for.body23.i_crit_edge ]
  %call24.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %np.0151.i, ptr noundef nonnull @.str.36, i32 noundef %j.0149.i, ptr noundef nonnull %pin_id.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end31.i, label %do.end29.i

do.end29.i:                                       ; preds = %for.body23.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.40, ptr noundef %30) #12
  br label %do.end37

if.end31.i:                                       ; preds = %for.body23.i
  %34 = ptrtoint ptr %pin_id.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pin_id.i, align 4
  %36 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp32.not.i = icmp ult i32 %35, %37
  br i1 %cmp32.not.i, label %if.end38.i, label %do.end36.i

do.end36.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.43, ptr noundef %30, i32 noundef %j.0149.i, i32 noundef %35) #12
  br label %do.end37

if.end38.i:                                       ; preds = %if.end31.i
  %arrayidx.i = getelementptr i32, ptr %call5.i.i.i, i32 %j.0149.i
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %35, ptr %arrayidx.i, align 4
  %call40.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %np.0151.i, ptr noundef nonnull @.str.45, i32 noundef %j.0149.i, ptr noundef nonnull %pinmux_id.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end47.i, label %do.end45.i

do.end45.i:                                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.47, ptr noundef %30) #12
  br label %do.end37

if.end47.i:                                       ; preds = %if.end38.i
  %39 = ptrtoint ptr %pinmux_id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pinmux_id.i, align 4
  %arrayidx48.i = getelementptr i32, ptr %call5.i.i119.i, i32 %j.0149.i
  %41 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %arrayidx48.i, align 4
  %inc.i = add nuw nsw i32 %j.0149.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %if.end47.i.for.end.i_crit_edge, label %if.end47.i.for.body23.i_crit_edge

if.end47.i.for.body23.i_crit_edge:                ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body23.i

if.end47.i.for.end.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %if.end47.i.for.end.i_crit_edge, %for.cond20.preheader.i.for.end.i_crit_edge
  %42 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pctl_dev, align 4
  %call52.i = call i32 @pinctrl_generic_add_group(ptr noundef %43, ptr noundef %30, ptr noundef nonnull %call5.i.i.i, i32 noundef %call.i.i, ptr noundef nonnull %call5.i.i119.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp53.i = icmp slt i32 %call52.i, 0
  br i1 %cmp53.i, label %do.end57.i, label %for.end.i.for.inc60.i_crit_edge

for.end.i.for.inc60.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc60.i

do.end57.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.50, ptr noundef %30) #12
  br label %do.end37

for.inc60.i:                                      ; preds = %for.end.i.for.inc60.i_crit_edge, %for.body.i.for.inc60.i_crit_edge
  %call61.i = call ptr @of_get_next_child(ptr noundef %24, ptr noundef nonnull %np.0151.i) #9
  %cmp.not.i = icmp eq ptr %call61.i, null
  br i1 %cmp.not.i, label %for.inc60.i.if.end38_crit_edge, label %for.inc60.i.for.body.i_crit_edge

for.inc60.i.for.body.i_crit_edge:                 ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc60.i.if.end38_crit_edge:                   ; preds = %for.inc60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

do.end37:                                         ; preds = %do.end57.i, %do.end45.i, %do.end36.i, %do.end29.i, %devm_kcalloc.exit122.i.do.end37_crit_edge, %devm_kcalloc.exit.i.do.end37_crit_edge, %if.end7.i.do.end37_crit_edge, %do.end.i
  %retval.0.ph.i = phi i32 [ %call52.i, %do.end57.i ], [ -22, %do.end45.i ], [ -22, %do.end36.i ], [ -22, %do.end29.i ], [ -22, %do.end.i ], [ -12, %if.end7.i.do.end37_crit_edge ], [ -12, %devm_kcalloc.exit.i.do.end37_crit_edge ], [ -12, %devm_kcalloc.exit122.i.do.end37_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.0151.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinmux_id.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin_id.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17) #12
  br label %cleanup

if.end38:                                         ; preds = %for.inc60.i.if.end38_crit_edge, %if.end31.if.end38_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pinmux_id.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pin_id.i) #9
  %44 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_funcs.i) #9
  %46 = ptrtoint ptr %nr_funcs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %nr_funcs.i, align 4
  %call.i104 = call fastcc i32 @funcs_utils(ptr noundef %45, ptr noundef null, ptr noundef nonnull %nr_funcs.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %if.end.i106, label %if.end38.do.end44_crit_edge

if.end38.do.end44_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.end.i106:                                      ; preds = %if.end38
  %47 = ptrtoint ptr %nr_funcs.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_funcs.i, align 4
  %49 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %48, i32 12) #9
  %50 = extractvalue { i32, i1 } %49, 1
  br i1 %50, label %if.end.i106.do.end44_crit_edge, label %devm_kcalloc.exit.i108, !prof !166

if.end.i106.do.end44_crit_edge:                   ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

devm_kcalloc.exit.i108:                           ; preds = %if.end.i106
  %51 = extractvalue { i32, i1 } %49, 0
  %call5.i.i.i107 = call noalias ptr @devm_kmalloc(ptr noundef %45, i32 noundef %51, i32 noundef 3520) #9
  %tobool3.not.i = icmp eq ptr %call5.i.i.i107, null
  br i1 %tobool3.not.i, label %devm_kcalloc.exit.i108.do.end44_crit_edge, label %if.end5.i

devm_kcalloc.exit.i108.do.end44_crit_edge:        ; preds = %devm_kcalloc.exit.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.end5.i:                                        ; preds = %devm_kcalloc.exit.i108
  %call6.i = call fastcc i32 @funcs_utils(ptr noundef %45, ptr noundef nonnull %call5.i.i.i107, ptr noundef nonnull %nr_funcs.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %if.end5.i.do.end44_crit_edge

if.end5.i.do.end44_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

if.end9.i:                                        ; preds = %if.end5.i
  %call10.i = call fastcc i32 @funcs_utils(ptr noundef %45, ptr noundef nonnull %call5.i.i.i107, ptr noundef nonnull %nr_funcs.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %for.cond.preheader.i, label %if.end9.i.do.end44_crit_edge

if.end9.i.do.end44_crit_edge:                     ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

for.cond.preheader.i:                             ; preds = %if.end9.i
  %52 = ptrtoint ptr %nr_funcs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_funcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp111.not.i = icmp eq i32 %53, 0
  br i1 %cmp111.not.i, label %for.cond.preheader.i.for.end.i112_crit_edge, label %for.cond.preheader.i.for.body.i109_crit_edge

for.cond.preheader.i.for.body.i109_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i109

for.cond.preheader.i.for.end.i112_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i112

for.body.i109:                                    ; preds = %for.inc.i.for.body.i109_crit_edge, %for.cond.preheader.i.for.body.i109_crit_edge
  %i.0112.i = phi i32 [ %inc.i110, %for.inc.i.for.body.i109_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i109_crit_edge ]
  %nr_groups.i = getelementptr %struct.eqbr_pmx_func, ptr %call5.i.i.i107, i32 %i.0112.i, i32 2
  %54 = ptrtoint ptr %nr_groups.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_groups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool14.not.i = icmp eq i32 %55, 0
  br i1 %tobool14.not.i, label %for.body.i109.for.inc.i_crit_edge, label %if.end16.i

for.body.i109.for.inc.i_crit_edge:                ; preds = %for.body.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end16.i:                                       ; preds = %for.body.i109
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %55, i32 4) #9
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %devm_kcalloc.exit102.thread.i, label %devm_kcalloc.exit102.i, !prof !166

devm_kcalloc.exit102.thread.i:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %groups106.i = getelementptr %struct.eqbr_pmx_func, ptr %call5.i.i.i107, i32 %i.0112.i, i32 1
  %58 = ptrtoint ptr %groups106.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %groups106.i, align 4
  br label %do.end44

devm_kcalloc.exit102.i:                           ; preds = %if.end16.i
  %59 = extractvalue { i32, i1 } %56, 0
  %call5.i.i99.i = call noalias ptr @devm_kmalloc(ptr noundef %45, i32 noundef %59, i32 noundef 3520) #9
  %groups.i = getelementptr %struct.eqbr_pmx_func, ptr %call5.i.i.i107, i32 %i.0112.i, i32 1
  %60 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call5.i.i99.i, ptr %groups.i, align 4
  %tobool23.not.i = icmp eq ptr %call5.i.i99.i, null
  br i1 %tobool23.not.i, label %devm_kcalloc.exit102.i.do.end44_crit_edge, label %devm_kcalloc.exit102.i.for.inc.i_crit_edge

devm_kcalloc.exit102.i.for.inc.i_crit_edge:       ; preds = %devm_kcalloc.exit102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

devm_kcalloc.exit102.i.do.end44_crit_edge:        ; preds = %devm_kcalloc.exit102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

for.inc.i:                                        ; preds = %devm_kcalloc.exit102.i.for.inc.i_crit_edge, %for.body.i109.for.inc.i_crit_edge
  %inc.i110 = add nuw i32 %i.0112.i, 1
  %exitcond.not.i111 = icmp eq i32 %inc.i110, %53
  br i1 %exitcond.not.i111, label %for.inc.i.for.end.i112_crit_edge, label %for.inc.i.for.body.i109_crit_edge

for.inc.i.for.body.i109_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i109

for.inc.i.for.end.i112_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i112

for.end.i112:                                     ; preds = %for.inc.i.for.end.i112_crit_edge, %for.cond.preheader.i.for.end.i112_crit_edge
  %call26.i = call fastcc i32 @funcs_utils(ptr noundef %45, ptr noundef nonnull %call5.i.i.i107, ptr noundef nonnull %nr_funcs.i, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %for.cond30.preheader.i, label %for.end.i112.do.end44_crit_edge

for.end.i112.do.end44_crit_edge:                  ; preds = %for.end.i112
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end44

for.cond30.preheader.i:                           ; preds = %for.end.i112
  %61 = ptrtoint ptr %nr_funcs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_funcs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp31114.not.i = icmp eq i32 %62, 0
  br i1 %cmp31114.not.i, label %for.cond30.preheader.i.if.end45_crit_edge, label %for.cond30.preheader.i.for.body32.i_crit_edge

for.cond30.preheader.i.for.body32.i_crit_edge:    ; preds = %for.cond30.preheader.i
  br label %for.body32.i

for.cond30.preheader.i.if.end45_crit_edge:        ; preds = %for.cond30.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

for.body32.i:                                     ; preds = %for.inc49.i.for.body32.i_crit_edge, %for.cond30.preheader.i.for.body32.i_crit_edge
  %i.1115.i = phi i32 [ %inc50.i, %for.inc49.i.for.body32.i_crit_edge ], [ 0, %for.cond30.preheader.i.for.body32.i_crit_edge ]
  %arrayidx33.i = getelementptr %struct.eqbr_pmx_func, ptr %call5.i.i.i107, i32 %i.1115.i
  %63 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx33.i, align 4
  %cmp34.i = icmp eq ptr %64, null
  br i1 %cmp34.i, label %for.body32.i.for.inc49.i_crit_edge, label %if.end36.i

for.body32.i.for.inc49.i_crit_edge:               ; preds = %for.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49.i

if.end36.i:                                       ; preds = %for.body32.i
  %65 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pctl_dev, align 4
  %groups40.i = getelementptr %struct.eqbr_pmx_func, ptr %call5.i.i.i107, i32 %i.1115.i, i32 1
  %67 = ptrtoint ptr %groups40.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %groups40.i, align 4
  %nr_groups42.i = getelementptr %struct.eqbr_pmx_func, ptr %call5.i.i.i107, i32 %i.1115.i, i32 2
  %69 = ptrtoint ptr %nr_groups42.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_groups42.i, align 4
  %call43.i = call i32 @pinmux_generic_add_function(ptr noundef %66, ptr noundef nonnull %64, ptr noundef %68, i32 noundef %70, ptr noundef %drvdata) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %do.end.i114, label %if.end36.i.for.inc49.i_crit_edge

if.end36.i.for.inc49.i_crit_edge:                 ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49.i

do.end.i114:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx33.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.52, ptr noundef %72) #12
  br label %do.end44

for.inc49.i:                                      ; preds = %if.end36.i.for.inc49.i_crit_edge, %for.body32.i.for.inc49.i_crit_edge
  %inc50.i = add nuw i32 %i.1115.i, 1
  %exitcond121.not.i = icmp eq i32 %inc50.i, %62
  br i1 %exitcond121.not.i, label %for.inc49.i.if.end45_crit_edge, label %for.inc49.i.for.body32.i_crit_edge

for.inc49.i.for.body32.i_crit_edge:               ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32.i

for.inc49.i.if.end45_crit_edge:                   ; preds = %for.inc49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

do.end44:                                         ; preds = %do.end.i114, %for.end.i112.do.end44_crit_edge, %devm_kcalloc.exit102.i.do.end44_crit_edge, %devm_kcalloc.exit102.thread.i, %if.end9.i.do.end44_crit_edge, %if.end5.i.do.end44_crit_edge, %devm_kcalloc.exit.i108.do.end44_crit_edge, %if.end.i106.do.end44_crit_edge, %if.end38.do.end44_crit_edge
  %retval.0.i115.ph = phi i32 [ -12, %if.end.i106.do.end44_crit_edge ], [ -12, %devm_kcalloc.exit102.thread.i ], [ %call26.i, %for.end.i112.do.end44_crit_edge ], [ %call10.i, %if.end9.i.do.end44_crit_edge ], [ %call6.i, %if.end5.i.do.end44_crit_edge ], [ -12, %devm_kcalloc.exit.i108.do.end44_crit_edge ], [ %call.i104, %if.end38.do.end44_crit_edge ], [ %call43.i, %do.end.i114 ], [ -12, %devm_kcalloc.exit102.i.do.end44_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_funcs.i) #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.19) #12
  br label %cleanup

if.end45:                                         ; preds = %for.inc49.i.if.end45_crit_edge, %for.cond30.preheader.i.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_funcs.i) #9
  %73 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pctl_dev, align 4
  %call47 = call i32 @pinctrl_enable(ptr noundef %74) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end44, %do.end37, %do.end27.cleanup_crit_edge, %devm_kcalloc.exit102.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.ph.i, %do.end37 ], [ %retval.0.i115.ph, %do.end44 ], [ %call47, %if.end45 ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit102.cleanup_crit_edge ], [ %call28, %do.end27.cleanup_crit_edge ], [ -12, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_node_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pinbank_init(ptr noundef %np, ptr nocapture noundef readonly %drvdata, ptr nocapture noundef %bank, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  %spec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %spec) #9
  %2 = call ptr @memset(ptr %spec, i32 255, i32 72)
  %membase = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %drvdata, i32 0, i32 3
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %mul = shl i32 %id, 8
  %add.ptr = getelementptr i8, ptr %4, i32 %mul
  %5 = ptrtoint ptr %bank to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %bank, align 4
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %spec) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %pin_base = getelementptr inbounds %struct.eqbr_pin_bank, ptr %bank, i32 0, i32 2
  %8 = ptrtoint ptr %pin_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %pin_base, align 4
  %arrayidx4 = getelementptr inbounds %struct.of_phandle_args, ptr %spec, i32 0, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %nr_pins = getelementptr inbounds %struct.eqbr_pin_bank, ptr %bank, i32 0, i32 3
  %11 = ptrtoint ptr %nr_pins to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nr_pins, align 4
  %12 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bank, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 152
  %14 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #9, !srcloc !169
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  %aval_pinmap = getelementptr inbounds %struct.eqbr_pin_bank, ptr %bank, i32 0, i32 4
  %16 = ptrtoint ptr %aval_pinmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %aval_pinmap, align 4
  %id9 = getelementptr inbounds %struct.eqbr_pin_bank, ptr %bank, i32 0, i32 1
  %17 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %id, ptr %id9, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinbank_init.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinbank_init, %cleanup)) #9
          to label %if.then17 [label %cleanup], !srcloc !167

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %bank to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %bank, align 4
  %20 = ptrtoint ptr %pin_base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pin_base, align 4
  %22 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_pins, align 4
  %24 = ptrtoint ptr %aval_pinmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %aval_pinmap, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinbank_init.__UNIQUE_ID_ddebug226, ptr noundef %1, ptr noundef nonnull @.str.12, i32 noundef %id, ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end, %do.end
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %spec) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_count(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group_name(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_get_group_pins(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_all(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 0) #9
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
define internal i32 @eqbr_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %selector, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %call1 = tail call ptr @pinmux_generic_get_function(ptr noundef %pctldev, i32 noundef %selector) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @pinctrl_generic_get_group(ptr noundef %pctldev, i32 noundef %group) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %data = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %num_pins = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 2
  %2 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20 = icmp sgt i32 %3, 0
  br i1 %cmp20, label %for.body.lr.ph, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end5
  %pins = getelementptr inbounds %struct.group_desc, ptr %call2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %1, i32 %i.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx6 = getelementptr i32, ptr %7, i32 %i.021
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %call7 = tail call fastcc i32 @eqbr_set_pin_mux(ptr noundef %call, i32 noundef %5, i32 noundef %9)
  %inc = add nuw nsw i32 %i.021, 1
  %10 = ptrtoint ptr %num_pins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_pins, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_pinmux_gpio_request(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %call1 = tail call fastcc i32 @eqbr_set_pin_mux(ptr noundef %call, i32 noundef 0, i32 noundef %pin)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinmux_generic_get_function(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_generic_get_group(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @eqbr_set_pin_mux(ptr noundef %pctl, i32 noundef %pmx, i32 noundef %pin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_banks.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %pctl, i32 0, i32 5
  %0 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp14.not.i = icmp eq i32 %1, 0
  br i1 %cmp14.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %pin_banks.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %pctl, i32 0, i32 4
  %2 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_banks.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pin_base.i = getelementptr %struct.eqbr_pin_bank, ptr %3, i32 %i.015.i, i32 2
  %4 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pin_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp1.not.i = icmp ugt i32 %5, %pin
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sub.i = sub i32 %pin, %5
  %nr_pins.i = getelementptr %struct.eqbr_pin_bank, ptr %3, i32 %i.015.i, i32 3
  %6 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_pins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %7)
  %cmp3.i = icmp ult i32 %sub.i, %7
  br i1 %cmp3.i, label %find_pinbank_via_pin.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

find_pinbank_via_pin.exit:                        ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.eqbr_pin_bank, ptr %3, i32 %i.015.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %find_pinbank_via_pin.exit.do.end_crit_edge, label %if.end

find_pinbank_via_pin.exit.do.end_crit_edge:       ; preds = %find_pinbank_via_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %find_pinbank_via_pin.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pctl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21, i32 noundef %pin) #12
  br label %cleanup

if.end:                                           ; preds = %find_pinbank_via_pin.exit
  %10 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pin_base.i, align 4
  %sub = sub i32 %pin, %11
  %aval_pinmap = getelementptr %struct.eqbr_pin_bank, ptr %3, i32 %i.015.i, i32 4
  %12 = ptrtoint ptr %aval_pinmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aval_pinmap, align 4
  %shl = shl nuw i32 1, %sub
  %and = and i32 %shl, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.end5, label %do.body10

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pctl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.24, i32 noundef %pin, i32 noundef %11, i32 noundef %13) #12
  br label %cleanup

do.body10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.le.i, align 4
  %lock = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %pctl, i32 0, i32 8
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %18 = tail call i32 @llvm.bswap.i32(i32 %pmx)
  %mul = shl i32 %sub, 2
  %add.ptr = getelementptr i8, ptr %17, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %18) #9, !srcloc !172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body10, %do.end5, %do.end
  %retval.0 = phi i32 [ 0, %do.body10 ], [ -19, %do.end5 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %nr_banks.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not.i = icmp eq i32 %3, 0
  br i1 %cmp14.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %pin_banks.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_banks.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pin_base.i = getelementptr %struct.eqbr_pin_bank, ptr %5, i32 %i.015.i, i32 2
  %6 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp1.not.i = icmp ugt i32 %7, %pin
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sub.i = sub i32 %pin, %7
  %nr_pins.i = getelementptr %struct.eqbr_pin_bank, ptr %5, i32 %i.015.i, i32 3
  %8 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp3.i = icmp ult i32 %sub.i, %9
  br i1 %cmp3.i, label %find_pinbank_via_pin.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

find_pinbank_via_pin.exit:                        ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.eqbr_pin_bank, ptr %5, i32 %i.015.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %find_pinbank_via_pin.exit.do.end_crit_edge, label %if.end

find_pinbank_via_pin.exit.do.end_crit_edge:       ; preds = %find_pinbank_via_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %find_pinbank_via_pin.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %pin) #12
  br label %cleanup

if.end:                                           ; preds = %find_pinbank_via_pin.exit
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.le.i, align 4
  %14 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pin_base.i, align 4
  %sub = sub i32 %pin, %15
  %aval_pinmap = getelementptr %struct.eqbr_pin_bank, ptr %5, i32 %i.015.i, i32 4
  %16 = ptrtoint ptr %aval_pinmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %aval_pinmap, align 4
  %shl = shl nuw i32 1, %sub
  %and = and i32 %shl, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %do.end7, label %do.body12

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.24, i32 noundef %pin, i32 noundef %15, i32 noundef %17) #12
  br label %cleanup

do.body12:                                        ; preds = %if.end
  %lock = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 8
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %trunc = trunc i32 %1 to i8
  %20 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.body100 [
    i8 5, label %sw.bb
    i8 3, label %sw.bb23
    i8 6, label %sw.bb37
    i8 9, label %sw.bb51
    i8 24, label %sw.bb53
    i8 18, label %sw.bb67
  ]

sw.bb:                                            ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %13, i32 128
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !169
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  %23 = lshr i32 %22, %sub
  %24 = and i32 %23, 1
  br label %do.body109

sw.bb23:                                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr26 = getelementptr i8, ptr %13, i32 132
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #9, !srcloc !169
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  %27 = lshr i32 %26, %sub
  %28 = and i32 %27, 1
  br label %do.body109

sw.bb37:                                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr40 = getelementptr i8, ptr %13, i32 148
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #9, !srcloc !169
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  %31 = lshr i32 %30, %sub
  %32 = and i32 %31, 1
  br label %do.body109

sw.bb51:                                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %33 = lshr i32 %sub, 2
  %mul.i = and i32 %33, 1073741820
  %add.i = add nuw nsw i32 %mul.i, 140
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add.i
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !169
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  %rem.i = shl i32 %sub, 1
  %mul2.i = and i32 %rem.i, 30
  %shr.i = lshr i32 %35, %mul2.i
  %and.i160 = and i32 %shr.i, 3
  br label %do.body109

sw.bb53:                                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr56 = getelementptr i8, ptr %13, i32 136
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr56) #9, !srcloc !169
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !177
  %38 = lshr i32 %37, %sub
  %39 = and i32 %38, 1
  br label %do.body109

sw.bb67:                                          ; preds = %do.body12
  %nr_gpio_ctrls.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 7
  %40 = ptrtoint ptr %nr_gpio_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_gpio_ctrls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp11.not.i = icmp eq i32 %41, 0
  br i1 %cmp11.not.i, label %sw.bb67.do.end73_crit_edge, label %for.body.lr.ph.i161

sw.bb67.do.end73_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

for.body.lr.ph.i161:                              ; preds = %sw.bb67
  %gpio_ctrls.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 6
  %42 = ptrtoint ptr %gpio_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %gpio_ctrls.i, align 4
  br label %for.body.i162

for.body.i162:                                    ; preds = %for.inc.i165.for.body.i162_crit_edge, %for.body.lr.ph.i161
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i161 ], [ %inc.i163, %for.inc.i165.for.body.i162_crit_edge ]
  %bank1.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %43, i32 %i.012.i, i32 1
  %44 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bank1.i, align 4
  %cmp2.i = icmp eq ptr %45, %arrayidx.le.i
  br i1 %cmp2.i, label %get_gpio_ctrls_via_bank.exit, label %for.inc.i165

for.inc.i165:                                     ; preds = %for.body.i162
  %inc.i163 = add nuw i32 %i.012.i, 1
  %exitcond.not.i164 = icmp eq i32 %inc.i163, %41
  br i1 %exitcond.not.i164, label %for.inc.i165.do.end73_crit_edge, label %for.inc.i165.for.body.i162_crit_edge

for.inc.i165.for.body.i162_crit_edge:             ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i162

for.inc.i165.do.end73_crit_edge:                  ; preds = %for.inc.i165
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

get_gpio_ctrls_via_bank.exit:                     ; preds = %for.body.i162
  %arrayidx.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %43, i32 %i.012.i
  %tobool69.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool69.not, label %get_gpio_ctrls_via_bank.exit.do.end73_crit_edge, label %if.end85

get_gpio_ctrls_via_bank.exit.do.end73_crit_edge:  ; preds = %get_gpio_ctrls_via_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end73:                                         ; preds = %get_gpio_ctrls_via_bank.exit.do.end73_crit_edge, %for.inc.i165.do.end73_crit_edge, %sw.bb67.do.end73_crit_edge
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  %48 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pin_base.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.30, i32 noundef %49, i32 noundef %pin) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  br label %cleanup

if.end85:                                         ; preds = %get_gpio_ctrls_via_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  %membase88 = getelementptr %struct.eqbr_gpio_ctrl, ptr %43, i32 %i.012.i, i32 2
  %50 = ptrtoint ptr %membase88 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %membase88, align 4
  %add.ptr89 = getelementptr i8, ptr %51, i32 8
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #9, !srcloc !169
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  %54 = lshr i32 %53, %sub
  %55 = and i32 %54, 1
  br label %do.body109

do.body100:                                       ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  br label %cleanup

do.body109:                                       ; preds = %if.end85, %sw.bb53, %sw.bb51, %sw.bb37, %sw.bb23, %sw.bb
  %val.0 = phi i32 [ %55, %if.end85 ], [ %39, %sw.bb53 ], [ %and.i160, %sw.bb51 ], [ %32, %sw.bb37 ], [ %28, %sw.bb23 ], [ %24, %sw.bb ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  %shl.i = shl nuw nsw i32 %val.0, 8
  %or.i = or i32 %shl.i, %and.i
  %56 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body109, %do.body100, %do.end73, %do.end7, %do.end
  %retval.0 = phi i32 [ -524, %do.body100 ], [ 0, %do.body109 ], [ -19, %do.end73 ], [ -19, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp112.not = icmp eq i32 %num_configs, 0
  br i1 %cmp112.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %nr_banks.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 5
  %pin_banks.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 4
  %nr_gpio_ctrls.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 7
  %gpio_ctrls.i = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 6
  %lock = getelementptr inbounds %struct.eqbr_pinctrl_drv_data, ptr %call, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0113 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0113
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %shr.i = lshr i32 %1, 8
  %2 = ptrtoint ptr %nr_banks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_banks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not.i = icmp eq i32 %3, 0
  br i1 %cmp14.not.i, label %for.body.do.end_crit_edge, label %for.body.lr.ph.i

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %for.body
  %4 = ptrtoint ptr %pin_banks.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pin_banks.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.015.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %pin_base.i = getelementptr %struct.eqbr_pin_bank, ptr %5, i32 %i.015.i, i32 2
  %6 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pin_base.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %pin)
  %cmp1.not.i = icmp ugt i32 %7, %pin
  br i1 %cmp1.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %sub.i = sub i32 %pin, %7
  %nr_pins.i = getelementptr %struct.eqbr_pin_bank, ptr %5, i32 %i.015.i, i32 3
  %8 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %9)
  %cmp3.i = icmp ult i32 %sub.i, %9
  br i1 %cmp3.i, label %find_pinbank_via_pin.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

find_pinbank_via_pin.exit:                        ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.eqbr_pin_bank, ptr %5, i32 %i.015.i
  %tobool.not = icmp eq ptr %arrayidx.le.i, null
  br i1 %tobool.not, label %find_pinbank_via_pin.exit.do.end_crit_edge, label %if.end

find_pinbank_via_pin.exit.do.end_crit_edge:       ; preds = %find_pinbank_via_pin.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %find_pinbank_via_pin.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %for.body.do.end_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %pin) #12
  br label %cleanup

if.end:                                           ; preds = %find_pinbank_via_pin.exit
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.le.i, align 4
  %14 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pin_base.i, align 4
  %sub = sub i32 %pin, %15
  %trunc = trunc i32 %1 to i8
  %16 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %trunc, label %if.end.cleanup_crit_edge [
    i8 5, label %sw.bb
    i8 3, label %sw.bb5
    i8 6, label %sw.bb8
    i8 9, label %sw.bb11
    i8 24, label %sw.bb15
    i8 18, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %13, i32 128
  %shl = shl nuw i32 1, %sub
  br label %do.body29

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr6 = getelementptr i8, ptr %13, i32 132
  %shl7 = shl nuw i32 1, %sub
  br label %do.body29

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr9 = getelementptr i8, ptr %13, i32 148
  %shl10 = shl nuw i32 1, %sub
  br label %do.body29

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %17 = lshr i32 %sub, 2
  %mul = and i32 %17, 1073741820
  %add = add nuw nsw i32 %mul, 140
  %add.ptr12 = getelementptr i8, ptr %13, i32 %add
  %rem = shl i32 %sub, 1
  %mul13 = and i32 %rem, 30
  %shl14 = shl nuw i32 3, %mul13
  br label %do.body29

sw.bb15:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr16 = getelementptr i8, ptr %13, i32 136
  %shl17 = shl nuw i32 1, %sub
  br label %do.body29

sw.bb18:                                          ; preds = %if.end
  %18 = ptrtoint ptr %nr_gpio_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_gpio_ctrls.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp11.not.i = icmp eq i32 %19, 0
  br i1 %cmp11.not.i, label %sw.bb18.do.end24_crit_edge, label %for.body.lr.ph.i97

sw.bb18.do.end24_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

for.body.lr.ph.i97:                               ; preds = %sw.bb18
  %20 = ptrtoint ptr %gpio_ctrls.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %gpio_ctrls.i, align 4
  br label %for.body.i98

for.body.i98:                                     ; preds = %for.inc.i101.for.body.i98_crit_edge, %for.body.lr.ph.i97
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i97 ], [ %inc.i99, %for.inc.i101.for.body.i98_crit_edge ]
  %bank1.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %21, i32 %i.012.i, i32 1
  %22 = ptrtoint ptr %bank1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %bank1.i, align 4
  %cmp2.i = icmp eq ptr %23, %arrayidx.le.i
  br i1 %cmp2.i, label %get_gpio_ctrls_via_bank.exit, label %for.inc.i101

for.inc.i101:                                     ; preds = %for.body.i98
  %inc.i99 = add nuw i32 %i.012.i, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, %19
  br i1 %exitcond.not.i100, label %for.inc.i101.do.end24_crit_edge, label %for.inc.i101.for.body.i98_crit_edge

for.inc.i101.for.body.i98_crit_edge:              ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i98

for.inc.i101.do.end24_crit_edge:                  ; preds = %for.inc.i101
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

get_gpio_ctrls_via_bank.exit:                     ; preds = %for.body.i98
  %arrayidx.i = getelementptr %struct.eqbr_gpio_ctrl, ptr %21, i32 %i.012.i
  %tobool20.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool20.not, label %get_gpio_ctrls_via_bank.exit.do.end24_crit_edge, label %if.end27

get_gpio_ctrls_via_bank.exit.do.end24_crit_edge:  ; preds = %get_gpio_ctrls_via_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.end24:                                         ; preds = %get_gpio_ctrls_via_bank.exit.do.end24_crit_edge, %for.inc.i101.do.end24_crit_edge, %sw.bb18.do.end24_crit_edge
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.30, i32 noundef %15, i32 noundef %pin) #12
  br label %cleanup

if.end27:                                         ; preds = %get_gpio_ctrls_via_bank.exit
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr %struct.eqbr_gpio_ctrl, ptr %21, i32 %i.012.i, i32 3
  %direction_output = getelementptr %struct.eqbr_gpio_ctrl, ptr %21, i32 %i.012.i, i32 3, i32 9
  %26 = ptrtoint ptr %direction_output to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %direction_output, align 4
  %call28 = tail call i32 %27(ptr noundef %chip, i32 noundef %sub, i32 noundef 0) #9
  br label %for.inc

do.body29:                                        ; preds = %sw.bb15, %sw.bb11, %sw.bb8, %sw.bb5, %sw.bb
  %offset.0 = phi i32 [ %sub, %sw.bb15 ], [ %mul13, %sw.bb11 ], [ %sub, %sw.bb8 ], [ %sub, %sw.bb5 ], [ %sub, %sw.bb ]
  %mem.0 = phi ptr [ %add.ptr16, %sw.bb15 ], [ %add.ptr12, %sw.bb11 ], [ %add.ptr9, %sw.bb8 ], [ %add.ptr6, %sw.bb5 ], [ %add.ptr, %sw.bb ]
  %mask.0 = phi i32 [ %shl17, %sw.bb15 ], [ %shl14, %sw.bb11 ], [ %shl10, %sw.bb8 ], [ %shl7, %sw.bb5 ], [ %shl, %sw.bb ]
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mem.0) #9, !srcloc !169
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  %neg = xor i32 %mask.0, -1
  %and = and i32 %29, %neg
  %shl37 = shl i32 %shr.i, %offset.0
  %and38 = and i32 %mask.0, %shl37
  %or = or i32 %and, %and38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %30 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mem.0, i32 %30) #9, !srcloc !172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #9
  br label %for.inc

for.inc:                                          ; preds = %do.body29, %if.end27
  %inc = add nuw i32 %i.0113, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end24, %if.end.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end24 ], [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_pinconf_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #2 align 64 {
entry:
  %npins = alloca i32, align 4
  %pins = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #9
  %0 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %npins, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #9
  %1 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !168
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %old.022 = phi i32 [ %11, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %i.021 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.021
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @eqbr_pinconf_get(ptr noundef %pctldev, i32 noundef %7, ptr noundef %config)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.021)
  %tobool5.not = icmp eq i32 %i.021, 0
  br i1 %tobool5.not, label %if.end4.if.end8_crit_edge, label %land.lhs.true

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end4
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %old.022, i32 %9)
  %cmp6.not = icmp eq i32 %old.022, %9
  br i1 %cmp6.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  %inc = add nuw i32 %i.021, 1
  %12 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %if.end8.for.body_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %if.end8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ -524, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_pinconf_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  %pins = alloca ptr, align 4
  %npins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #9
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pins, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %npins) #9
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %npins, align 4, !annotation !168
  %call = call i32 @pinctrl_generic_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr noundef nonnull %pins, ptr noundef nonnull %npins) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.015, 1
  %4 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.015 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.015
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %call1 = call i32 @eqbr_pinconf_set(ptr noundef %pctldev, i32 noundef %9, ptr noundef %configs, i32 noundef %num_configs)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %npins) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dump_config(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_generic_add_group(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @funcs_utils(ptr noundef %dev, ptr noundef %funcs, ptr nocapture noundef %nr_funcs, i32 noundef %op) unnamed_addr #2 align 64 {
entry:
  %fn_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fn_name) #9
  %2 = ptrtoint ptr %fn_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %fn_name, align 4, !annotation !168
  %call = tail call ptr @of_get_next_child(ptr noundef %1, ptr noundef null) #9
  %cmp.not153 = icmp eq ptr %call, null
  br i1 %cmp.not153, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not.i112 = icmp ne ptr %funcs, null
  br label %for.body

for.body:                                         ; preds = %for.inc45.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.inc45.for.body_crit_edge ]
  %np.0155 = phi ptr [ %call, %for.body.lr.ph ], [ %call46, %for.inc45.for.body_crit_edge ]
  %call1 = call ptr @of_find_property(ptr noundef nonnull %np.0155, ptr noundef nonnull @.str.35, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.for.inc45_crit_edge, label %if.end

for.body.for.inc45_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc45

if.end:                                           ; preds = %for.body
  %call2 = call i32 @of_property_read_string(ptr noundef nonnull %np.0155, ptr noundef nonnull @.str.54, ptr noundef nonnull %fn_name) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end12, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @funcs_utils.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@funcs_utils, %for.inc45)) #9
          to label %if.then10 [label %for.inc45], !srcloc !167

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr inbounds %struct.property, ptr %call1, i32 0, i32 2
  %3 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %value, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @funcs_utils.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.56, ptr noundef %4) #9
  br label %for.inc45

if.end12:                                         ; preds = %if.end
  %5 = zext i32 %op to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %op, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb16
    i32 2, label %sw.bb20
    i32 3, label %sw.bb25
  ]

sw.bb:                                            ; preds = %if.end12
  %6 = ptrtoint ptr %fn_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fn_name, align 4
  %8 = ptrtoint ptr %nr_funcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp15.i = icmp ne i32 %9, 0
  %or.cond.i = and i1 %tobool.not.i112, %cmp15.i
  br i1 %or.cond.i, label %sw.bb.for.body.i_crit_edge, label %sw.bb.if.then14_crit_edge

sw.bb.if.then14_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %call.i = call i32 @strcmp(ptr noundef nonnull %11, ptr noundef %7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %9
  br i1 %exitcond.not.i, label %for.inc.i.if.then14_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.if.then14_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then14

if.then14:                                        ; preds = %for.inc.i.if.then14_crit_edge, %sw.bb.if.then14_crit_edge
  %add = add i32 %9, 1
  %12 = ptrtoint ptr %nr_funcs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %nr_funcs, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12
  %13 = ptrtoint ptr %fn_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fn_name, align 4
  %15 = ptrtoint ptr %nr_funcs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp15.i81 = icmp ne i32 %16, 0
  %or.cond.i82 = and i1 %tobool.not.i112, %cmp15.i81
  br i1 %or.cond.i82, label %sw.bb16.for.body.i86_crit_edge, label %sw.bb16.if.then18_crit_edge

sw.bb16.if.then18_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.bb16.for.body.i86_crit_edge:                   ; preds = %sw.bb16
  br label %for.body.i86

for.body.i86:                                     ; preds = %for.inc.i93.for.body.i86_crit_edge, %sw.bb16.for.body.i86_crit_edge
  %i.016.i83 = phi i32 [ %inc.i91, %for.inc.i93.for.body.i86_crit_edge ], [ 0, %sw.bb16.for.body.i86_crit_edge ]
  %arrayidx.i84 = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i83
  %17 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i84, align 4
  %tobool2.not.i85 = icmp eq ptr %18, null
  br i1 %tobool2.not.i85, label %for.body.i86.for.inc.i93_crit_edge, label %land.lhs.true.i89

for.body.i86.for.inc.i93_crit_edge:               ; preds = %for.body.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i93

land.lhs.true.i89:                                ; preds = %for.body.i86
  %call.i87 = call i32 @strcmp(ptr noundef nonnull %18, ptr noundef %14) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool5.not.i88 = icmp eq i32 %call.i87, 0
  br i1 %tobool5.not.i88, label %land.lhs.true.i89.sw.epilog_crit_edge, label %land.lhs.true.i89.for.inc.i93_crit_edge

land.lhs.true.i89.for.inc.i93_crit_edge:          ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i93

land.lhs.true.i89.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.inc.i93:                                      ; preds = %land.lhs.true.i89.for.inc.i93_crit_edge, %for.body.i86.for.inc.i93_crit_edge
  %inc.i91 = add nuw i32 %i.016.i83, 1
  %exitcond.not.i92 = icmp eq i32 %inc.i91, %16
  br i1 %exitcond.not.i92, label %for.inc.i93.if.then18_crit_edge, label %for.inc.i93.for.body.i86_crit_edge

for.inc.i93.for.body.i86_crit_edge:               ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i86

for.inc.i93.if.then18_crit_edge:                  ; preds = %for.inc.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.then18:                                        ; preds = %for.inc.i93.if.then18_crit_edge, %sw.bb16.if.then18_crit_edge
  %arrayidx = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.0157
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %arrayidx, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end12
  %20 = ptrtoint ptr %fn_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fn_name, align 4
  %22 = ptrtoint ptr %nr_funcs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp15.i97 = icmp ne i32 %23, 0
  %or.cond.i98 = and i1 %tobool.not.i112, %cmp15.i97
  br i1 %or.cond.i98, label %sw.bb20.for.body.i102_crit_edge, label %sw.bb20.sw.epilog_crit_edge

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb20.for.body.i102_crit_edge:                  ; preds = %sw.bb20
  br label %for.body.i102

for.body.i102:                                    ; preds = %for.inc.i109.for.body.i102_crit_edge, %sw.bb20.for.body.i102_crit_edge
  %i.016.i99 = phi i32 [ %inc.i107, %for.inc.i109.for.body.i102_crit_edge ], [ 0, %sw.bb20.for.body.i102_crit_edge ]
  %arrayidx.i100 = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i99
  %24 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i100, align 4
  %tobool2.not.i101 = icmp eq ptr %25, null
  br i1 %tobool2.not.i101, label %for.body.i102.for.inc.i109_crit_edge, label %land.lhs.true.i105

for.body.i102.for.inc.i109_crit_edge:             ; preds = %for.body.i102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i109

land.lhs.true.i105:                               ; preds = %for.body.i102
  %call.i103 = call i32 @strcmp(ptr noundef nonnull %25, ptr noundef %21) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool5.not.i104 = icmp eq i32 %call.i103, 0
  br i1 %tobool5.not.i104, label %if.then22, label %land.lhs.true.i105.for.inc.i109_crit_edge

land.lhs.true.i105.for.inc.i109_crit_edge:        ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i109

for.inc.i109:                                     ; preds = %land.lhs.true.i105.for.inc.i109_crit_edge, %for.body.i102.for.inc.i109_crit_edge
  %inc.i107 = add nuw i32 %i.016.i99, 1
  %exitcond.not.i108 = icmp eq i32 %inc.i107, %23
  br i1 %exitcond.not.i108, label %for.inc.i109.sw.epilog_crit_edge, label %for.inc.i109.for.body.i102_crit_edge

for.inc.i109.for.body.i102_crit_edge:             ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i102

for.inc.i109.sw.epilog_crit_edge:                 ; preds = %for.inc.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then22:                                        ; preds = %land.lhs.true.i105
  call void @__sanitizer_cov_trace_pc() #11
  %nr_groups = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i99, i32 2
  %26 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_groups, align 4
  %inc = add i32 %27, 1
  store i32 %inc, ptr %nr_groups, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.end12
  %28 = ptrtoint ptr %fn_name to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fn_name, align 4
  %30 = ptrtoint ptr %nr_funcs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_funcs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp15.i113 = icmp ne i32 %31, 0
  %or.cond.i114 = and i1 %tobool.not.i112, %cmp15.i113
  br i1 %or.cond.i114, label %sw.bb25.for.body.i118_crit_edge, label %sw.bb25.sw.epilog_crit_edge

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb25.for.body.i118_crit_edge:                  ; preds = %sw.bb25
  br label %for.body.i118

for.body.i118:                                    ; preds = %for.inc.i125.for.body.i118_crit_edge, %sw.bb25.for.body.i118_crit_edge
  %i.016.i115 = phi i32 [ %inc.i123, %for.inc.i125.for.body.i118_crit_edge ], [ 0, %sw.bb25.for.body.i118_crit_edge ]
  %arrayidx.i116 = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i115
  %32 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i116, align 4
  %tobool2.not.i117 = icmp eq ptr %33, null
  br i1 %tobool2.not.i117, label %for.body.i118.for.inc.i125_crit_edge, label %land.lhs.true.i121

for.body.i118.for.inc.i125_crit_edge:             ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i125

land.lhs.true.i121:                               ; preds = %for.body.i118
  %call.i119 = call i32 @strcmp(ptr noundef nonnull %33, ptr noundef %29) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool5.not.i120 = icmp eq i32 %call.i119, 0
  br i1 %tobool5.not.i120, label %for.cond28.preheader, label %land.lhs.true.i121.for.inc.i125_crit_edge

land.lhs.true.i121.for.inc.i125_crit_edge:        ; preds = %land.lhs.true.i121
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i125

for.cond28.preheader:                             ; preds = %land.lhs.true.i121
  %nr_groups30 = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i115, i32 2
  %34 = ptrtoint ptr %nr_groups30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_groups30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp31150.not = icmp eq i32 %35, 0
  br i1 %cmp31150.not, label %for.cond28.preheader.for.end_crit_edge, label %for.body32.lr.ph

for.cond28.preheader.for.end_crit_edge:           ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body32.lr.ph:                                 ; preds = %for.cond28.preheader
  %groups = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i115, i32 1
  %36 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %groups, align 4
  br label %for.body32

for.inc.i125:                                     ; preds = %land.lhs.true.i121.for.inc.i125_crit_edge, %for.body.i118.for.inc.i125_crit_edge
  %inc.i123 = add nuw i32 %i.016.i115, 1
  %exitcond.not.i124 = icmp eq i32 %inc.i123, %31
  br i1 %exitcond.not.i124, label %for.inc.i125.sw.epilog_crit_edge, label %for.inc.i125.for.body.i118_crit_edge

for.inc.i125.for.body.i118_crit_edge:             ; preds = %for.inc.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i118

for.inc.i125.sw.epilog_crit_edge:                 ; preds = %for.inc.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body32:                                       ; preds = %for.inc.for.body32_crit_edge, %for.body32.lr.ph
  %j.0151 = phi i32 [ 0, %for.body32.lr.ph ], [ %inc38, %for.inc.for.body32_crit_edge ]
  %arrayidx34 = getelementptr ptr, ptr %37, i32 %j.0151
  %38 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx34, align 4
  %tobool35.not = icmp eq ptr %39, null
  br i1 %tobool35.not, label %for.body32.for.end_crit_edge, label %for.inc

for.body32.for.end_crit_edge:                     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body32
  %inc38 = add nuw i32 %j.0151, 1
  %exitcond.not = icmp eq i32 %inc38, %35
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body32_crit_edge

for.inc.for.body32_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body32.for.end_crit_edge, %for.cond28.preheader.for.end_crit_edge
  %j.0.lcssa = phi i32 [ 0, %for.cond28.preheader.for.end_crit_edge ], [ %j.0151, %for.body32.for.end_crit_edge ], [ %35, %for.inc.for.end_crit_edge ]
  %value39 = getelementptr inbounds %struct.property, ptr %call1, i32 0, i32 2
  %40 = ptrtoint ptr %value39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %value39, align 4
  %groups41 = getelementptr %struct.eqbr_pmx_func, ptr %funcs, i32 %i.016.i115, i32 1
  %42 = ptrtoint ptr %groups41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %groups41, align 4
  %arrayidx42 = getelementptr ptr, ptr %43, i32 %j.0.lcssa
  %44 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %arrayidx42, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %np.0155) #9
  br label %cleanup

sw.epilog:                                        ; preds = %for.end, %for.inc.i125.sw.epilog_crit_edge, %sw.bb25.sw.epilog_crit_edge, %if.then22, %for.inc.i109.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %if.then18, %land.lhs.true.i89.sw.epilog_crit_edge, %if.then14, %land.lhs.true.i.sw.epilog_crit_edge
  %inc44 = add i32 %i.0157, 1
  br label %for.inc45

for.inc45:                                        ; preds = %sw.epilog, %if.then10, %do.body, %for.body.for.inc45_crit_edge
  %i.1 = phi i32 [ %i.0157, %for.body.for.inc45_crit_edge ], [ %inc44, %sw.epilog ], [ %i.0157, %if.then10 ], [ %i.0157, %do.body ]
  %call46 = call ptr @of_get_next_child(ptr noundef %1, ptr noundef nonnull %np.0155) #9
  %cmp.not = icmp eq ptr %call46, null
  br i1 %cmp.not, label %for.inc45.cleanup_crit_edge, label %for.inc45.for.body_crit_edge

for.inc45.for.body_crit_edge:                     ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc45.cleanup_crit_edge:                      ; preds = %for.inc45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc45.cleanup_crit_edge, %sw.default, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fn_name) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinmux_generic_add_function(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpiochip_setup(ptr noundef %dev, ptr noundef %gctrl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3
  %name = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 5
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %chip, align 4
  %3 = ptrtoint ptr %gctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gctrl, align 4
  %of_node = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3, i32 39
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %of_node, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %4, ptr noundef nonnull @.str.67, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %do.body, label %if.end8

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpiochip_setup.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpiochip_setup, %cleanup)) #9
          to label %if.then6 [label %cleanup], !srcloc !167

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpiochip_setup.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.69, ptr noundef %7) #9
  br label %cleanup

if.end8:                                          ; preds = %entry
  %ic = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 4
  %name9 = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %name9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.70, ptr %name9, align 4
  %irq_mask = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @eqbr_gpio_disable_irq, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 4, i32 9
  %10 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @eqbr_gpio_enable_irq, ptr %irq_unmask, align 4
  %irq_ack = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 4, i32 6
  %11 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @eqbr_gpio_ack_irq, ptr %irq_ack, align 4
  %irq_mask_ack = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 4, i32 8
  %12 = ptrtoint ptr %irq_mask_ack to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @eqbr_gpio_mask_ack_irq, ptr %irq_mask_ack, align 4
  %irq_set_type = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 4, i32 13
  %13 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @eqbr_gpio_set_irq_type, ptr %irq_set_type, align 4
  %irq = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3, i32 37
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ic, ptr %irq, align 4
  %parent_handler = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3, i32 37, i32 13
  %15 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @eqbr_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3, i32 37, i32 15
  %16 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #9
  %parents = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3, i32 37, i32 16
  %17 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %if.end8.cleanup_crit_edge, label %if.end22

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %default_type = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3, i32 37, i32 10
  %18 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 3, i32 37, i32 9
  %19 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %virq = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %gctrl, i32 0, i32 6
  %20 = ptrtoint ptr %virq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %virq, align 4
  %22 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call5.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end8.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ 0, %if.end22 ], [ 0, %if.then6 ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eqbr_gpio_disable_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %lock = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %membase = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eqbr_gpio_enable_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %direction_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %direction_input, align 4
  %call3 = tail call i32 %5(ptr noundef %1, i32 noundef %3) #9
  %lock = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  tail call void @arm_heavy_mb() #9
  %shl = shl nuw i32 1, %3
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %membase = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #9, !srcloc !172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eqbr_gpio_ack_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %lock = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 7
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %membase = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eqbr_gpio_mask_ack_irq(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i.i, align 4
  %lock.i = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1.i, i32 0, i32 7
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %shl.i = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  %membase.i = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1.i, i32 0, i32 2
  %5 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #9, !srcloc !172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  %7 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_data.i.i, align 4
  %call1.i3 = tail call ptr @gpiochip_get_data(ptr noundef %8) #9
  %9 = ptrtoint ptr %hwirq.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hwirq.i.i, align 4
  %lock.i5 = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1.i3, i32 0, i32 7
  %call3.i6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i5) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %shl.i7 = shl nuw i32 1, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %shl.i7) #9
  %membase.i8 = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1.i3, i32 0, i32 2
  %12 = ptrtoint ptr %membase.i8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i8, align 4
  %add.ptr.i9 = getelementptr i8, ptr %13, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9, i32 %11) #9, !srcloc !172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i5, i32 noundef %call3.i6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqbr_gpio_set_irq_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %type, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 8
  br i1 %4, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -113, %switch.maskindex
  %5 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %switch.lobit.not = icmp eq i8 %5, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.cast = trunc i32 %switch.tableidx to i8
  %switch.downshift = lshr i8 119, %switch.cast
  %6 = and i8 %switch.downshift, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %switch.masked.not = icmp eq i8 %6, 0
  %switch.cast37 = trunc i32 %switch.tableidx to i8
  %switch.downshift39 = lshr i8 125, %switch.cast37
  %7 = and i8 %switch.downshift39, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.masked40.not = icmp eq i8 %7, 0
  %lock.i = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 7
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %membase.i = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 2
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  %shl9.i.i = shl nuw i32 1, %3
  br i1 %switch.masked.not, label %do.body.i.i, label %do.body2.i.i

do.body.i.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %or.i.i = or i32 %11, %shl9.i.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %12) #9, !srcloc !172
  br label %eqbr_cfg_bit.exit.i

do.body2.i.i:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i = xor i32 %shl9.i.i, -1
  %and.i.i = and i32 %11, %neg.i.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #9, !srcloc !172
  br label %eqbr_cfg_bit.exit.i

eqbr_cfg_bit.exit.i:                              ; preds = %do.body2.i.i, %do.body.i.i
  %14 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %switch.masked.not, label %do.body.i4.i, label %do.body2.i7.i

do.body.i4.i:                                     ; preds = %eqbr_cfg_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i3.i = or i32 %17, %shl9.i.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i3.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %18) #9, !srcloc !172
  br label %eqbr_cfg_bit.exit8.i

do.body2.i7.i:                                    ; preds = %eqbr_cfg_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i5.i = xor i32 %shl9.i.i, -1
  %and.i6.i = and i32 %17, %neg.i5.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %and.i6.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %19) #9, !srcloc !172
  br label %eqbr_cfg_bit.exit8.i

eqbr_cfg_bit.exit8.i:                             ; preds = %do.body2.i7.i, %do.body.i4.i
  %20 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %membase.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #9
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  br i1 %switch.masked40.not, label %do.body.i12.i, label %do.body2.i15.i

do.body.i12.i:                                    ; preds = %eqbr_cfg_bit.exit8.i
  call void @__sanitizer_cov_trace_pc() #11
  %or.i11.i = or i32 %23, %shl9.i.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i11.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #9, !srcloc !172
  br label %eqbr_irq_type_cfg.exit

do.body2.i15.i:                                   ; preds = %eqbr_cfg_bit.exit8.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i13.i = xor i32 %shl9.i.i, -1
  %and.i14.i = and i32 %23, %neg.i13.i
  %25 = tail call i32 @llvm.bswap.i32(i32 %and.i14.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %25) #9, !srcloc !172
  br label %eqbr_irq_type_cfg.exit

eqbr_irq_type_cfg.exit:                           ; preds = %do.body2.i15.i, %do.body.i12.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call.i) #9
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %26 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %27, i32 0, i32 3
  %handle_edge_irq.handle_level_irq = select i1 %switch.masked.not, ptr @handle_level_irq, ptr @handle_edge_irq
  %28 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %handle_edge_irq.handle_level_irq, ptr %handle_irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %eqbr_irq_type_cfg.exit, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %eqbr_irq_type_cfg.exit ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @eqbr_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %pins = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pins) #9
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %11(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %membase = getelementptr inbounds %struct.eqbr_gpio_ctrl, ptr %call1, i32 0, i32 2
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !169
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  %16 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %pins, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %18 to i32
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %pins, i32 noundef %conv, i32 noundef 0) #9
  %19 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ngpio, align 4
  %conv727 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %conv727)
  %cmp28 = icmp ult i32 %call5, %conv727
  br i1 %cmp28, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %offset.029 = phi i32 [ %call5, %for.body.lr.ph ], [ %call12, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %domain, align 4
  %call9 = call i32 @generic_handle_domain_irq(ptr noundef %22, i32 noundef %offset.029) #9
  %23 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ngpio, align 4
  %conv11 = zext i16 %24 to i32
  %add = add nuw i32 %offset.029, 1
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %pins, i32 noundef %conv11, i32 noundef %add) #9
  %25 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ngpio, align 4
  %conv7 = zext i16 %26 to i32
  %cmp = icmp ult i32 %call12, %conv7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %27 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i24 = icmp eq ptr %28, null
  br i1 %tobool.not.i24, label %if.else.i25, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i25:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %29 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i25, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %30, %if.else.i25 ], [ %28, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pins) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 78)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !35, !37, !38, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !90, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !124, !125, !126, !128, !130, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !149, !151, !152, !153, !155}
!llvm.module.flags = !{!157, !158, !159, !160, !161, !162, !163, !164}
!llvm.ident = !{!165}

!0 = !{ptr @__initcall__kmod_pinctrl_equilibrium__228_957_eqbr_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_equilibrium__228_957_eqbr_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 957, i32 1}
!2 = !{ptr @__exitcall_eqbr_pinctrl_driver_exit, !1, !"__exitcall_eqbr_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 959, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 960, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 961, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 952, i32 11}
!12 = !{ptr @eqbr_pinctrl_driver, !13, !"eqbr_pinctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 949, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 869, i32 2}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 875, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @pinbank_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @pinbank_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 888, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @pinbank_probe.__UNIQUE_ID_ddebug227, !25, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 840, i32 45}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 842, i32 3}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @pinbank_init._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @pinbank_init._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 852, i32 2}
!37 = !{ptr @pinbank_init.__UNIQUE_ID_ddebug226, !36, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!38 = !{ptr @pinctrl_reg.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 788, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 801, i32 22}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 808, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @pinctrl_reg.__UNIQUE_ID_ddebug225, !44, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 817, i32 3}
!49 = !{ptr @pinctrl_reg._entry, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @pinctrl_reg._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 823, i32 3}
!53 = !{ptr @pinctrl_reg._entry.18, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pinctrl_reg._entry_ptr.20, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @eqbr_pctl_ops, !56, !"eqbr_pctl_ops", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 274, i32 33}
!57 = !{ptr @eqbr_pinmux_ops, !58, !"eqbr_pinmux_ops", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 344, i32 32}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 292, i32 3}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @eqbr_set_pin_mux._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @eqbr_set_pin_mux._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 299, i32 3}
!66 = !{ptr @eqbr_set_pin_mux._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @eqbr_set_pin_mux._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @eqbr_pinconf_ops, !69, !"eqbr_pinconf_ops", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 555, i32 33}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 389, i32 3}
!72 = !{ptr @eqbr_pinconf_get._entry, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @eqbr_pinconf_get._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @eqbr_pinconf_get._entry.27, !75, !"_entry", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 396, i32 3}
!76 = !{ptr @eqbr_pinconf_get._entry_ptr.28, !75, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 422, i32 4}
!79 = !{ptr @eqbr_pinconf_get._entry.29, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @eqbr_pinconf_get._entry_ptr.31, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 459, i32 4}
!83 = !{ptr @eqbr_pinconf_set._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @eqbr_pinconf_set._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @eqbr_pinconf_set._entry.33, !86, !"_entry", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 491, i32 5}
!87 = !{ptr @eqbr_pinconf_set._entry_ptr.34, !86, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 709, i32 31}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 713, i32 52}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 715, i32 4}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @eqbr_build_groups._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @eqbr_build_groups._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 736, i32 5}
!99 = !{ptr @eqbr_build_groups._entry.39, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @eqbr_build_groups._entry_ptr.41, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 742, i32 5}
!103 = !{ptr @eqbr_build_groups._entry.42, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @eqbr_build_groups._entry_ptr.44, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 748, i32 39}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 749, i32 5}
!109 = !{ptr @eqbr_build_groups._entry.46, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @eqbr_build_groups._entry_ptr.48, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 761, i32 4}
!113 = !{ptr @eqbr_build_groups._entry.49, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @eqbr_build_groups._entry_ptr.51, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 689, i32 4}
!117 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @eqbr_build_functions._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @eqbr_build_functions._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 598, i32 35}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 600, i32 4}
!124 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @funcs_utils.__UNIQUE_ID_ddebug224, !123, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 214, i32 49}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 219, i32 4}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @gpiolib_reg._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @gpiolib_reg._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 229, i32 4}
!135 = !{ptr @gpiolib_reg._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @gpiolib_reg._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @gpiolib_reg.__key, !138, !"__key", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 233, i32 3}
!139 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 242, i32 4}
!142 = !{ptr @gpiolib_reg._entry.64, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @gpiolib_reg._entry_ptr.66, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @gpiolib_reg.lock_key, !145, !"lock_key", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 250, i32 9}
!146 = !{ptr @gpiolib_reg.request_key, !145, !"request_key", i1 false, i1 false}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 174, i32 42}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 175, i32 3}
!151 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @gpiochip_setup.__UNIQUE_ID_ddebug223, !150, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 180, i32 19}
!155 = !{ptr @eqbr_pinctrl_dt_match, !156, !"eqbr_pinctrl_dt_match", i1 false, i1 false}
!156 = !{!"../drivers/pinctrl/pinctrl-equilibrium.c", i32 943, i32 34}
!157 = !{i32 1, !"wchar_size", i32 2}
!158 = !{i32 1, !"min_enum_size", i32 4}
!159 = !{i32 8, !"branch-target-enforcement", i32 0}
!160 = !{i32 8, !"sign-return-address", i32 0}
!161 = !{i32 8, !"sign-return-address-all", i32 0}
!162 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!163 = !{i32 7, !"uwtable", i32 1}
!164 = !{i32 7, !"frame-pointer", i32 2}
!165 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2148323241, i64 2148323246, i64 2148323259, i64 2148323303, i64 2148323337, i64 2148323358}
!168 = !{!"auto-init"}
!169 = !{i64 4861473}
!170 = !{i64 2153897907}
!171 = !{i64 2153859310}
!172 = !{i64 4861055}
!173 = !{i64 2153864991}
!174 = !{i64 2153865534}
!175 = !{i64 2153866077}
!176 = !{i64 2153860576}
!177 = !{i64 2153866620}
!178 = !{i64 2153869332}
!179 = !{i64 2153875213}
!180 = !{i64 2153875416}
!181 = !{i64 2153838588}
!182 = !{i64 2153839664}
!183 = !{i64 2153840740}
!184 = !{i64 2153846342}
