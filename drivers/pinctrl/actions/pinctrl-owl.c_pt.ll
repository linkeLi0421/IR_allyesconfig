; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/actions/pinctrl-owl.c_pt.bc'
source_filename = "../drivers/pinctrl/actions/pinctrl-owl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.owl_pinctrl = type { ptr, ptr, %struct.gpio_chip, %struct.raw_spinlock, ptr, ptr, ptr, %struct.irq_chip, i32, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.owl_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr }
%struct.owl_gpio_port = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.owl_pingroup = type { ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.owl_pinmux_func = type { ptr, ptr, i32 }
%struct.owl_padinfo = type { i32, ptr, ptr }
%struct.owl_pullctl = type { i32, i32, i32 }
%struct.owl_st = type { i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@owl_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 933, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no clock defined\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"owl_pinctrl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/pinctrl/actions/pinctrl-owl.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@owl_pinctrl_probe._entry_ptr = internal global ptr @owl_pinctrl_probe._entry, section ".printk_index", align 4
@owl_pinctrl_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 939, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk enable failed\0A\00", [45 x i8] zeroinitializer }, align 32
@owl_pinctrl_probe._entry_ptr.7 = internal global ptr @owl_pinctrl_probe._entry.5, section ".printk_index", align 4
@owl_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pctrl->lock\00", [19 x i8] zeroinitializer }, align 32
@owl_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr null, i32 0, ptr @owl_pinctrl_ops, ptr @owl_pinmux_ops, ptr @owl_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@owl_pinctrl_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 962, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"could not register Actions OWL pinmux driver\0A\00", [50 x i8] zeroinitializer }, align 32
@owl_pinctrl_probe._entry_ptr.11 = internal global ptr @owl_pinctrl_probe._entry.9, section ".printk_index", align 4
@owl_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @owl_get_groups_count, ptr @owl_get_group_name, ptr @owl_get_group_pins, ptr @owl_pin_dbg_show, ptr @pinconf_generic_dt_node_to_map_all, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@owl_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @owl_get_funcs_count, ptr @owl_get_func_name, ptr @owl_get_func_groups, ptr @owl_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@owl_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @owl_pin_config_get, ptr @owl_pin_config_set, ptr @owl_group_config_get, ptr @owl_group_config_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@owl_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@owl_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@owl_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 909, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to register gpiochip\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owl_gpio_init\00", [18 x i8] zeroinitializer }, align 32
@owl_gpio_init._entry_ptr = internal global ptr @owl_gpio_init._entry, section ".printk_index", align 4
@switch.table.owl_group_config_get = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 512, i32 1024, i32 2048, i32 3072], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 3, i64 5, i64 14]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 2, i64 3, i64 5, i64 14]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 24]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 8, i64 9, i64 24]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 8]
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 933, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 939, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 943, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"owl_pinctrl_desc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 494, i32 28 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 962, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"owl_pinctrl_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 128, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"owl_pinmux_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 215, i32 32 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"owl_pinconf_ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 486, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 125, i32 16 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 907, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.84 = private constant [41 x i8] c"../drivers/pinctrl/actions/pinctrl-owl.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 909, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [34 x i8] c"switch.table.owl_group_config_get\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @owl_gpio_init._entry, ptr @owl_gpio_init._entry_ptr, ptr @owl_pinctrl_probe._entry, ptr @owl_pinctrl_probe._entry.5, ptr @owl_pinctrl_probe._entry.9, ptr @owl_pinctrl_probe._entry_ptr, ptr @owl_pinctrl_probe._entry_ptr.11, ptr @owl_pinctrl_probe._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @owl_pinctrl_probe.__key, ptr @.str.8, ptr @owl_pinctrl_desc, ptr @.str.10, ptr @owl_pinctrl_ops, ptr @owl_pinmux_ops, ptr @owl_pinconf_ops, ptr @.str.12, ptr @owl_gpio_init.lock_key, ptr @owl_gpio_init.request_key, ptr @.str.13, ptr @.str.14, ptr @switch.table.owl_group_config_get], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinctrl_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinctrl_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.owl_group_config_get to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_pinctrl_probe(ptr noundef %pdev, ptr noundef %soc_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 556, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 6
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call9, ptr %clk, align 4
  %cmp.i127 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i127, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str) #9
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  %5 = ptrtoint ptr %4 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call.i128 = tail call i32 @clk_prepare(ptr noundef %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %tobool.not.i = icmp eq i32 %call.i128, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end16.do.end23_crit_edge

if.end16.do.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

if.end.i:                                         ; preds = %if.end16
  %call1.i = tail call i32 @clk_enable(ptr noundef %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body26, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call9) #6
  br label %do.end23

do.end23:                                         ; preds = %if.then3.i, %if.end16.do.end23_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i128, %if.end16.do.end23_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup

do.body26:                                        ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @owl_pinctrl_probe.__key, i16 noundef signext 2) #6
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i129 = icmp eq ptr %7, null
  br i1 %tobool.not.i129, label %if.end.i130, label %do.body26.dev_name.exit_crit_edge

do.body26.dev_name.exit_crit_edge:                ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i130:                                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i130, %do.body26.dev_name.exit_crit_edge
  %retval.0.i131 = phi ptr [ %9, %if.end.i130 ], [ %7, %do.body26.dev_name.exit_crit_edge ]
  store ptr %retval.0.i131, ptr @owl_pinctrl_desc, align 4
  %10 = ptrtoint ptr %soc_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc_data, align 4
  store ptr %11, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @owl_pinctrl_desc, i32 0, i32 1), align 4
  %npins = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %soc_data, i32 0, i32 1
  %12 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %npins, align 4
  store i32 %13, ptr getelementptr inbounds (%struct.pinctrl_desc, ptr @owl_pinctrl_desc, i32 0, i32 2), align 4
  %direction_input = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @owl_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 9
  %15 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @owl_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 10
  %16 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @owl_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 12
  %17 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @owl_gpio_set, ptr %set, align 4
  %request = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 5
  %18 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @owl_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @owl_gpio_free, ptr %free, align 4
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %soc_data, ptr %soc, align 4
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev, ptr %call.i, align 4
  %call39 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @owl_pinctrl_desc, ptr noundef nonnull %call.i) #6
  %pctrldev = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 1
  %22 = ptrtoint ptr %pctrldev to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call39, ptr %pctrldev, align 4
  %cmp.i132 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %do.end45, label %if.end49

do.end45:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  %23 = ptrtoint ptr %pctrldev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pctrldev, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %err_exit

if.end49:                                         ; preds = %dev_name.exit
  %call50 = tail call i32 @platform_irq_count(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp = icmp slt i32 %call50, 0
  br i1 %cmp, label %if.end49.err_exit_crit_edge, label %if.end52

if.end49.err_exit_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end52:                                         ; preds = %if.end49
  %num_irq = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %num_irq to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call50, ptr %num_irq, align 4
  %27 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call50, i32 4) #6
  %28 = extractvalue { i32, i1 } %27, 1
  br i1 %28, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !46

devm_kcalloc.exit.thread:                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %irq142 = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 9
  %29 = ptrtoint ptr %irq142 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %irq142, align 4
  br label %err_exit

devm_kcalloc.exit:                                ; preds = %if.end52
  %30 = extractvalue { i32, i1 } %27, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %30, i32 noundef 3520) #6
  %irq = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call5.i.i, ptr %irq, align 4
  %tobool57.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool57.not, label %devm_kcalloc.exit.err_exit_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.err_exit_crit_edge:             ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %32 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp61148.not = icmp eq i32 %33, 0
  br i1 %cmp61148.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end65.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0149 = phi i32 [ %inc, %if.end65.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call62 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0149) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %for.body.err_exit_crit_edge, label %if.end65

for.body.err_exit_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

if.end65:                                         ; preds = %for.body
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq, align 4
  %arrayidx = getelementptr i32, ptr %35, i32 %i.0149
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call62, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0149, 1
  %37 = ptrtoint ptr %num_irq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_irq, align 4
  %cmp61 = icmp ult i32 %inc, %38
  br i1 %cmp61, label %if.end65.for.body_crit_edge, label %if.end65.for.end_crit_edge

if.end65.for.end_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end65.for.body_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end65.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa146 = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %38, %if.end65.for.end_crit_edge ]
  %chip1.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2
  %base.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 19
  %39 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %base.i, align 4
  %40 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %soc, align 4
  %ngpios.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ngpios.i, align 4
  %conv.i = trunc i32 %43 to i16
  %ngpio.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 20
  %44 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %ngpio.i, align 4
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %if.end.i.i133, label %for.end.dev_name.exit.i_crit_edge

for.end.dev_name.exit.i_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i133:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i133, %for.end.dev_name.exit.i_crit_edge
  %retval.0.i.i134 = phi ptr [ %50, %if.end.i.i133 ], [ %48, %for.end.dev_name.exit.i_crit_edge ]
  %51 = ptrtoint ptr %chip1.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %retval.0.i.i134, ptr %chip1.i, align 4
  %parent.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %52 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %46, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 4
  %53 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %owner.i, align 4
  %of_node.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 39
  %54 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node.i, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %55, align 4
  %irq_chip.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 7
  %name3.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 7, i32 1
  %58 = ptrtoint ptr %name3.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %name3.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 7, i32 6
  %59 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @owl_gpio_irq_ack, ptr %irq_ack.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 7, i32 7
  %60 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @owl_gpio_irq_mask, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 7, i32 9
  %61 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @owl_gpio_irq_unmask, ptr %irq_unmask.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 7, i32 13
  %62 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @owl_gpio_irq_set_type, ptr %irq_set_type.i, align 4
  %irq.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37
  %63 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %irq_chip.i, ptr %irq.i, align 4
  %handler.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 9
  %64 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @handle_simple_irq, ptr %handler.i, align 4
  %default_type.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 10
  %65 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %default_type.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 13
  %66 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @owl_gpio_irq_handler, ptr %parent_handler.i, align 4
  %67 = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 14
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i, ptr %67, align 4
  %num_parents.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 15
  %69 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.lcssa146, ptr %num_parents.i, align 4
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %irq, align 4
  %parents.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 16
  %72 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %71, ptr %parents.i, align 4
  %conv13.i = shl i32 %43, 2
  %73 = and i32 %conv13.i, 262140
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %46, i32 noundef %73, i32 noundef 3520) #6
  %map.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 17
  %74 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call5.i.i.i, ptr %map.i, align 4
  %tobool.not.i135 = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool.not.i135, label %dev_name.exit.i.err_exit_crit_edge, label %for.cond.preheader.i

dev_name.exit.i.err_exit_crit_edge:               ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_exit

for.cond.preheader.i:                             ; preds = %dev_name.exit.i
  %75 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %soc, align 4
  %nports91.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %nports91.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nports91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp92.not.i = icmp eq i32 %78, 0
  br i1 %cmp92.not.i, label %for.cond.preheader.i.for.end31.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end31.i_crit_edge:       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %79 = phi ptr [ %94, %for.end.i.for.body.i_crit_edge ], [ %76, %for.cond.preheader.i.for.body.i_crit_edge ]
  %offset.095.i = phi i32 [ %add28.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.093.i = phi i32 [ %inc30.i, %for.end.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ports.i, align 4
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %81, i32 %i.093.i, i32 1
  %82 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp2089.not.i = icmp eq i32 %83, 0
  br i1 %cmp2089.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body22.i_crit_edge

for.body.i.for.body22.i_crit_edge:                ; preds = %for.body.i
  br label %for.body22.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body22.i:                                     ; preds = %for.body22.i.for.body22.i_crit_edge, %for.body.i.for.body22.i_crit_edge
  %j.090.i = phi i32 [ %inc.i, %for.body22.i.for.body22.i_crit_edge ], [ 0, %for.body.i.for.body22.i_crit_edge ]
  %84 = ptrtoint ptr %parents.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %parents.i, align 4
  %arrayidx24.i = getelementptr i32, ptr %85, i32 %i.093.i
  %86 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx24.i, align 4
  %88 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %map.i, align 4
  %add.i = add i32 %j.090.i, %offset.095.i
  %arrayidx26.i = getelementptr i32, ptr %89, i32 %add.i
  %90 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %arrayidx26.i, align 4
  %inc.i = add nuw i32 %j.090.i, 1
  %91 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %pins.i, align 4
  %cmp20.i = icmp ult i32 %inc.i, %92
  br i1 %cmp20.i, label %for.body22.i.for.body22.i_crit_edge, label %for.body22.i.for.end.i_crit_edge

for.body22.i.for.end.i_crit_edge:                 ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body22.i.for.body22.i_crit_edge:              ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body22.i

for.end.i:                                        ; preds = %for.body22.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %.lcssa.i = phi i32 [ 0, %for.body.i.for.end.i_crit_edge ], [ %92, %for.body22.i.for.end.i_crit_edge ]
  %add28.i = add i32 %.lcssa.i, %offset.095.i
  %inc30.i = add nuw i32 %i.093.i, 1
  %93 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %soc, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nports.i, align 4
  %cmp.i136 = icmp ult i32 %inc30.i, %96
  br i1 %cmp.i136, label %for.end.i.for.body.i_crit_edge, label %for.end.i.for.end31.i_crit_edge

for.end.i.for.end31.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end31.i

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end31.i:                                      ; preds = %for.end.i.for.end31.i_crit_edge, %for.cond.preheader.i.for.end31.i_crit_edge
  %call33.i = tail call i32 @gpiochip_add_data_with_key(ptr noundef %chip1.i, ptr noundef %call.i, ptr noundef nonnull @owl_gpio_init.lock_key, ptr noundef nonnull @owl_gpio_init.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end70, label %do.end.i

do.end.i:                                         ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.13) #9
  br label %err_exit

if.end70:                                         ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %99 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

err_exit:                                         ; preds = %do.end.i, %dev_name.exit.i.err_exit_crit_edge, %for.body.err_exit_crit_edge, %devm_kcalloc.exit.err_exit_crit_edge, %devm_kcalloc.exit.thread, %if.end49.err_exit_crit_edge, %do.end45
  %ret.0 = phi i32 [ %25, %do.end45 ], [ %call50, %if.end49.err_exit_crit_edge ], [ -12, %devm_kcalloc.exit.err_exit_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %dev_name.exit.i.err_exit_crit_edge ], [ %call33.i, %do.end.i ], [ %call62, %for.body.err_exit_crit_edge ]
  %100 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %101) #6
  tail call void @clk_unprepare(ptr noundef %101) #6
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %if.end70, %do.end23, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %5, %do.end ], [ %retval.0.i.ph, %do.end23 ], [ %ret.0, %err_exit ], [ 0, %if.end70 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %start.026.i, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %7, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp3.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %9, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end22, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 627, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %offset, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %outen = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 2
  %14 = ptrtoint ptr %outen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outen, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %shl1.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl1.i, -1
  %and.i = and i32 %17, %neg.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %18) #6, !srcloc !48
  %inen = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 3
  %19 = ptrtoint ptr %inen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inen, align 4
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !47
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %or.i53 = or i32 %22, %shl1.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i53) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %23) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %start.026.i, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %7, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp3.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %9, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end22, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 649, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %offset, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %inen = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 3
  %14 = ptrtoint ptr %inen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %inen, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %shl1.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl1.i, -1
  %and.i = and i32 %17, %neg.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %18) #6, !srcloc !48
  %outen = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 2
  %19 = ptrtoint ptr %outen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %outen, align 4
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !47
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %or.i56 = or i32 %22, %shl1.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %or.i56) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %23) #6, !srcloc !48
  %dat = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 4
  %24 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dat, align 4
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !47
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %or.i60 = or i32 %27, %shl1.i
  %and.i62 = and i32 %27, %neg.i
  %val.0.i = select i1 %tobool.not.i, i32 %and.i62, i32 %or.i60
  %28 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %28) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %start.026.i, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %7, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp3.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %9, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end22, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 589, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %offset, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %dat = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 4
  %14 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dat, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  %18 = lshr i32 %17, %sub.i
  %19 = and i32 %18, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %19, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %start.026.i, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %7, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp3.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %9, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end22, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 609, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %offset, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %dat = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 4
  %14 = ptrtoint ptr %dat to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dat, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %shl1.i = shl nuw i32 1, %sub.i
  %or.i = or i32 %17, %shl1.i
  %neg.i = xor i32 %shl1.i, -1
  %and.i = and i32 %17, %neg.i
  %val.0.i = select i1 %tobool.not.i, i32 %and.i, i32 %or.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %val.0.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %18) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_gpio_request(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %start.026.i, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %7, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp3.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %9, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end22, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 542, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %offset, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %outen = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 2
  %14 = ptrtoint ptr %outen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outen, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %shl1.i = shl nuw i32 1, %sub.i
  %or.i = or i32 %17, %shl1.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %18) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_gpio_free(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp25.not.i = icmp eq i32 %3, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i, i32 %offset)
  %cmp2.not.i = icmp ugt i32 %start.026.i, %offset
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %7, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %offset)
  %cmp3.i = icmp ugt i32 %add.i, %offset
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 1
  %8 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %9, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %3
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end22, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 566, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end22:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %offset, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %12 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %outen = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 2
  %14 = ptrtoint ptr %outen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %outen, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %15
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %shl1.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl1.i, -1
  %and.i = and i32 %17, %neg.i
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %18) #6, !srcloc !48
  %inen = getelementptr %struct.owl_gpio_port, ptr %5, i32 %i.028.i, i32 3
  %19 = ptrtoint ptr %inen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %inen, align 4
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !47
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  %and.i55 = and i32 %22, %neg.i
  %23 = tail call i32 @llvm.bswap.i32(i32 %and.i55) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr31, i32 %23) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_get_groups_count(ptr noundef %pctrldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %ngroups = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @owl_get_group_name(ptr noundef %pctrldev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.owl_pingroup, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_get_group_pins(ptr noundef %pctrldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pads = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %pads to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pads, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %soc, align 4
  %groups2 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %groups2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups2, align 4
  %npads = getelementptr %struct.owl_pingroup, ptr %9, i32 %group, i32 2
  %10 = ptrtoint ptr %npads to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npads, align 4
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_pin_dbg_show(ptr noundef %pctrldev, ptr noundef %s, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
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
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i) #6
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
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_get_funcs_count(ptr noundef %pctrldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %nfunctions = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @owl_get_func_name(ptr noundef %pctrldev, i32 noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.owl_pinmux_func, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_get_func_groups(ptr noundef %pctrldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.owl_pinmux_func, ptr %3, i32 %function, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %soc, align 4
  %functions3 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %ngroups = getelementptr %struct.owl_pinmux_func, ptr %9, i32 %function, i32 2
  %10 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_set_mux(ptr noundef %pctrldev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %nfuncs.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 4
  %4 = ptrtoint ptr %nfuncs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfuncs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp50.not.i = icmp eq i32 %5, 0
  br i1 %cmp50.not.i, label %entry.for.end.i_crit_edge, label %for.body.lr.ph.i

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %entry
  %funcs.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 3
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %id.051.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %7, i32 %id.051.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %function)
  %cmp1.i = icmp eq i32 %9, %function
  br i1 %cmp1.i, label %for.body.i.for.end.i_crit_edge, label %for.inc.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %id.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.get_group_mfp_mask_val.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.get_group_mfp_mask_val.exit_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_group_mfp_mask_val.exit

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %entry.for.end.i_crit_edge
  %id.0.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ %id.051.i, %for.body.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0.lcssa.i, i32 %5)
  %cmp3.i = icmp eq i32 %id.0.lcssa.i, %5
  br i1 %cmp3.i, label %for.end.i.get_group_mfp_mask_val.exit_crit_edge, label %do.body, !prof !46

for.end.i.get_group_mfp_mask_val.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_group_mfp_mask_val.exit

get_group_mfp_mask_val.exit:                      ; preds = %for.end.i.get_group_mfp_mask_val.exit_crit_edge, %for.inc.i.get_group_mfp_mask_val.exit_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 178, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

do.body:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %mfpctl_width.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 7
  %10 = ptrtoint ptr %mfpctl_width.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mfpctl_width.i, align 4
  %shl.i = shl nuw i32 1, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0.lcssa.i, i32 %shl.i)
  %cmp27.i = icmp ugt i32 %id.0.lcssa.i, %shl.i
  %sub.i = select i1 %cmp27.i, i32 %shl.i, i32 0
  %spec.select.i = sub i32 %id.0.lcssa.i, %sub.i
  %sub30.i = add i32 %shl.i, -1
  %mfpctl_shift.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 6
  %12 = ptrtoint ptr %mfpctl_shift.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mfpctl_shift.i, align 4
  %shl31.i = shl i32 %sub30.i, %13
  %shl33.i = shl i32 %spec.select.i, %13
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %mfpctl_reg = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 5
  %16 = ptrtoint ptr %mfpctl_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mfpctl_reg, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !47
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %neg.i = xor i32 %shl31.i, -1
  %and.i = and i32 %19, %neg.i
  %and1.i = and i32 %shl33.i, %shl31.i
  %or.i = or i32 %and.i, %and1.i
  %20 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %20) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %get_group_mfp_mask_val.exit
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %get_group_mfp_mask_val.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_pin_config_get(ptr noundef %pctrldev, i32 noundef %pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %padinfo = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %padinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %padinfo, align 4
  %arrayidx = getelementptr %struct.owl_padinfo, ptr %5, i32 %pin
  %trunc = trunc i32 %1 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 0, label %entry.sw.bb.i_crit_edge
    i8 2, label %entry.sw.bb.i_crit_edge39
    i8 3, label %entry.sw.bb.i_crit_edge40
    i8 5, label %entry.sw.bb.i_crit_edge41
    i8 14, label %sw.bb6.i
  ]

entry.sw.bb.i_crit_edge41:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge40:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge39:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge39, %entry.sw.bb.i_crit_edge40, %entry.sw.bb.i_crit_edge41
  %pullctl.i = getelementptr %struct.owl_padinfo, ptr %5, i32 %pin, i32 1
  %7 = ptrtoint ptr %pullctl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pullctl.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %shift.i = getelementptr inbounds %struct.owl_pullctl, ptr %8, i32 0, i32 1
  %width5.i = getelementptr inbounds %struct.owl_pullctl, ptr %8, i32 0, i32 2
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  %st.i = getelementptr %struct.owl_padinfo, ptr %5, i32 %pin, i32 2
  %9 = ptrtoint ptr %st.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %st.i, align 4
  %tobool7.not.i = icmp eq ptr %10, null
  br i1 %tobool7.not.i, label %sw.bb6.i.cleanup_crit_edge, label %if.end9.i

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %shift13.i = getelementptr inbounds %struct.owl_st, ptr %10, i32 0, i32 1
  %width15.i = getelementptr inbounds %struct.owl_st, ptr %10, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end9.i, %if.end.i
  %reg.0.in = phi ptr [ %10, %if.end9.i ], [ %8, %if.end.i ]
  %bit.0.in = phi ptr [ %shift13.i, %if.end9.i ], [ %shift.i, %if.end.i ]
  %storemerge.in.i = phi ptr [ %width15.i, %if.end9.i ], [ %width5.i, %if.end.i ]
  %11 = ptrtoint ptr %bit.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %bit.0 = load i32, ptr %bit.0.in, align 4
  %12 = ptrtoint ptr %reg.0.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %reg.0 = load i32, ptr %reg.0.in, align 4
  %13 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %base.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %reg.0
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %notmask.i = shl nsw i32 -1, %storemerge.i
  %sub.i = xor i32 %notmask.i, -1
  %shr.i = lshr i32 %17, %bit.0
  %and.i33 = and i32 %shr.i, %sub.i
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i33, ptr %arg, align 4
  %19 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %soc, align 4
  %padctl_val2arg = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %20, i32 0, i32 10
  %21 = ptrtoint ptr %padctl_val2arg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %padctl_val2arg, align 4
  %tobool5.not = icmp eq ptr %22, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call10 = call i32 %22(ptr noundef %arrayidx, i32 noundef %and.i, ptr noundef nonnull %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arg, align 4
  %shl.i = shl i32 %24, 8
  %or.i = or i32 %shl.i, %and.i
  %25 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -524, %if.end.cleanup_crit_edge ], [ %call10, %if.end7.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ -22, %sw.bb6.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_pin_config_set(ptr noundef %pctrldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  %arg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arg) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %padinfo = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %padinfo to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %padinfo, align 4
  %arrayidx = getelementptr %struct.owl_padinfo, ptr %3, i32 %pin
  %st.i = getelementptr %struct.owl_padinfo, ptr %3, i32 %pin, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp56.not = icmp eq i32 %num_configs, 0
  br i1 %cmp56.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pullctl.i = getelementptr %struct.owl_padinfo, ptr %3, i32 %pin, i32 1
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.057
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %and.i = and i32 %5, 255
  %shr.i = lshr i32 %5, 8
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr.i, ptr %arg, align 4
  %trunc = trunc i32 %5 to i8
  %7 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 0, label %for.body.sw.bb.i_crit_edge
    i8 2, label %for.body.sw.bb.i_crit_edge63
    i8 3, label %for.body.sw.bb.i_crit_edge64
    i8 5, label %for.body.sw.bb.i_crit_edge65
    i8 14, label %sw.bb6.i
  ]

for.body.sw.bb.i_crit_edge65:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge64:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge63:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge63, %for.body.sw.bb.i_crit_edge64, %for.body.sw.bb.i_crit_edge65
  %8 = ptrtoint ptr %pullctl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pullctl.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %sw.bb.i.cleanup_crit_edge, label %if.end.i

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %shift.i = getelementptr inbounds %struct.owl_pullctl, ptr %9, i32 0, i32 1
  %width5.i = getelementptr inbounds %struct.owl_pullctl, ptr %9, i32 0, i32 2
  br label %if.end

sw.bb6.i:                                         ; preds = %for.body
  %10 = ptrtoint ptr %st.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %st.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %sw.bb6.i.cleanup_crit_edge, label %if.end9.i

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #8
  %shift13.i = getelementptr inbounds %struct.owl_st, ptr %11, i32 0, i32 1
  %width15.i = getelementptr inbounds %struct.owl_st, ptr %11, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.end9.i, %if.end.i
  %reg.1.in = phi ptr [ %11, %if.end9.i ], [ %9, %if.end.i ]
  %bit.1.in = phi ptr [ %shift13.i, %if.end9.i ], [ %shift.i, %if.end.i ]
  %storemerge.in.i = phi ptr [ %width15.i, %if.end9.i ], [ %width5.i, %if.end.i ]
  %12 = ptrtoint ptr %bit.1.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %bit.1 = load i32, ptr %bit.1.in, align 4
  %13 = ptrtoint ptr %reg.1.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %reg.1 = load i32, ptr %reg.1.in, align 4
  %14 = ptrtoint ptr %storemerge.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %storemerge.i = load i32, ptr %storemerge.in.i, align 4
  %15 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %soc, align 4
  %padctl_arg2val = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %16, i32 0, i32 11
  %17 = ptrtoint ptr %padctl_arg2val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %padctl_arg2val, align 4
  %tobool7.not = icmp eq ptr %18, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call12 = call i32 %18(ptr noundef %arrayidx, i32 noundef %and.i, ptr noundef nonnull %arg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %if.end9
  %call17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %19 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arg, align 4
  %notmask.i = shl nsw i32 -1, %storemerge.i
  %sub.i = xor i32 %notmask.i, -1
  %shl1.i = shl i32 %sub.i, %bit.1
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %reg.1
  %shl2.i = shl i32 %20, %bit.1
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %24 = call i32 @llvm.bswap.i32(i32 %23) #6
  %neg.i.i = xor i32 %shl1.i, -1
  %and.i.i = and i32 %24, %neg.i.i
  %and1.i.i = and i32 %shl2.i, %shl1.i
  %or.i.i = or i32 %and.i.i, %and1.i.i
  %25 = call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %25) #6, !srcloc !48
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #6
  %inc = add nuw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ -22, %sw.bb6.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ], [ %call12, %if.end9.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_group_config_get(ptr noundef %pctrldev, i32 noundef %group, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %trunc = trunc i32 %1 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 9, label %sw.bb.i
    i8 24, label %sw.bb2.i
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %entry
  %drv_reg.i = getelementptr %struct.owl_pingroup, ptr %5, i32 %group, i32 8
  %7 = ptrtoint ptr %drv_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  br i1 %cmp.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i26

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %entry
  %sr_reg.i = getelementptr %struct.owl_pingroup, ptr %5, i32 %group, i32 11
  %9 = ptrtoint ptr %sr_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sr_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i = icmp slt i32 %10, 0
  br i1 %cmp3.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb5.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i26:                                        ; preds = %sw.bb.i
  %drv_shift.i = getelementptr %struct.owl_pingroup, ptr %5, i32 %group, i32 9
  %11 = ptrtoint ptr %drv_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drv_shift.i, align 4
  %drv_width.i = getelementptr %struct.owl_pingroup, ptr %5, i32 %group, i32 10
  %13 = ptrtoint ptr %drv_width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %storemerge.i39 = load i32, ptr %drv_width.i, align 4
  %base.i40 = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %base.i40 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i40, align 4
  %add.ptr.i41 = getelementptr i8, ptr %15, i32 %8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i41) #6, !srcloc !47
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %notmask.i42 = shl nsw i32 -1, %storemerge.i39
  %sub.i43 = xor i32 %notmask.i42, -1
  %shr.i44 = lshr i32 %17, %12
  %and.i2545 = and i32 %shr.i44, %sub.i43
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i2545)
  %18 = icmp ult i32 %and.i2545, 4
  br i1 %18, label %switch.lookup, label %sw.bb.i26.cleanup_crit_edge

sw.bb.i26.cleanup_crit_edge:                      ; preds = %sw.bb.i26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb5.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %sr_shift.i = getelementptr %struct.owl_pingroup, ptr %5, i32 %group, i32 12
  %19 = ptrtoint ptr %sr_shift.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sr_shift.i, align 4
  %sr_width.i = getelementptr %struct.owl_pingroup, ptr %5, i32 %group, i32 13
  %21 = ptrtoint ptr %sr_width.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %storemerge.i = load i32, ptr %sr_width.i, align 4
  %base.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 %10
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #6
  %notmask.i = shl nsw i32 -1, %storemerge.i
  %sub.i = xor i32 %notmask.i, -1
  %shr.i = lshr i32 %25, %20
  %and.i25 = and i32 %shr.i, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i25)
  %tobool.not.i.not = icmp eq i32 %and.i25, 0
  %phi.bo = select i1 %tobool.not.i.not, i32 0, i32 256
  br label %if.end7

switch.lookup:                                    ; preds = %sw.bb.i26
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.owl_group_config_get, i32 0, i32 %and.i2545
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end7

if.end7:                                          ; preds = %switch.lookup, %sw.bb5.i
  %.sink.i = phi i32 [ %phi.bo, %sw.bb5.i ], [ %switch.load, %switch.lookup ]
  %or.i = or i32 %.sink.i, %and.i
  %27 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.bb.i26.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -22, %sw.bb.i26.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_group_config_set(ptr noundef %pctrldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrldev) #6
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %sr_reg.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 11
  %drv_reg.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp75.not = icmp eq i32 %num_configs, 0
  br i1 %cmp75.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %sr_shift.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 12
  %sr_width.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 13
  %drv_shift.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 9
  %drv_width.i = getelementptr %struct.owl_pingroup, ptr %3, i32 %group, i32 10
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.body.lr.ph
  %i.076 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.076
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %shr.i = lshr i32 %5, 8
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 9, label %sw.bb.i
    i8 24, label %sw.bb2.i
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i:                                          ; preds = %for.body
  %7 = ptrtoint ptr %drv_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %drv_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp slt i32 %8, 0
  br i1 %cmp.i, label %sw.bb.i.cleanup_crit_edge, label %sw.bb.i42

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2.i:                                         ; preds = %for.body
  %9 = ptrtoint ptr %sr_reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sr_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3.i = icmp slt i32 %10, 0
  br i1 %cmp3.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb5.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb.i42:                                        ; preds = %sw.bb.i
  %11 = ptrtoint ptr %drv_shift.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %drv_shift.i, align 4
  %13 = ptrtoint ptr %drv_width.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %storemerge.i55 = load i32, ptr %drv_width.i, align 4
  %14 = add nsw i32 %shr.i, -2
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 31) #6
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %15, label %sw.bb.i42.cleanup_crit_edge [
    i32 0, label %sw.bb.i42.do.body_crit_edge
    i32 1, label %sw.bb2.i43
    i32 3, label %sw.bb3.i
    i32 5, label %sw.bb4.i
  ]

sw.bb.i42.do.body_crit_edge:                      ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb.i42.cleanup_crit_edge:                      ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb2.i43:                                       ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb3.i:                                         ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb4.i:                                         ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb5.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %sr_shift.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sr_shift.i, align 4
  %19 = ptrtoint ptr %sr_width.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %storemerge.i = load i32, ptr %sr_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool.not.i = icmp ugt i32 %5, 255
  %..i = zext i1 %tobool.not.i to i32
  br label %do.body

do.body:                                          ; preds = %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i43, %sw.bb.i42.do.body_crit_edge
  %storemerge.i62 = phi i32 [ %storemerge.i55, %sw.bb4.i ], [ %storemerge.i55, %sw.bb3.i ], [ %storemerge.i55, %sw.bb2.i43 ], [ %storemerge.i55, %sw.bb.i42.do.body_crit_edge ], [ %storemerge.i, %sw.bb5.i ]
  %bit.159 = phi i32 [ %12, %sw.bb4.i ], [ %12, %sw.bb3.i ], [ %12, %sw.bb2.i43 ], [ %12, %sw.bb.i42.do.body_crit_edge ], [ %18, %sw.bb5.i ]
  %reg.156 = phi i32 [ %8, %sw.bb4.i ], [ %8, %sw.bb3.i ], [ %8, %sw.bb2.i43 ], [ %8, %sw.bb.i42.do.body_crit_edge ], [ %10, %sw.bb5.i ]
  %.sink.i = phi i32 [ 3, %sw.bb4.i ], [ 2, %sw.bb3.i ], [ 1, %sw.bb2.i43 ], [ %15, %sw.bb.i42.do.body_crit_edge ], [ %..i, %sw.bb5.i ]
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %notmask.i = shl nsw i32 -1, %storemerge.i62
  %sub.i = xor i32 %notmask.i, -1
  %shl1.i = shl i32 %sub.i, %bit.159
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %21, i32 %reg.156
  %shl2.i = shl i32 %.sink.i, %bit.159
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !47
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %neg.i.i = xor i32 %shl1.i, -1
  %and.i.i = and i32 %23, %neg.i.i
  %and1.i.i = and i32 %shl2.i, %shl1.i
  %or.i.i = or i32 %and.i.i, %and1.i.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #6
  %inc = add nuw i32 %i.076, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %do.body.cleanup_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %do.body.cleanup_crit_edge, %sw.bb.i42.cleanup_crit_edge, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %sw.bb.i.cleanup_crit_edge ], [ -22, %sw.bb.i42.cleanup_crit_edge ], [ 0, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_gpio_irq_ack(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 3
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @owl_gpio_get(ptr noundef %1, i32 noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %. = select i1 %tobool.not, i32 1, i32 2
  tail call fastcc void @irq_set_type(ptr noundef %call1, i32 noundef %3, i32 noundef %.)
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry.if.end5_crit_edge
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 5
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp25.not.i = icmp eq i32 %11, 0
  br i1 %cmp25.not.i, label %if.end5.do.end_crit_edge, label %for.body.lr.ph.i

if.end5.do.end_crit_edge:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %if.end5
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start.026.i)
  %cmp2.not.i = icmp ult i32 %3, %start.026.i
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %13, i32 %i.028.i, i32 1
  %14 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %15, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i)
  %cmp3.i = icmp ult i32 %3, %add.i
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %13, i32 %i.028.i, i32 1
  %16 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %17, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %13, i32 %i.028.i
  %cmp7 = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp7, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end31, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %if.end5.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 800, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end31:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 6
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %20 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 3
  %call35 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %intc_ctl = getelementptr %struct.owl_gpio_port, ptr %13, i32 %i.028.i, i32 5
  %22 = ptrtoint ptr %intc_ctl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %intc_ctl, align 4
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %23
  %shared_ctl_offset = getelementptr %struct.owl_gpio_port, ptr %13, i32 %i.028.i, i32 9
  %24 = ptrtoint ptr %shared_ctl_offset to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %shared_ctl_offset, align 4
  %conv39 = zext i8 %25 to i32
  %mul = mul nuw nsw i32 %conv39, 5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !47
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %shl1.i = shl nuw i32 1, %mul
  %or.i = or i32 %shl1.i, %27
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %28) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_gpio_irq_mask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not.i = icmp eq i32 %7, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start.026.i)
  %cmp2.not.i = icmp ult i32 %3, %start.026.i
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 1
  %10 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %11, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i)
  %cmp3.i = icmp ult i32 %3, %add.i
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 1
  %12 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %13, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end23, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 732, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %owl_gpio_get_port.exit
  %sub.i = sub i32 %3, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %intc_msk = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 7
  %18 = ptrtoint ptr %intc_msk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intc_msk, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %shl1.i = shl nuw i32 1, %sub.i
  %neg.i = xor i32 %shl1.i, -1
  %and.i = and i32 %21, %neg.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %22) #6, !srcloc !48
  %23 = ptrtoint ptr %intc_msk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intc_msk, align 4
  %add.ptr32 = getelementptr i8, ptr %add.ptr, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #6, !srcloc !47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp35 = icmp eq i32 %25, 0
  br i1 %cmp35, label %if.then37, label %if.end23.do.body41_crit_edge

if.end23.do.body41_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body41

if.then37:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %intc_ctl = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 5
  %26 = ptrtoint ptr %intc_ctl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %intc_ctl, align 4
  %add.ptr38 = getelementptr i8, ptr %add.ptr, i32 %27
  %shared_ctl_offset = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 9
  %28 = ptrtoint ptr %shared_ctl_offset to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %shared_ctl_offset, align 4
  %conv39 = zext i8 %29 to i32
  %mul = mul nuw nsw i32 %conv39, 5
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !47
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  %shl1.i68 = shl i32 2, %mul
  %neg.i70 = xor i32 %shl1.i68, -1
  %and.i71 = and i32 %31, %neg.i70
  %32 = tail call i32 @llvm.bswap.i32(i32 %and.i71) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %32) #6, !srcloc !48
  br label %do.body41

do.body41:                                        ; preds = %if.then37, %if.end23.do.body41_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body41, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_gpio_irq_unmask(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 5
  %4 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp25.not.i = icmp eq i32 %7, 0
  br i1 %cmp25.not.i, label %entry.do.end_crit_edge, label %for.body.lr.ph.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %start.026.i)
  %cmp2.not.i = icmp ult i32 %3, %start.026.i
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 1
  %10 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %11, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %add.i)
  %cmp3.i = icmp ult i32 %3, %add.i
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 1
  %12 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %13, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end23, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 761, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %3, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 6
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %16 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %17
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %call1, i32 0, i32 3
  %call27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %intc_ctl = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 5
  %18 = ptrtoint ptr %intc_ctl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %intc_ctl, align 4
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #6, !srcloc !47
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %shared_ctl_offset = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 9
  %22 = ptrtoint ptr %shared_ctl_offset to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shared_ctl_offset, align 4
  %conv33 = zext i8 %23 to i32
  %mul = mul nuw nsw i32 %conv33, 5
  %shl = shl i32 6, %mul
  %or = or i32 %shl, %21
  %24 = tail call i32 @llvm.bswap.i32(i32 %or)
  %25 = ptrtoint ptr %intc_ctl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %intc_ctl, align 4
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr35, i32 %24) #6, !srcloc !48
  %intc_msk = getelementptr %struct.owl_gpio_port, ptr %9, i32 %i.028.i, i32 7
  %27 = ptrtoint ptr %intc_msk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %intc_msk, align 4
  %add.ptr36 = getelementptr i8, ptr %add.ptr, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36) #6, !srcloc !47
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #6
  %shl1.i = shl nuw i32 1, %sub.i
  %or.i = or i32 %30, %shl1.i
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 %31) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call27) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_gpio_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #6
  %and = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %common.i.i6 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %common.i.i6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i.i6, align 4
  %handle_irq.i7 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 3
  %handle_edge_irq.handle_level_irq = select i1 %tobool.not, ptr @handle_edge_irq, ptr @handle_level_irq
  %4 = ptrtoint ptr %handle_irq.i7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %handle_edge_irq.handle_level_irq, ptr %handle_irq.i7, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %5 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hwirq, align 4
  tail call fastcc void @irq_set_type(ptr noundef %call1, i32 noundef %6, i32 noundef %type)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_gpio_irq_handler(ptr noundef %desc) #0 align 64 {
entry:
  %pending_irq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %domain3 = getelementptr inbounds %struct.owl_pinctrl, ptr %1, i32 0, i32 2, i32 37, i32 1
  %4 = ptrtoint ptr %domain3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain3, align 4
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending_irq) #6
  %8 = ptrtoint ptr %pending_irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %pending_irq, align 4, !annotation !49
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %9 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %11 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %12(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %13 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %14(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %16, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %16(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %soc = getelementptr inbounds %struct.owl_pinctrl, ptr %1, i32 0, i32 5
  %17 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %soc, align 4
  %nports57 = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %18, i32 0, i32 9
  %19 = ptrtoint ptr %nports57 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nports57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp58.not = icmp eq i32 %20, 0
  br i1 %cmp58.not, label %chained_irq_enter.exit.for.end27_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end27_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end27

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %base6 = getelementptr inbounds %struct.owl_pinctrl, ptr %1, i32 0, i32 6
  %irq8 = getelementptr inbounds %struct.owl_pinctrl, ptr %1, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %skip.for.body_crit_edge, %for.body.lr.ph
  %21 = phi ptr [ %18, %for.body.lr.ph ], [ %53, %skip.for.body_crit_edge ]
  %i.062 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %skip.for.body_crit_edge ]
  %offset.059 = phi i32 [ 0, %for.body.lr.ph ], [ %add25, %skip.for.body_crit_edge ]
  %ports = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.owl_gpio_port, ptr %23, i32 %i.062
  %24 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base6, align 4
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %25, i32 %27
  %28 = ptrtoint ptr %irq8 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq8, align 4
  %arrayidx9 = getelementptr i32, ptr %29, i32 %i.062
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %31)
  %cmp10.not = icmp eq i32 %7, %31
  br i1 %cmp10.not, label %if.end, label %for.body.skip_crit_edge

for.body.skip_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end:                                           ; preds = %for.body
  %intc_pd = getelementptr %struct.owl_gpio_port, ptr %23, i32 %i.062, i32 6
  %32 = ptrtoint ptr %intc_pd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %intc_pd, align 4
  %add.ptr11 = getelementptr i8, ptr %add.ptr, i32 %33
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #6, !srcloc !47
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %pending_irq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %pending_irq, align 4
  %pins = getelementptr %struct.owl_gpio_port, ptr %23, i32 %i.062, i32 1
  %37 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pins, align 4
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending_irq, i32 noundef %38, i32 noundef 0) #6
  %39 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pins, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %40)
  %cmp1655 = icmp ult i32 %call13, %40
  br i1 %cmp1655, label %if.end.for.body17_crit_edge, label %if.end.skip_crit_edge

if.end.skip_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

if.end.for.body17_crit_edge:                      ; preds = %if.end
  br label %for.body17

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %if.end.for.body17_crit_edge
  %pin.056 = phi i32 [ %call23, %for.body17.for.body17_crit_edge ], [ %call13, %if.end.for.body17_crit_edge ]
  %add = add i32 %pin.056, %offset.059
  %call18 = call i32 @generic_handle_domain_irq(ptr noundef %5, i32 noundef %add) #6
  %41 = ptrtoint ptr %intc_pd to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %intc_pd, align 4
  %add.ptr20 = getelementptr i8, ptr %add.ptr, i32 %42
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !47
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  %shl1.i = shl nuw i32 1, %pin.056
  %or.i = or i32 %44, %shl1.i
  %45 = call i32 @llvm.bswap.i32(i32 %or.i) #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %45) #6, !srcloc !48
  %46 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pins, align 4
  %add22 = add nuw i32 %pin.056, 1
  %call23 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending_irq, i32 noundef %47, i32 noundef %add22) #6
  %48 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pins, align 4
  %cmp16 = icmp ult i32 %call23, %49
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.skip_crit_edge

for.body17.skip_crit_edge:                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %skip

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

skip:                                             ; preds = %for.body17.skip_crit_edge, %if.end.skip_crit_edge, %for.body.skip_crit_edge
  %pins24 = getelementptr %struct.owl_gpio_port, ptr %23, i32 %i.062, i32 1
  %50 = ptrtoint ptr %pins24 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pins24, align 4
  %add25 = add i32 %51, %offset.059
  %inc = add nuw i32 %i.062, 1
  %52 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %soc, align 4
  %nports = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %nports to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nports, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %skip.for.body_crit_edge, label %skip.for.end27_crit_edge

skip.for.end27_crit_edge:                         ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end27

skip.for.body_crit_edge:                          ; preds = %skip
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end27:                                        ; preds = %skip.for.end27_crit_edge, %chained_irq_enter.exit.for.end27_crit_edge
  %56 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i52 = icmp eq ptr %57, null
  br i1 %tobool.not.i52, label %if.else.i53, label %for.end27.chained_irq_exit.exit_crit_edge

for.end27.chained_irq_exit.exit_crit_edge:        ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i53:                                      ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %58 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i53, %for.end27.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %59, %if.else.i53 ], [ %57, %for.end27.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending_irq) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_set_type(ptr noundef %pctrl, i32 noundef %gpio, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chip = getelementptr inbounds %struct.owl_pinctrl, ptr %pctrl, i32 0, i32 2
  %call = tail call i32 @owl_gpio_get(ptr noundef %chip, i32 noundef %gpio)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %. = select i1 %tobool.not, i32 2, i32 3
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  %irq_type.0 = phi i32 [ 1, %sw.bb4 ], [ 3, %sw.bb2 ], [ 2, %sw.bb1 ], [ %., %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %soc.i = getelementptr inbounds %struct.owl_pinctrl, ptr %pctrl, i32 0, i32 5
  %1 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %soc.i, align 4
  %nports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %nports.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp25.not.i = icmp eq i32 %4, 0
  br i1 %cmp25.not.i, label %sw.epilog.do.end_crit_edge, label %for.body.lr.ph.i

sw.epilog.do.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %sw.epilog
  %ports.i = getelementptr inbounds %struct.owl_pinctrl_soc_data, ptr %2, i32 0, i32 8
  %5 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %start.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add5.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %start.026.i, i32 %gpio)
  %cmp2.not.i = icmp ugt i32 %start.026.i, %gpio
  br i1 %cmp2.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %pins.i = getelementptr %struct.owl_gpio_port, ptr %6, i32 %i.028.i, i32 1
  %7 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pins.i, align 4
  %add.i = add i32 %8, %start.026.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %gpio)
  %cmp3.i = icmp ugt i32 %add.i, %gpio
  br i1 %cmp3.i, label %owl_gpio_get_port.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %pins4.i = getelementptr %struct.owl_gpio_port, ptr %6, i32 %i.028.i, i32 1
  %9 = ptrtoint ptr %pins4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pins4.i, align 4
  %add5.i = add i32 %10, %start.026.i
  %inc.i = add nuw i32 %i.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %4
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

owl_gpio_get_port.exit:                           ; preds = %land.lhs.true.i
  %arrayidx.le.i = getelementptr %struct.owl_gpio_port, ptr %6, i32 %i.028.i
  %cmp = icmp eq ptr %arrayidx.le.i, null
  br i1 %cmp, label %owl_gpio_get_port.exit.do.end_crit_edge, label %if.end29, !prof !46

owl_gpio_get_port.exit.do.end_crit_edge:          ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %owl_gpio_get_port.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %sw.epilog.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 705, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end29:                                         ; preds = %owl_gpio_get_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i = sub i32 %gpio, %start.026.i
  %base = getelementptr inbounds %struct.owl_pinctrl, ptr %pctrl, i32 0, i32 6
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %13 = ptrtoint ptr %arrayidx.le.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.le.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %14
  %lock = getelementptr inbounds %struct.owl_pinctrl, ptr %pctrl, i32 0, i32 3
  %call34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp37 = icmp slt i32 %sub.i, 16
  %cond = select i1 %cmp37, i32 4, i32 0
  %intc_type = getelementptr %struct.owl_gpio_port, ptr %6, i32 %i.028.i, i32 8
  %15 = ptrtoint ptr %intc_type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %intc_type, align 4
  %add.ptr39 = getelementptr i8, ptr %add.ptr, i32 %16
  %add.ptr40 = getelementptr i8, ptr %add.ptr39, i32 %cond
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #6, !srcloc !47
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %rem = srem i32 %sub.i, 16
  %mul = shl nsw i32 %rem, 1
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and = and i32 %18, %neg
  %shl45 = shl i32 %irq_type.0, %mul
  %or = or i32 %and, %shl45
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  %20 = ptrtoint ptr %intc_type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %intc_type, align 4
  %add.ptr47 = getelementptr i8, ptr %add.ptr, i32 %21
  %add.ptr48 = getelementptr i8, ptr %add.ptr47, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %19) #6, !srcloc !48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call34) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 933, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @owl_pinctrl_probe._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @owl_pinctrl_probe._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 939, i32 3}
!10 = !{ptr @owl_pinctrl_probe._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @owl_pinctrl_probe._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @owl_pinctrl_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 943, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 962, i32 3}
!17 = !{ptr @owl_pinctrl_probe._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @owl_pinctrl_probe._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @owl_pinctrl_desc, !20, !"owl_pinctrl_desc", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 494, i32 28}
!21 = !{ptr @owl_pinctrl_ops, !22, !"owl_pinctrl_ops", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 128, i32 33}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 125, i32 16}
!25 = !{ptr @owl_pinmux_ops, !26, !"owl_pinmux_ops", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 215, i32 32}
!27 = !{ptr @owl_pinconf_ops, !28, !"owl_pinconf_ops", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 486, i32 33}
!29 = !{ptr @owl_gpio_init.lock_key, !30, !"lock_key", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 907, i32 8}
!31 = !{ptr @owl_gpio_init.request_key, !30, !"request_key", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/actions/pinctrl-owl.c", i32 909, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @owl_gpio_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @owl_gpio_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 4892949}
!48 = !{i64 4892531}
!49 = !{!"auto-init"}
