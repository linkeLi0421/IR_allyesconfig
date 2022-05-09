; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/qcom/pinctrl-msm.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-msm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+msm_pinctrl_dev_pm_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_msm_pinctrl_dev_pm_ops\09\09\09\09"
module asm "\09.long\09__crc_msm_pinctrl_dev_pm_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msm_pinctrl_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22msm_pinctrl_dev_pm_ops\22\09\09\09\09\09"
module asm "__kstrtabns_msm_pinctrl_dev_pm_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+msm_pinctrl_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_msm_pinctrl_probe\09\09\09\09"
module asm "\09.long\09__crc_msm_pinctrl_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msm_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22msm_pinctrl_probe\22\09\09\09\09\09"
module asm "__kstrtabns_msm_pinctrl_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+msm_pinctrl_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_msm_pinctrl_remove\09\09\09\09"
module asm "\09.long\09__crc_msm_pinctrl_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_msm_pinctrl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22msm_pinctrl_remove\22\09\09\09\09\09"
module asm "__kstrtabns_msm_pinctrl_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.msm_pinctrl = type { ptr, ptr, %struct.gpio_chip, %struct.pinctrl_desc, %struct.notifier_block, %struct.irq_chip, i32, i8, %struct.raw_spinlock, [10 x i32], [10 x i32], [10 x i32], [10 x i32], ptr, [4 x ptr], [4 x i32] }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.msm_pinctrl_soc_data = type { ptr, i32, ptr, i32, ptr, i32, i32, i8, ptr, i32, ptr, ptr, i32, i8, i32, i32 }
%struct.msm_function = type { ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.msm_gpio_wakeirq_map = type { i32, i32 }
%struct.msm_pingroup = type <{ ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i64, i32 }>
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@msm_pinctrl_dev_pm_ops = dso_local constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @msm_pinctrl_suspend, ptr @msm_pinctrl_resume, ptr @msm_pinctrl_suspend, ptr @msm_pinctrl_resume, ptr @msm_pinctrl_suspend, ptr @msm_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_msm_pinctrl_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_msm_pinctrl_dev_pm_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_msm_pinctrl_dev_pm_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msm_pinctrl_dev_pm_ops to i32), ptr @__kstrtab_msm_pinctrl_dev_pm_ops, ptr @__kstrtabns_msm_pinctrl_dev_pm_ops }, section "___ksymtab+msm_pinctrl_dev_pm_ops", align 4
@msm_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @msm_gpio_get_direction, ptr @msm_gpio_direction_input, ptr @msm_gpio_direction_output, ptr @msm_gpio_get, ptr null, ptr @msm_gpio_set, ptr null, ptr null, ptr null, ptr @msm_gpio_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"qcom,ipq8064-pinctrl\00", [43 x i8] zeroinitializer }, align 32
@msm_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pctrl->lock\00", [19 x i8] zeroinitializer }, align 32
@msm_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @msm_get_groups_count, ptr @msm_get_group_name, ptr @msm_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@msm_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr @msm_pinmux_request, ptr null, ptr @msm_get_functions_count, ptr @msm_get_function_name, ptr @msm_get_function_groups, ptr @msm_pinmux_set_mux, ptr @msm_pinmux_request_gpio, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@msm_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @msm_config_group_get, ptr @msm_config_group_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@msm_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msm_pinctrl_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/pinctrl/qcom/pinctrl-msm.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@msm_pinctrl_probe._entry_ptr = internal global ptr @msm_pinctrl_probe._entry, section ".printk_index", align 4
@msm_pinctrl_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.3, ptr @.str.4, ptr @.str.8, i8 1, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pinctrl_msm\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Probed Qualcomm pinctrl driver\0A\00", [32 x i8] zeroinitializer }, align 32
@__kstrtab_msm_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_msm_pinctrl_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_msm_pinctrl_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msm_pinctrl_probe to i32), ptr @__kstrtab_msm_pinctrl_probe, ptr @__kstrtabns_msm_pinctrl_probe }, section "___ksymtab+msm_pinctrl_probe", align 4
@__kstrtab_msm_pinctrl_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_msm_pinctrl_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_msm_pinctrl_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @msm_pinctrl_remove to i32), ptr @__kstrtab_msm_pinctrl_remove, ptr @__kstrtabns_msm_pinctrl_remove }, section "___ksymtab+msm_pinctrl_remove", align 4
@__UNIQUE_ID_description228 = internal constant [64 x i8] c"pinctrl_msm.description=Qualcomm Technologies, Inc. TLMM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [50 x i8] c"pinctrl_msm.file=drivers/pinctrl/qcom/pinctrl-msm\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [27 x i8] c"pinctrl_msm.license=GPL v2\00", section ".modinfo", align 1
@msm_gpio_dbg_show_one.pulls_keeper = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"no pull\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pull down\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"keeper\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pull up\00", [24 x i8] zeroinitializer }, align 32
@msm_gpio_dbg_show_one.pulls_no_keeper = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.12], [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" %-8s: %-3s\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c" %-4s func%d\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %dmA\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %s\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ps_hold\00", [24 x i8] zeroinitializer }, align 32
@msm_pinctrl_setup_pm_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.4, i32 1376, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to setup restart handler.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"msm_pinctrl_setup_pm_reset\00", [37 x i8] zeroinitializer }, align 32
@msm_pinctrl_setup_pm_reset._entry_ptr = internal global ptr @msm_pinctrl_setup_pm_reset._entry, section ".printk_index", align 4
@poweroff_pctrl = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@msm_config_group_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 481, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported config parameter: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"msm_config_group_set\00", [43 x i8] zeroinitializer }, align 32
@msm_config_group_set._entry_ptr = internal global ptr @msm_config_group_set._entry, section ".printk_index", align 4
@msm_config_group_set._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.4, i32 487, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"config %x: %x is invalid\0A\00", [38 x i8] zeroinitializer }, align 32
@msm_config_group_set._entry_ptr.29 = internal global ptr @msm_config_group_set._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msmgpio\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-parent\00", [18 x i8] zeroinitializer }, align 32
@msm_gpio_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@msm_gpio_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@msm_gpio_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 1321, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed register gpiochip\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msm_gpio_init\00", [18 x i8] zeroinitializer }, align 32
@msm_gpio_init._entry_ptr = internal global ptr @msm_gpio_init._entry, section ".printk_index", align 4
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@msm_gpio_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.4, i32 1339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@msm_gpio_init._entry_ptr.37 = internal global ptr @msm_gpio_init._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@msm_gpio_init_valid_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.4, i32 688, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"invalid list of reserved GPIOs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msm_gpio_init_valid_mask\00", [39 x i8] zeroinitializer }, align 32
@msm_gpio_init_valid_mask._entry_ptr = internal global ptr @msm_gpio_init_valid_mask._entry, section ".printk_index", align 4
@msm_gpio_init_valid_mask._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.40, ptr @.str.4, i32 711, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not read list of GPIOs\0A\00", [34 x i8] zeroinitializer }, align 32
@msm_gpio_init_valid_mask._entry_ptr.43 = internal global ptr @msm_gpio_init_valid_mask._entry.41, section ".printk_index", align 4
@msm_gpio_update_dual_edge_parent.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@msm_gpio_update_dual_edge_parent._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.4, i32 924, ptr @.str.46, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dual-edge irq failed to stabilize\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"msm_gpio_update_dual_edge_parent\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@msm_gpio_update_dual_edge_parent._entry_ptr = internal global ptr @msm_gpio_update_dual_edge_parent._entry, section ".printk_index", align 4
@msm_gpio_update_dual_edge_pos._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.4, i32 776, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"dual-edge irq failed to stabilize, %#08x != %#08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"msm_gpio_update_dual_edge_pos\00", [34 x i8] zeroinitializer }, align 32
@msm_gpio_update_dual_edge_pos._entry_ptr = internal global ptr @msm_gpio_update_dual_edge_pos._entry, section ".printk_index", align 4
@msm_gpio_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 1017, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed routing %lu interrupt to Apps proc\00", [54 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"msm_gpio_irq_set_type\00", [42 x i8] zeroinitializer }, align 32
@msm_gpio_irq_set_type._entry_ptr = internal global ptr @msm_gpio_irq_set_type._entry, section ".printk_index", align 4
@msm_gpio_irq_reqres._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.4, i32 1136, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to lock HW IRQ %lu for IRQ\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msm_gpio_irq_reqres\00", [44 x i8] zeroinitializer }, align 32
@msm_gpio_irq_reqres._entry_ptr = internal global ptr @msm_gpio_irq_reqres._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 3, i64 5, i64 6, i64 9, i64 12, i64 17]
@__sancov_gen_cov_switch_values.53 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 3, i64 5, i64 6, i64 9, i64 12, i64 17]
@__sancov_gen_cov_switch_values.54 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 1, i64 3, i64 5, i64 6, i64 9, i64 12, i64 17]
@__sancov_gen_cov_switch_values.55 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 3, i64 5, i64 12, i64 17]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.59 = private unnamed_addr constant [23 x i8] c"msm_pinctrl_dev_pm_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1397, i32 1 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"msm_gpio_template\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 724, i32 31 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1419, i32 6 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1421, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"msm_pinctrl_ops\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 136, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"msm_pinmux_ops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 269, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant [16 x i8] c"msm_pinconf_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 502, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1456, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1466, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"pulls_keeper\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 620, i32 28 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 621, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 622, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 623, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 624, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant [16 x i8] c"pulls_no_keeper\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 627, i32 28 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 650, i32 16 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 650, i32 49 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 650, i32 57 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 651, i32 16 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 651, i32 38 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 651, i32 47 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 652, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 654, i32 17 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 657, i32 14 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1371, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1375, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"poweroff_pctrl\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1358, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 480, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 487, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1270, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1286, i32 45 }
@___asan_gen_.188 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1319, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1321, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1335, i32 50 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1339, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1246, i32 47 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 688, i32 5 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 711, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 924, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 775, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1015, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private constant [38 x i8] c"../drivers/pinctrl/qcom/pinctrl-msm.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 1134, i32 3 }
@llvm.compiler.used = appending global [88 x ptr] [ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab_msm_pinctrl_dev_pm_ops, ptr @__ksymtab_msm_pinctrl_probe, ptr @__ksymtab_msm_pinctrl_remove, ptr @msm_config_group_set._entry, ptr @msm_config_group_set._entry.27, ptr @msm_config_group_set._entry_ptr, ptr @msm_config_group_set._entry_ptr.29, ptr @msm_gpio_init._entry, ptr @msm_gpio_init._entry.35, ptr @msm_gpio_init._entry_ptr, ptr @msm_gpio_init._entry_ptr.37, ptr @msm_gpio_init_valid_mask._entry, ptr @msm_gpio_init_valid_mask._entry.41, ptr @msm_gpio_init_valid_mask._entry_ptr, ptr @msm_gpio_init_valid_mask._entry_ptr.43, ptr @msm_gpio_irq_reqres._entry, ptr @msm_gpio_irq_reqres._entry_ptr, ptr @msm_gpio_irq_set_type._entry, ptr @msm_gpio_irq_set_type._entry_ptr, ptr @msm_gpio_update_dual_edge_parent._entry, ptr @msm_gpio_update_dual_edge_parent._entry_ptr, ptr @msm_gpio_update_dual_edge_pos._entry, ptr @msm_gpio_update_dual_edge_pos._entry_ptr, ptr @msm_pinctrl_probe._entry, ptr @msm_pinctrl_probe._entry_ptr, ptr @msm_pinctrl_setup_pm_reset._entry, ptr @msm_pinctrl_setup_pm_reset._entry_ptr, ptr @msm_pinctrl_dev_pm_ops, ptr @msm_gpio_template, ptr @.str, ptr @msm_pinctrl_probe.__key, ptr @.str.1, ptr @msm_pinctrl_ops, ptr @msm_pinmux_ops, ptr @msm_pinconf_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @msm_gpio_dbg_show_one.pulls_keeper, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @msm_gpio_dbg_show_one.pulls_no_keeper, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @poweroff_pctrl, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @msm_gpio_init.lock_key, ptr @msm_gpio_init.request_key, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pinctrl_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_dbg_show_one.pulls_keeper to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_dbg_show_one.pulls_no_keeper to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_pinctrl_setup_pm_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @poweroff_pctrl to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_config_group_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_config_group_set._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_init_valid_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_init_valid_mask._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_update_dual_edge_parent._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_update_dual_edge_pos._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_gpio_irq_reqres._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pinctrl_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pctrl1 = getelementptr inbounds %struct.msm_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctrl1, align 4
  %call2 = tail call i32 @pinctrl_force_sleep(ptr noundef %3) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pinctrl_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pctrl1 = getelementptr inbounds %struct.msm_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pctrl1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pctrl1, align 4
  %call2 = tail call i32 @pinctrl_force_default(ptr noundef %3) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_pinctrl_probe(ptr noundef %pdev, ptr noundef %soc_data) #0 align 64 {
entry:
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 796, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 13
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %soc_data, ptr %soc, align 4
  %chip = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2
  %2 = call ptr @memcpy(ptr %chip, ptr @msm_gpio_template, i32 348)
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %call4 = tail call i32 @of_device_is_compatible(ptr noundef %4, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5 = icmp ne i32 %call4, 0
  %intr_target_use_scm = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 7
  %frombool = zext i1 %tobool5 to i8
  %5 = ptrtoint ptr %intr_target_use_scm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %frombool, ptr %intr_target_use_scm, align 4
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @msm_pinctrl_probe.__key, i16 noundef signext 2) #8
  %tiles = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %soc_data, i32 0, i32 8
  %6 = ptrtoint ptr %tiles to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tiles, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %ntiles = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %soc_data, i32 0, i32 9
  %8 = ptrtoint ptr %ntiles to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ntiles, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp158.not = icmp eq i32 %9, 0
  br i1 %cmp158.not, label %for.cond.preheader.if.end35_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end35_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0159, 1
  %10 = ptrtoint ptr %ntiles to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntiles, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.if.end35_crit_edge

for.cond.if.end35_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0159 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %12 = ptrtoint ptr %tiles to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tiles, align 4
  %arrayidx = getelementptr ptr, ptr %13, i32 %i.0159
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef %15) #8
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call9) #8
  %arrayidx12 = getelementptr %struct.msm_pinctrl, ptr %call.i, i32 0, i32 14, i32 %i.0159
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call11, ptr %arrayidx12, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %for.cond

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end
  %call21 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call23 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call21) #8
  %regs24 = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 14
  %18 = ptrtoint ptr %regs24 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call23, ptr %regs24, align 4
  %cmp.i142 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i142, label %if.then29, label %if.end33

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call23 to i32
  br label %cleanup

if.end33:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %call21, align 4
  %phys_base = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %phys_base, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %for.cond.if.end35_crit_edge, %for.cond.preheader.if.end35_crit_edge
  %23 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %soc, align 4
  %functions.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %functions.i, align 4
  %nfunctions.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %24, i32 0, i32 3
  %27 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nfunctions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp16.not.i = icmp eq i32 %28, 0
  br i1 %cmp16.not.i, label %if.end35.msm_pinctrl_setup_pm_reset.exit_crit_edge, label %if.end35.for.body.i_crit_edge

if.end35.for.body.i_crit_edge:                    ; preds = %if.end35
  br label %for.body.i

if.end35.msm_pinctrl_setup_pm_reset.exit_crit_edge: ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_pinctrl_setup_pm_reset.exit

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %i.017.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %28
  br i1 %exitcond.not.i, label %for.cond.i.msm_pinctrl_setup_pm_reset.exit_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.msm_pinctrl_setup_pm_reset.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_pinctrl_setup_pm_reset.exit

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %if.end35.for.body.i_crit_edge
  %i.017.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %if.end35.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.msm_function, ptr %26, i32 %i.017.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %call.i143 = tail call i32 @strcmp(ptr noundef %30, ptr noundef nonnull dereferenceable(8) @.str.22) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %restart_nb.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %restart_nb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @msm_ps_hold_restart, ptr %restart_nb.i, align 4
  %priority.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %priority.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 128, ptr %priority.i, align 4
  %call4.i = tail call i32 @register_restart_handler(ptr noundef %restart_nb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.23) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  store ptr %call.i, ptr @poweroff_pctrl, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @msm_ps_hold_poweroff, ptr @pm_power_off, align 4
  br label %msm_pinctrl_setup_pm_reset.exit

msm_pinctrl_setup_pm_reset.exit:                  ; preds = %if.end.i, %for.cond.i.msm_pinctrl_setup_pm_reset.exit_crit_edge, %if.end35.msm_pinctrl_setup_pm_reset.exit_crit_edge
  %call36 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call36, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp38 = icmp slt i32 %call36, 0
  br i1 %cmp38, label %msm_pinctrl_setup_pm_reset.exit.cleanup_crit_edge, label %if.end41

msm_pinctrl_setup_pm_reset.exit.cleanup_crit_edge: ; preds = %msm_pinctrl_setup_pm_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end41:                                         ; preds = %msm_pinctrl_setup_pm_reset.exit
  %desc = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 3
  %owner = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 3, i32 6
  %36 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 3, i32 3
  %37 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @msm_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 3, i32 4
  %38 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @msm_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 3, i32 5
  %39 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @msm_pinconf_ops, ptr %confops, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %40 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i144 = icmp eq ptr %41, null
  br i1 %tobool.not.i144, label %if.end.i145, label %if.end41.dev_name.exit_crit_edge

if.end41.dev_name.exit_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i145:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i145, %if.end41.dev_name.exit_crit_edge
  %retval.0.i146 = phi ptr [ %43, %if.end.i145 ], [ %41, %if.end41.dev_name.exit_crit_edge ]
  %44 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %retval.0.i146, ptr %desc, align 4
  %45 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %soc, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %pins50 = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 3, i32 1
  %49 = ptrtoint ptr %pins50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %pins50, align 4
  %npins = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %46, i32 0, i32 1
  %50 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %npins, align 4
  %npins53 = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 3, i32 2
  %52 = ptrtoint ptr %npins53 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %npins53, align 4
  %call56 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %call.i) #8
  %pctrl57 = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %pctrl57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call56, ptr %pctrl57, align 4
  %cmp.i147 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %do.end63, label %if.end67

do.end63:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #12
  %54 = ptrtoint ptr %pctrl57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pctrl57, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %cleanup

if.end67:                                         ; preds = %dev_name.exit
  %57 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %soc, align 4
  %ngpios.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ngpios.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %60)
  %cmp.i149 = icmp ugt i32 %60, 300
  br i1 %cmp.i149, label %do.end.i150, label %if.end21.i, !prof !146

do.end.i150:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 1258, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end21.i:                                       ; preds = %if.end67
  %base.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 19
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %base.i, align 4
  %conv.i = trunc i32 %60 to i16
  %ngpio23.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 20
  %62 = ptrtoint ptr %ngpio23.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv.i, ptr %ngpio23.i, align 4
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %66, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end21.i.dev_name.exit.i_crit_edge

if.end21.i.dev_name.exit.i_crit_edge:             ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end21.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %68, %if.end.i.i ], [ %66, %if.end21.i.dev_name.exit.i_crit_edge ]
  %69 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %retval.0.i.i, ptr %chip, align 4
  %parent.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 4
  %71 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %owner.i, align 4
  %reserved_gpios.i.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %58, i32 0, i32 10
  %72 = ptrtoint ptr %reserved_gpios.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reserved_gpios.i.i, align 4
  %tobool.not.i175.i = icmp eq ptr %73, null
  br i1 %tobool.not.i175.i, label %msm_gpio_needs_valid_mask.exit.i, label %dev_name.exit.i.if.then26.i_crit_edge

dev_name.exit.i.if.then26.i_crit_edge:            ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

msm_gpio_needs_valid_mask.exit.i:                 ; preds = %dev_name.exit.i
  %call.i.i.i = tail call i32 @device_property_read_u16_array(ptr noundef %64, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %msm_gpio_needs_valid_mask.exit.i.if.then26.i_crit_edge, label %msm_gpio_needs_valid_mask.exit.i.if.end27.i_crit_edge

msm_gpio_needs_valid_mask.exit.i.if.end27.i_crit_edge: ; preds = %msm_gpio_needs_valid_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i

msm_gpio_needs_valid_mask.exit.i.if.then26.i_crit_edge: ; preds = %msm_gpio_needs_valid_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26.i

if.then26.i:                                      ; preds = %msm_gpio_needs_valid_mask.exit.i.if.then26.i_crit_edge, %dev_name.exit.i.if.then26.i_crit_edge
  %init_valid_mask.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 17
  %74 = ptrtoint ptr %init_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @msm_gpio_init_valid_mask, ptr %init_valid_mask.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then26.i, %msm_gpio_needs_valid_mask.exit.i.if.end27.i_crit_edge
  %irq_chip.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5
  %name.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 1
  %75 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @.str.30, ptr %name.i, align 4
  %irq_enable.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 4
  %76 = ptrtoint ptr %irq_enable.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @msm_gpio_irq_enable, ptr %irq_enable.i, align 4
  %irq_disable.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 5
  %77 = ptrtoint ptr %irq_disable.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @msm_gpio_irq_disable, ptr %irq_disable.i, align 4
  %irq_mask.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 7
  %78 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @msm_gpio_irq_mask, ptr %irq_mask.i, align 4
  %irq_unmask.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 9
  %79 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @msm_gpio_irq_unmask, ptr %irq_unmask.i, align 4
  %irq_ack.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 6
  %80 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @msm_gpio_irq_ack, ptr %irq_ack.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 13
  %81 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @msm_gpio_irq_set_type, ptr %irq_set_type.i, align 4
  %irq_set_wake.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 14
  %82 = ptrtoint ptr %irq_set_wake.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @msm_gpio_irq_set_wake, ptr %irq_set_wake.i, align 4
  %irq_request_resources.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 22
  %83 = ptrtoint ptr %irq_request_resources.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @msm_gpio_irq_reqres, ptr %irq_request_resources.i, align 4
  %irq_release_resources.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 23
  %84 = ptrtoint ptr %irq_release_resources.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @msm_gpio_irq_relres, ptr %irq_release_resources.i, align 4
  %irq_set_affinity.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 11
  %85 = ptrtoint ptr %irq_set_affinity.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @msm_gpio_irq_set_affinity, ptr %irq_set_affinity.i, align 4
  %irq_set_vcpu_affinity.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 28
  %86 = ptrtoint ptr %irq_set_vcpu_affinity.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @msm_gpio_irq_set_vcpu_affinity, ptr %irq_set_vcpu_affinity.i, align 4
  %flags.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 33
  %87 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 517, ptr %flags.i, align 4
  %88 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %89, i32 0, i32 27
  %90 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %92 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %91, ptr noundef nonnull @.str.31, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i178.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i178.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %if.end62.i

of_parse_phandle.exit.i:                          ; preds = %if.end27.i
  %93 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool42.not.i = icmp eq ptr %94, null
  br i1 %tobool42.not.i, label %of_parse_phandle.exit.i.if.end62.i_crit_edge, label %if.then43.i

of_parse_phandle.exit.i.if.end62.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

if.then43.i:                                      ; preds = %of_parse_phandle.exit.i
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %94, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %95 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %96 = call ptr @memset(ptr %95, i32 0, i32 68)
  %97 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i181.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 9) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %parent_domain.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 4
  %98 = ptrtoint ptr %parent_domain.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %call.i.i181.i, ptr %parent_domain.i, align 4
  call void @of_node_put(ptr noundef nonnull %94) #8
  %99 = ptrtoint ptr %parent_domain.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %parent_domain.i, align 4
  %tobool47.not.i = icmp eq ptr %100, null
  br i1 %tobool47.not.i, label %if.then43.i.cleanup_crit_edge, label %if.end49.i

if.then43.i.cleanup_crit_edge:                    ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49.i:                                       ; preds = %if.then43.i
  %child_to_parent_hwirq.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 5
  %101 = ptrtoint ptr %child_to_parent_hwirq.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @msm_gpio_wakeirq, ptr %child_to_parent_hwirq.i, align 4
  %irq_eoi.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 5, i32 10
  %102 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @irq_chip_eoi_parent, ptr %irq_eoi.i, align 4
  %flags.i.i = getelementptr inbounds %struct.irq_domain, ptr %100, i32 0, i32 4
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %104, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end49.i.if.end62.i_crit_edge, label %land.rhs.lr.ph.i

if.end49.i.if.end62.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

land.rhs.lr.ph.i:                                 ; preds = %if.end49.i
  %skip_wake_irqs.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 11
  %105 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %soc, align 4
  %nwakeirq_map.i160 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %106, i32 0, i32 12
  %107 = ptrtoint ptr %nwakeirq_map.i160 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nwakeirq_map.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp58.i161.not = icmp eq i32 %108, 0
  br i1 %cmp58.i161.not, label %land.rhs.lr.ph.i.if.end62.i_crit_edge, label %land.rhs.lr.ph.i.for.body.i153_crit_edge

land.rhs.lr.ph.i.for.body.i153_crit_edge:         ; preds = %land.rhs.lr.ph.i
  br label %for.body.i153

land.rhs.lr.ph.i.if.end62.i_crit_edge:            ; preds = %land.rhs.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

for.body.i153:                                    ; preds = %for.body.i153.for.body.i153_crit_edge, %land.rhs.lr.ph.i.for.body.i153_crit_edge
  %109 = phi ptr [ %115, %for.body.i153.for.body.i153_crit_edge ], [ %106, %land.rhs.lr.ph.i.for.body.i153_crit_edge ]
  %i.0192.i162 = phi i32 [ %inc.i152, %for.body.i153.for.body.i153_crit_edge ], [ 0, %land.rhs.lr.ph.i.for.body.i153_crit_edge ]
  %wakeirq_map.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %wakeirq_map.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %wakeirq_map.i, align 4
  %arrayidx.i151 = getelementptr %struct.msm_gpio_wakeirq_map, ptr %111, i32 %i.0192.i162
  %112 = ptrtoint ptr %arrayidx.i151 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i151, align 4
  call void @_set_bit(i32 noundef %113, ptr noundef %skip_wake_irqs.i) #8
  %inc.i152 = add nuw i32 %i.0192.i162, 1
  %114 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %soc, align 4
  %nwakeirq_map.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %nwakeirq_map.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %nwakeirq_map.i, align 4
  %cmp58.i = icmp ult i32 %inc.i152, %117
  br i1 %cmp58.i, label %for.body.i153.for.body.i153_crit_edge, label %for.body.i153.if.end62.i_crit_edge

for.body.i153.if.end62.i_crit_edge:               ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i

for.body.i153.for.body.i153_crit_edge:            ; preds = %for.body.i153
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i153

if.end62.i:                                       ; preds = %for.body.i153.if.end62.i_crit_edge, %land.rhs.lr.ph.i.if.end62.i_crit_edge, %if.end49.i.if.end62.i_crit_edge, %of_parse_phandle.exit.i.if.end62.i_crit_edge, %of_parse_phandle.exit.thread.i
  %irq63.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37
  %118 = ptrtoint ptr %irq63.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %irq_chip.i, ptr %irq63.i, align 4
  %parent_handler.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 13
  %119 = ptrtoint ptr %parent_handler.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @msm_gpio_irq_handler, ptr %parent_handler.i, align 4
  %120 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i, align 4
  %fwnode.i = getelementptr inbounds %struct.device, ptr %121, i32 0, i32 28
  %122 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fwnode.i, align 4
  %fwnode67.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 3
  %124 = ptrtoint ptr %fwnode67.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %123, ptr %fwnode67.i, align 4
  %num_parents.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 15
  %125 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %num_parents.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %121, i32 noundef 4, i32 noundef 3520) #8
  %parents.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 16
  %126 = ptrtoint ptr %parents.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %call5.i.i.i, ptr %parents.i, align 4
  %tobool71.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool71.not.i, label %if.end62.i.cleanup_crit_edge, label %if.end73.i

if.end62.i.cleanup_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end73.i:                                       ; preds = %if.end62.i
  %default_type.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 10
  %127 = ptrtoint ptr %default_type.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %default_type.i, align 4
  %handler.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 2, i32 37, i32 9
  %128 = ptrtoint ptr %handler.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @handle_bad_irq, ptr %handler.i, align 4
  %129 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %irq, align 4
  %131 = ptrtoint ptr %call5.i.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %call5.i.i.i, align 4
  %call79.i = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef %call.i, ptr noundef nonnull @msm_gpio_init.lock_key, ptr noundef nonnull @msm_gpio_init.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  %132 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %call.i, align 4
  br i1 %tobool80.not.i, label %if.end86.i, label %do.end84.i

do.end84.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %133, ptr noundef nonnull @.str.32) #12
  br label %cleanup

if.end86.i:                                       ; preds = %if.end73.i
  %of_node88.i = getelementptr inbounds %struct.device, ptr %133, i32 0, i32 27
  %134 = ptrtoint ptr %of_node88.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %of_node88.i, align 8
  %call.i182.i = call ptr @of_find_property(ptr noundef %135, ptr noundef nonnull @.str.34, ptr noundef null) #8
  %tobool.i183.not.i = icmp eq ptr %call.i182.i, null
  br i1 %tobool.i183.not.i, label %if.then90.i, label %if.end86.i.if.end71_crit_edge

if.end86.i.if.end71_crit_edge:                    ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then90.i:                                      ; preds = %if.end86.i
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  %init_name.i184.i = getelementptr inbounds %struct.device, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %init_name.i184.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %init_name.i184.i, align 8
  %tobool.not.i185.i = icmp eq ptr %139, null
  br i1 %tobool.not.i185.i, label %if.end.i186.i, label %if.then90.i.dev_name.exit188.i_crit_edge

if.then90.i.dev_name.exit188.i_crit_edge:         ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit188.i

if.end.i186.i:                                    ; preds = %if.then90.i
  call void @__sanitizer_cov_trace_pc() #10
  %140 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %137, align 4
  br label %dev_name.exit188.i

dev_name.exit188.i:                               ; preds = %if.end.i186.i, %if.then90.i.dev_name.exit188.i_crit_edge
  %retval.0.i187.i = phi ptr [ %141, %if.end.i186.i ], [ %139, %if.then90.i.dev_name.exit188.i_crit_edge ]
  %142 = ptrtoint ptr %ngpio23.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %ngpio23.i, align 4
  %conv95.i = zext i16 %143 to i32
  %call96.i = call i32 @gpiochip_add_pin_range(ptr noundef %chip, ptr noundef %retval.0.i187.i, i32 noundef 0, i32 noundef 0, i32 noundef %conv95.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %dev_name.exit188.i.if.end71_crit_edge, label %do.end101.i

dev_name.exit188.i.if.end71_crit_edge:            ; preds = %dev_name.exit188.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end101.i:                                      ; preds = %dev_name.exit188.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %145, ptr noundef nonnull @.str.36) #12
  call void @gpiochip_remove(ptr noundef %chip) #8
  br label %cleanup

if.end71:                                         ; preds = %dev_name.exit188.i.if.end71_crit_edge, %if.end86.i.if.end71_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %146 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @msm_pinctrl_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@msm_pinctrl_probe, %cleanup)) #8
          to label %if.then79 [label %cleanup], !srcloc !147

if.then79:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @msm_pinctrl_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %if.end71, %do.end101.i, %do.end84.i, %if.end62.i.cleanup_crit_edge, %if.then43.i.cleanup_crit_edge, %do.end.i150, %do.end63, %msm_pinctrl_setup_pm_reset.exit.cleanup_crit_edge, %if.then29, %if.then16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then16 ], [ %56, %do.end63 ], [ %19, %if.then29 ], [ -12, %entry.cleanup_crit_edge ], [ %call36, %msm_pinctrl_setup_pm_reset.exit.cleanup_crit_edge ], [ 0, %if.then79 ], [ -12, %if.end62.i.cleanup_crit_edge ], [ -517, %if.then43.i.cleanup_crit_edge ], [ %call96.i, %do.end101.i ], [ %call79.i, %do.end84.i ], [ -22, %do.end.i150 ], [ 0, %if.end71 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_pinctrl_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.msm_pinctrl, ptr %1, i32 0, i32 2
  tail call void @gpiochip_remove(ptr noundef %chip) #8
  %restart_nb = getelementptr inbounds %struct.msm_pinctrl, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @unregister_restart_handler(ptr noundef %restart_nb) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_sleep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_force_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %tile.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 10
  %4 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %ctl_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 5
  %7 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %10 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load = load i64, ptr %tile.i, align 4
  %11 = trunc i64 %bf.load to i32
  %12 = lshr i32 %11, 27
  %13 = xor i32 %9, -1
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %15 = lshr i32 %14, %12
  %16 = and i32 %15, 1
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 8
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tile.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 10
  %4 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %ctl_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 5
  %7 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %11 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load = load i64, ptr %tile.i, align 4
  %12 = trunc i64 %bf.load to i32
  %13 = lshr i32 %12, 27
  %shl = shl nuw i32 1, %13
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  %15 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i20 = load i64, ptr %tile.i, align 4
  %bf.lshr.i21 = lshr i64 %bf.load.i20, 62
  %bf.cast.i22 = trunc i64 %bf.lshr.i21 to i32
  %arrayidx.i23 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i22
  %16 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i23, align 4
  %18 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25, i32 %14) #8, !srcloc !151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 8
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tile.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 10
  %4 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %io_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 6
  %7 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %11 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load4 = load i64, ptr %tile.i, align 4
  %12 = trunc i64 %bf.load4 to i32
  %13 = lshr i32 %12, 17
  %bf.cast7 = and i32 %13, 31
  %shl8 = shl nuw i32 1, %bf.cast7
  %or = or i32 %shl8, %10
  %neg = xor i32 %shl8, -1
  %and = and i32 %10, %neg
  %val.0 = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  %15 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i42 = load i64, ptr %tile.i, align 4
  %bf.lshr.i43 = lshr i64 %bf.load.i42, 62
  %bf.cast.i44 = trunc i64 %bf.lshr.i43 to i32
  %arrayidx.i45 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i44
  %16 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i45, align 4
  %18 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %14) #8, !srcloc !151
  %20 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i49 = load i64, ptr %tile.i, align 4
  %bf.lshr.i50 = lshr i64 %bf.load.i49, 62
  %bf.cast.i51 = trunc i64 %bf.lshr.i50 to i32
  %arrayidx.i52 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i51
  %21 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i52, align 4
  %ctl_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 5
  %23 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %22, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #8, !srcloc !148
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %27 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load10 = load i64, ptr %tile.i, align 4
  %28 = trunc i64 %bf.load10 to i32
  %29 = lshr i32 %28, 27
  %shl14 = shl nuw i32 1, %29
  %or15 = or i32 %shl14, %26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %or15) #8
  %31 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load.i55 = load i64, ptr %tile.i, align 4
  %bf.lshr.i56 = lshr i64 %bf.load.i55, 62
  %bf.cast.i57 = trunc i64 %bf.lshr.i56 to i32
  %arrayidx.i58 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i57
  %32 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.i58, align 4
  %34 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %33, i32 %35
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %30) #8, !srcloc !151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_get(ptr noundef %chip, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %tile.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 10
  %4 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %io_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 6
  %7 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %11 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load = load i64, ptr %tile.i, align 4
  %12 = trunc i64 %bf.load to i32
  %13 = lshr i32 %12, 22
  %bf.cast = and i32 %13, 31
  %14 = lshr i32 %10, %bf.cast
  %15 = and i32 %14, 1
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 8
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tile.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 10
  %4 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %io_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 6
  %7 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 %8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %11 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load4 = load i64, ptr %tile.i, align 4
  %12 = trunc i64 %bf.load4 to i32
  %13 = lshr i32 %12, 17
  %bf.cast7 = and i32 %13, 31
  %shl8 = shl nuw i32 1, %bf.cast7
  %or = or i32 %shl8, %10
  %neg = xor i32 %shl8, -1
  %and = and i32 %10, %neg
  %val.0 = select i1 %tobool.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  %15 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i28 = load i64, ptr %tile.i, align 4
  %bf.lshr.i29 = lshr i64 %bf.load.i28, 62
  %bf.cast.i30 = trunc i64 %bf.lshr.i29 to i32
  %arrayidx.i31 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i30
  %16 = ptrtoint ptr %arrayidx.i31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i31, align 4
  %18 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33, i32 %14) #8, !srcloc !151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_dbg_show(ptr noundef %s, ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp9.not = icmp eq i16 %1, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %msm_gpio_dbg_show_one.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.010 = phi i32 [ %inc, %msm_gpio_dbg_show_one.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %call1.i = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %chip, i32 noundef %i.010) #8
  br i1 %call1.i, label %if.end.i, label %for.body.msm_gpio_dbg_show_one.exit_crit_edge

for.body.msm_gpio_dbg_show_one.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %msm_gpio_dbg_show_one.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %soc.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc.i, align 4
  %groups.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups.i, align 4
  %arrayidx.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %i.010
  %tile.i.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %i.010, i32 10
  %6 = ptrtoint ptr %tile.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i.i = load i64, ptr %tile.i.i, align 4
  %bf.lshr.i.i = lshr i64 %bf.load.i.i, 62
  %bf.cast.i.i = trunc i64 %bf.lshr.i.i to i32
  %arrayidx.i.i = getelementptr %struct.msm_pinctrl, ptr %call.i, i32 0, i32 14, i32 %bf.cast.i.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %ctl_reg.i.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %i.010, i32 5
  %9 = ptrtoint ptr %ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctl_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %10
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !148
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %13 = ptrtoint ptr %tile.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load.i2.i = load i64, ptr %tile.i.i, align 4
  %bf.lshr.i3.i = lshr i64 %bf.load.i2.i, 62
  %bf.cast.i4.i = trunc i64 %bf.lshr.i3.i to i32
  %arrayidx.i5.i = getelementptr %struct.msm_pinctrl, ptr %call.i, i32 0, i32 14, i32 %bf.cast.i4.i
  %14 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i5.i, align 4
  %io_reg.i.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %i.010, i32 6
  %16 = ptrtoint ptr %io_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %io_reg.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %15, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #8, !srcloc !148
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %20 = ptrtoint ptr %tile.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i = load i64, ptr %tile.i.i, align 4
  %21 = trunc i64 %bf.load.i to i32
  %22 = lshr i32 %21, 27
  %shl.i = shl nuw i32 1, %22
  %and.i = and i32 %shl.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %bf.lshr6.i = lshr i64 %bf.load.i, 57
  %23 = trunc i64 %bf.lshr6.i to i32
  %bf.cast8.i = and i32 %23, 31
  %shr.i = lshr i32 %12, %bf.cast8.i
  %and9.i = and i32 %shr.i, 7
  %bf.lshr11.i = lshr i64 %bf.load.i, 47
  %24 = trunc i64 %bf.lshr11.i to i32
  %bf.cast13.i = and i32 %24, 31
  %shr14.i = lshr i32 %12, %bf.cast13.i
  %bf.lshr17.i = lshr i64 %bf.load.i, 52
  %25 = trunc i64 %bf.lshr17.i to i32
  %bf.cast19.i = and i32 %25, 31
  %shr20.i = lshr i32 %12, %bf.cast19.i
  %and21.i = and i32 %shr20.i, 3
  %cond.i = select i1 %tobool.not.i, ptr @.str.15, ptr @.str.14
  %bf.cast27.pn.in.v.i = select i1 %tobool.not.i, i32 22, i32 17
  %bf.cast27.pn.in.i = lshr i32 %21, %bf.cast27.pn.in.v.i
  %bf.cast27.pn.i = and i32 %bf.cast27.pn.in.i, 31
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.13, ptr noundef %27, ptr noundef nonnull %cond.i) #8
  %28 = shl nuw i32 1, %bf.cast27.pn.i
  %29 = and i32 %28, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool48.not.i = icmp eq i32 %29, 0
  %cond49.i = select i1 %tobool48.not.i, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.16, ptr noundef nonnull %cond49.i, i32 noundef %and9.i) #8
  %and15.i = shl i32 %shr14.i, 1
  %add.i.i = and i32 %and15.i, 14
  %mul.i.i = add nuw nsw i32 %add.i.i, 2
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, i32 noundef %mul.i.i) #8
  %30 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %soc.i, align 4
  %pull_no_keeper.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %pull_no_keeper.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pull_no_keeper.i, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool52.not.i = icmp eq i8 %33, 0
  %arrayidx56.i = getelementptr [4 x ptr], ptr @msm_gpio_dbg_show_one.pulls_keeper, i32 0, i32 %and21.i
  %arrayidx54.i = getelementptr [3 x ptr], ptr @msm_gpio_dbg_show_one.pulls_no_keeper, i32 0, i32 %and21.i
  %arrayidx56.sink.i = select i1 %tobool52.not.i, ptr %arrayidx56.i, ptr %arrayidx54.i
  %34 = ptrtoint ptr %arrayidx56.sink.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx56.sink.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, ptr noundef %35) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.21) #8
  br label %msm_gpio_dbg_show_one.exit

msm_gpio_dbg_show_one.exit:                       ; preds = %if.end.i, %for.body.msm_gpio_dbg_show_one.exit_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %36 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %37 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %msm_gpio_dbg_show_one.exit.for.body_crit_edge, label %msm_gpio_dbg_show_one.exit.for.end_crit_edge

msm_gpio_dbg_show_one.exit.for.end_crit_edge:     ; preds = %msm_gpio_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

msm_gpio_dbg_show_one.exit.for.body_crit_edge:    ; preds = %msm_gpio_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %msm_gpio_dbg_show_one.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_valid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_ps_hold_restart(ptr nocapture noundef readonly %nb, i32 noundef %action, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr i8, ptr %nb, i32 364
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #8, !srcloc !151
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.02 = phi i32 [ 1000, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.02, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #8
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_restart_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_ps_hold_poweroff() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @poweroff_pctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !155
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr %struct.msm_pinctrl, ptr %0, i32 0, i32 14
  %1 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regs.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %2, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 0) #8, !srcloc !151
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry
  %__ms.02.i = phi i32 [ 1000, %entry ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %__ms.02.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #8
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %msm_ps_hold_restart.exit, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

msm_ps_hold_restart.exit:                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_get_groups_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %ngroups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msm_get_group_name(ptr noundef %pctldev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.msm_pingroup, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.msm_pingroup, ptr %3, i32 %group, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %soc, align 4
  %groups3 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %groups3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %groups3, align 4
  %npins = getelementptr %struct.msm_pingroup, ptr %9, i32 %group, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  %12 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pinmux_request(ptr noundef %pctldev, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %chip1 = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 2
  %call2 = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %chip1, i32 noundef %offset) #8
  %cond = select i1 %call2, i32 0, i32 -22
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_get_functions_count(ptr noundef %pctldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %nfunctions = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nfunctions, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @msm_get_function_name(ptr noundef %pctldev, i32 noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.msm_function, ptr %3, i32 %function
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_get_function_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %functions = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.msm_function, ptr %3, i32 %function, i32 1
  %4 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups1, align 4
  %6 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %groups, align 4
  %7 = load ptr, ptr %soc, align 4
  %functions3 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %functions3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions3, align 4
  %ngroups = getelementptr %struct.msm_function, ptr %9, i32 %function, i32 2
  %10 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ngroups, align 4
  %12 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %domain = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 2, i32 37, i32 1
  %0 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #8
  %2 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irq.i, align 4, !annotation !156
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %1, i32 noundef %group, ptr noundef nonnull %irq.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.irq_find_mapping.exit_crit_edge, label %if.then.i

entry.irq_find_mapping.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %entry.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ 0, %entry.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #8
  %call3 = call ptr @irq_get_irq_data(i32 noundef %retval.0.i) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %5 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc, align 4
  %gpio_func4 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 14
  %7 = ptrtoint ptr %gpio_func4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_func4, align 4
  %egpio_func6 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 15
  %9 = ptrtoint ptr %egpio_func6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %egpio_func6, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %groups, align 4
  %mux_bit = getelementptr %struct.msm_pingroup, ptr %12, i32 %group, i32 10
  %13 = ptrtoint ptr %mux_bit to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load = load i64, ptr %mux_bit, align 4
  %bf.lshr = lshr i64 %bf.load, 57
  %14 = trunc i64 %bf.lshr to i32
  %bf.cast = and i32 %14, 31
  %shl.neg = shl nsw i32 -1, %bf.cast
  %nfuncs = getelementptr %struct.msm_pingroup, ptr %12, i32 %group, i32 4
  %15 = ptrtoint ptr %nfuncs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nfuncs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i = icmp ugt i32 %16, 1
  br i1 %cmp.i, label %cond.end40.thread, label %cond.end40

cond.end40.thread:                                ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i243 = add i32 %16, -1
  %17 = call i32 @llvm.ctlz.i32(i32 %sub.i243, i1 false) #8, !range !157
  %18 = sub nsw i32 %17, %bf.cast
  %shr261 = lshr i32 -1, %18
  %and262 = and i32 %shr261, %shl.neg
  br label %for.body.lr.ph

cond.end40:                                       ; preds = %irq_find_mapping.exit
  %add42.neg = sub nuw nsw i32 32, %bf.cast
  %shr = lshr i32 -1, %add42.neg
  %and = and i32 %shr, %shl.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp47254.not = icmp eq i32 %16, 0
  br i1 %cmp47254.not, label %cond.end40.for.end_crit_edge, label %cond.end40.for.body.lr.ph_crit_edge

cond.end40.for.body.lr.ph_crit_edge:              ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.lr.ph

cond.end40.for.end_crit_edge:                     ; preds = %cond.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %cond.end40.for.body.lr.ph_crit_edge, %cond.end40.thread
  %and264 = phi i32 [ %and262, %cond.end40.thread ], [ %and, %cond.end40.for.body.lr.ph_crit_edge ]
  %funcs = getelementptr %struct.msm_pingroup, ptr %12, i32 %group, i32 3
  %19 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %funcs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx49 = getelementptr i32, ptr %20, i32 %i.0255
  %21 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx49, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %function)
  %cmp50 = icmp eq i32 %22, %function
  br i1 %cmp50, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0255, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %cond.end40.for.end_crit_edge
  %and265 = phi i32 [ %and, %cond.end40.for.end_crit_edge ], [ %and264, %for.body.for.end_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %cond.end40.for.end_crit_edge ], [ %i.0255, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %16)
  %cmp53 = icmp eq i32 %i.0.lcssa, %16
  br i1 %cmp53, label %for.end.do.end_crit_edge, label %if.end77, !prof !146

for.end.do.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %for.end.do.end_crit_edge, %for.inc.do.end_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 202, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end77:                                         ; preds = %for.end
  %tobool78.not = icmp eq ptr %call3, null
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %8)
  %cmp79.not = icmp eq i32 %i.0.lcssa, %8
  %or.cond = select i1 %tobool78.not, i1 true, i1 %cmp79.not
  br i1 %or.cond, label %if.end77.do.body86_crit_edge, label %land.lhs.true81

if.end77.do.body86_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body86

land.lhs.true81:                                  ; preds = %if.end77
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call3, i32 0, i32 2
  %23 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hwirq, align 4
  %disabled_for_mux = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 12
  %call82 = call i32 @_test_and_set_bit(i32 noundef %24, ptr noundef %disabled_for_mux) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then84, label %land.lhs.true81.do.body86_crit_edge

land.lhs.true81.do.body86_crit_edge:              ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body86

if.then84:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #10
  call void @disable_irq(i32 noundef %retval.0.i) #8
  br label %do.body86

do.body86:                                        ; preds = %if.then84, %land.lhs.true81.do.body86_crit_edge, %if.end77.do.body86_crit_edge
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 8
  %call90 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %25 = ptrtoint ptr %mux_bit to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load.i = load i64, ptr %mux_bit, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i244 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i
  %26 = ptrtoint ptr %arrayidx.i244 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i244, align 4
  %ctl_reg.i = getelementptr %struct.msm_pingroup, ptr %12, i32 %group, i32 5
  %28 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %29
  %30 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %31 = call i32 @llvm.bswap.i32(i32 %30) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool94.not = icmp eq i32 %10, 0
  %tobool94.not.not = xor i1 %tobool94.not, true
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %10)
  %cmp96 = icmp eq i32 %i.0.lcssa, %10
  %or.cond241 = select i1 %tobool94.not.not, i1 %cmp96, i1 false
  br i1 %or.cond241, label %if.then98, label %if.else

if.then98:                                        ; preds = %do.body86
  %32 = ptrtoint ptr %mux_bit to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load99 = load i64, ptr %mux_bit, align 4
  %bf.lshr100 = lshr i64 %bf.load99, 32
  %33 = trunc i64 %bf.lshr100 to i32
  %bf.cast102 = and i32 %33, 31
  %shl103 = shl nuw i32 1, %bf.cast102
  %and104 = and i32 %shl103, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.then98.if.end141_crit_edge, label %if.then106

if.then98.if.end141_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then106:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr108 = lshr i64 %bf.load99, 37
  %34 = trunc i64 %bf.lshr108 to i32
  %bf.cast110 = and i32 %34, 31
  %shl111 = shl nuw i32 1, %bf.cast110
  %neg = xor i32 %shl111, -1
  %and112 = and i32 %31, %neg
  br label %if.end141

if.else:                                          ; preds = %do.body86
  %neg114 = xor i32 %and265, -1
  %and115 = and i32 %31, %neg114
  %35 = ptrtoint ptr %mux_bit to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load117 = load i64, ptr %mux_bit, align 4
  %bf.lshr118 = lshr i64 %bf.load117, 57
  %36 = trunc i64 %bf.lshr118 to i32
  %bf.cast120 = and i32 %36, 31
  %shl121 = shl i32 %i.0.lcssa, %bf.cast120
  %or = or i32 %shl121, %and115
  br i1 %tobool94.not, label %if.else.if.end141_crit_edge, label %land.lhs.true123

if.else.if.end141_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

land.lhs.true123:                                 ; preds = %if.else
  %bf.lshr126 = lshr i64 %bf.load117, 32
  %37 = trunc i64 %bf.lshr126 to i32
  %bf.cast128 = and i32 %37, 31
  %shl129 = shl nuw i32 1, %bf.cast128
  %and130 = and i32 %or, %shl129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %land.lhs.true123.if.end141_crit_edge, label %if.then132

land.lhs.true123.if.end141_crit_edge:             ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

if.then132:                                       ; preds = %land.lhs.true123
  call void @__sanitizer_cov_trace_pc() #10
  %bf.lshr135 = lshr i64 %bf.load117, 37
  %38 = trunc i64 %bf.lshr135 to i32
  %bf.cast137 = and i32 %38, 31
  %shl138 = shl nuw i32 1, %bf.cast137
  %or139 = or i32 %or, %shl138
  br label %if.end141

if.end141:                                        ; preds = %if.then132, %land.lhs.true123.if.end141_crit_edge, %if.else.if.end141_crit_edge, %if.then106, %if.then98.if.end141_crit_edge
  %val.0 = phi i32 [ %and112, %if.then106 ], [ %31, %if.then98.if.end141_crit_edge ], [ %or139, %if.then132 ], [ %or, %land.lhs.true123.if.end141_crit_edge ], [ %or, %if.else.if.end141_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  call void @arm_heavy_mb() #8
  %39 = call i32 @llvm.bswap.i32(i32 %val.0) #8
  %40 = ptrtoint ptr %mux_bit to i32
  call void @__asan_loadN_noabort(i32 %40, i32 8)
  %bf.load.i246 = load i64, ptr %mux_bit, align 4
  %bf.lshr.i247 = lshr i64 %bf.load.i246, 62
  %bf.cast.i248 = trunc i64 %bf.lshr.i247 to i32
  %arrayidx.i249 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i248
  %41 = ptrtoint ptr %arrayidx.i249 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i249, align 4
  %43 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i251 = getelementptr i8, ptr %42, i32 %44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i251, i32 %39) #8, !srcloc !151
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call90) #8
  %tobool78.not.not = xor i1 %tobool78.not, true
  %or.cond242 = select i1 %tobool78.not.not, i1 %cmp79.not, i1 false
  br i1 %or.cond242, label %land.lhs.true155, label %if.end141.cleanup_crit_edge

if.end141.cleanup_crit_edge:                      ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true155:                                 ; preds = %if.end141
  %hwirq156 = getelementptr inbounds %struct.irq_data, ptr %call3, i32 0, i32 2
  %45 = ptrtoint ptr %hwirq156 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hwirq156, align 4
  %disabled_for_mux157 = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 12
  %call159 = call i32 @_test_and_clear_bit(i32 noundef %46, ptr noundef %disabled_for_mux157) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %tobool160.not = icmp eq i32 %call159, 0
  br i1 %tobool160.not, label %land.lhs.true155.cleanup_crit_edge, label %if.then161

land.lhs.true155.cleanup_crit_edge:               ; preds = %land.lhs.true155
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then161:                                       ; preds = %land.lhs.true155
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %call3, i32 0, i32 6
  %47 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %parent_data, align 4
  %tobool162.not = icmp eq ptr %48, null
  br i1 %tobool162.not, label %if.then161.if.else170_crit_edge, label %land.lhs.true163

if.then161.if.else170_crit_edge:                  ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else170

land.lhs.true163:                                 ; preds = %if.then161
  %49 = ptrtoint ptr %hwirq156 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hwirq156, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 11
  %div3.i = lshr i32 %50, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %51 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %50, 31
  %53 = shl nuw i32 1, %and.i
  %54 = and i32 %53, %52
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool167.not = icmp eq i32 %54, 0
  br i1 %tobool167.not, label %land.lhs.true163.if.else170_crit_edge, label %if.then168

land.lhs.true163.if.else170_crit_edge:            ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else170

if.then168:                                       ; preds = %land.lhs.true163
  call void @__sanitizer_cov_trace_pc() #10
  %call169 = call i32 @irq_chip_set_parent_state(ptr noundef nonnull %call3, i32 noundef 0, i1 noundef zeroext false) #8
  br label %if.end171

if.else170:                                       ; preds = %land.lhs.true163.if.else170_crit_edge, %if.then161.if.else170_crit_edge
  %55 = ptrtoint ptr %mux_bit to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %bf.load.i252 = load i64, ptr %mux_bit, align 4
  %56 = and i64 %bf.load.i252, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %56)
  %tobool.not.i253 = icmp eq i64 %56, 0
  %57 = trunc i64 %bf.load.i252 to i32
  %58 = lshr i32 %57, 7
  %bf.cast4.i = and i32 %58, 31
  %shl.i = shl nuw i32 1, %bf.cast4.i
  %cond.i = select i1 %tobool.not.i253, i32 0, i32 %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  call void @arm_heavy_mb() #8
  %59 = call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %60 = ptrtoint ptr %mux_bit to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %bf.load.i.i = load i64, ptr %mux_bit, align 4
  %bf.lshr.i.i = lshr i64 %bf.load.i.i, 62
  %bf.cast.i.i = trunc i64 %bf.lshr.i.i to i32
  %arrayidx.i.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i.i
  %61 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx.i.i, align 4
  %intr_status_reg.i.i = getelementptr %struct.msm_pingroup, ptr %12, i32 %group, i32 8
  %63 = ptrtoint ptr %intr_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %intr_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %62, i32 %64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %59) #8, !srcloc !151
  br label %if.end171

if.end171:                                        ; preds = %if.else170, %if.then168
  call void @enable_irq(i32 noundef %retval.0.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end171, %land.lhs.true155.cleanup_crit_edge, %if.end141.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end171 ], [ 0, %land.lhs.true155.cleanup_crit_edge ], [ 0, %if.end141.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_pinmux_request_gpio(ptr noundef %pctldev, ptr nocapture noundef readnone %range, i32 noundef %offset) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %nfuncs = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 4
  %4 = ptrtoint ptr %nfuncs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nfuncs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %funcs = getelementptr %struct.msm_pingroup, ptr %3, i32 %offset, i32 3
  %6 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %funcs, align 4
  %gpio_func = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %gpio_func to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_func, align 4
  %arrayidx2 = getelementptr i32, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call i32 @msm_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %11, i32 noundef %offset)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_parent_state(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_config_group_get(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %trunc94 = trunc i32 %1 to i8
  %6 = zext i8 %trunc94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc94, label %entry.cleanup_crit_edge [
    i8 1, label %entry.sw.bb.i_crit_edge
    i8 3, label %entry.sw.bb.i_crit_edge95
    i8 0, label %entry.sw.bb.i_crit_edge96
    i8 5, label %entry.sw.bb.i_crit_edge97
    i8 6, label %sw.bb1.i
    i8 9, label %sw.bb6.i
    i8 17, label %entry.sw.bb11.i_crit_edge
    i8 12, label %entry.sw.bb11.i_crit_edge98
  ]

entry.sw.bb11.i_crit_edge98:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i

entry.sw.bb11.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i

entry.sw.bb.i_crit_edge97:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge96:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge95:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge95, %entry.sw.bb.i_crit_edge96, %entry.sw.bb.i_crit_edge97
  %pull_bit.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %group, i32 10
  %7 = ptrtoint ptr %pull_bit.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i = load i64, ptr %pull_bit.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 52
  %8 = trunc i64 %bf.lshr.i to i32
  %bf.cast.i = and i32 %8, 31
  br label %if.end

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %od_bit.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %group, i32 10
  %9 = ptrtoint ptr %od_bit.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load2.i = load i64, ptr %od_bit.i, align 4
  %bf.lshr3.i = lshr i64 %bf.load2.i, 42
  %10 = trunc i64 %bf.lshr3.i to i32
  %bf.cast5.i = and i32 %10, 31
  br label %if.end

sw.bb6.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %drv_bit.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %group, i32 10
  %11 = ptrtoint ptr %drv_bit.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load7.i = load i64, ptr %drv_bit.i, align 4
  %bf.lshr8.i = lshr i64 %bf.load7.i, 47
  %12 = trunc i64 %bf.lshr8.i to i32
  %bf.cast10.i = and i32 %12, 31
  br label %if.end

sw.bb11.i:                                        ; preds = %entry.sw.bb11.i_crit_edge, %entry.sw.bb11.i_crit_edge98
  %oe_bit.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %group, i32 10
  %13 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load12.i = load i64, ptr %oe_bit.i, align 4
  %14 = trunc i64 %bf.load12.i to i32
  %15 = lshr i32 %14, 27
  br label %if.end

if.end:                                           ; preds = %sw.bb11.i, %sw.bb6.i, %sw.bb1.i, %sw.bb.i
  %mask.0.ph = phi i32 [ 1, %sw.bb11.i ], [ 7, %sw.bb6.i ], [ 1, %sw.bb1.i ], [ 3, %sw.bb.i ]
  %bit.0.ph = phi i32 [ %15, %sw.bb11.i ], [ %bf.cast10.i, %sw.bb6.i ], [ %bf.cast5.i, %sw.bb1.i ], [ %bf.cast.i, %sw.bb.i ]
  %tile.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %group, i32 10
  %16 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load.i79 = load i64, ptr %tile.i, align 4
  %bf.lshr.i80 = lshr i64 %bf.load.i79, 62
  %bf.cast.i81 = trunc i64 %bf.lshr.i80 to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i81
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i, align 4
  %ctl_reg.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %group, i32 5
  %19 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %20
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %shr = lshr i32 %22, %bit.0.ph
  %and = and i32 %shr, %mask.0.ph
  %23 = zext i8 %trunc94 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %trunc94, label %if.end.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb7
    i8 0, label %sw.bb11
    i8 5, label %sw.bb18
    i8 6, label %sw.bb30
    i8 9, label %sw.bb34
    i8 17, label %sw.bb36
    i8 12, label %sw.bb44
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp8.not = icmp eq i32 %and, 1
  br i1 %cmp8.not, label %sw.bb7.sw.epilog_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  %24 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc, align 4
  %pull_no_keeper = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %pull_no_keeper to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pull_no_keeper, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end14, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp15.not = icmp eq i32 %and, 2
  br i1 %cmp15.not, label %if.end14.sw.epilog_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  %28 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %soc, align 4
  %pull_no_keeper20 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %pull_no_keeper20 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pull_no_keeper20, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not = icmp eq i8 %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and)
  %cmp23 = icmp eq i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp24 = icmp eq i32 %and, 3
  %arg.0.in = select i1 %tobool21.not, i1 %cmp24, i1 %cmp23
  br i1 %arg.0.in, label %sw.bb18.sw.epilog_crit_edge, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool31.not = icmp eq i32 %and, 0
  br i1 %tobool31.not, label %sw.bb30.cleanup_crit_edge, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb34:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = shl nuw nsw i32 %and, 1
  %mul.i = add nuw nsw i32 %add.i, 2
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %sw.bb36.cleanup_crit_edge, label %if.end39

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 8)
  %bf.load.i83 = load i64, ptr %tile.i, align 4
  %bf.lshr.i84 = lshr i64 %bf.load.i83, 62
  %bf.cast.i85 = trunc i64 %bf.lshr.i84 to i32
  %arrayidx.i86 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i85
  %33 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i86, align 4
  %io_reg.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %group, i32 6
  %35 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %34, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #8, !srcloc !148
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %39 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load = load i64, ptr %tile.i, align 4
  %40 = trunc i64 %bf.load to i32
  %41 = lshr i32 %40, 22
  %bf.cast = and i32 %41, 31
  %42 = lshr i32 %38, %bf.cast
  %43 = and i32 %42, 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool45.not = icmp eq i32 %and, 0
  br i1 %tobool45.not, label %sw.bb44.sw.epilog_crit_edge, label %sw.bb44.cleanup_crit_edge

sw.bb44.cleanup_crit_edge:                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb44.sw.epilog_crit_edge:                      ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44.sw.epilog_crit_edge, %if.end39, %sw.bb34, %sw.bb30.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %arg.1 = phi i32 [ %43, %if.end39 ], [ %mul.i, %sw.bb34 ], [ 1, %sw.bb18.sw.epilog_crit_edge ], [ 1, %sw.bb.sw.epilog_crit_edge ], [ 1, %sw.bb7.sw.epilog_crit_edge ], [ 1, %if.end14.sw.epilog_crit_edge ], [ 1, %sw.bb30.sw.epilog_crit_edge ], [ 1, %sw.bb44.sw.epilog_crit_edge ]
  %shl.i = shl nuw nsw i32 %arg.1, 8
  %or.i = or i32 %shl.i, %and.i
  %44 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb44.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %sw.bb11.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -524, %sw.bb11.cleanup_crit_edge ], [ -22, %if.end14.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %sw.bb36.cleanup_crit_edge ], [ -22, %sw.bb44.cleanup_crit_edge ], [ -524, %if.end.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_config_group_set(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp185.not = icmp eq i32 %num_configs, 0
  br i1 %cmp185.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %oe_bit.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %group, i32 10
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 8
  %io_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %group, i32 6
  %ctl_reg.i = getelementptr %struct.msm_pingroup, ptr %3, i32 %group, i32 5
  br label %for.body

for.body:                                         ; preds = %do.body63.for.body_crit_edge, %for.body.lr.ph
  %i.0186 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %do.body63.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.0186
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 1, label %for.body.sw.bb.i_crit_edge
    i8 3, label %for.body.sw.bb.i_crit_edge199
    i8 0, label %for.body.sw.bb.i_crit_edge200
    i8 5, label %for.body.sw.bb.i_crit_edge201
    i8 6, label %if.end.thread
    i8 9, label %if.end.thread176
    i8 17, label %for.body.sw.bb11.i_crit_edge
    i8 12, label %for.body.sw.bb11.i_crit_edge202
  ]

for.body.sw.bb11.i_crit_edge202:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i

for.body.sw.bb11.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb11.i

for.body.sw.bb.i_crit_edge201:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge200:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge199:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge199, %for.body.sw.bb.i_crit_edge200, %for.body.sw.bb.i_crit_edge201
  %7 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i = load i64, ptr %oe_bit.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 52
  %8 = trunc i64 %bf.lshr.i to i32
  %bf.cast.i = and i32 %8, 31
  br label %if.end

if.end.thread:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load2.i = load i64, ptr %oe_bit.i, align 4
  %bf.lshr3.i = lshr i64 %bf.load2.i, 42
  %10 = trunc i64 %bf.lshr3.i to i32
  %bf.cast5.i = and i32 %10, 31
  br label %sw.epilog

if.end.thread176:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %shr.i = lshr i32 %5, 9
  %11 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load7.i = load i64, ptr %oe_bit.i, align 4
  %bf.lshr8.i = lshr i64 %bf.load7.i, 47
  %12 = trunc i64 %bf.lshr8.i to i32
  %bf.cast10.i = and i32 %12, 31
  %13 = add i32 %5, -512
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %13)
  %14 = icmp ult i32 %13, 3840
  %15 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp23.not = icmp eq i32 %15, 0
  %or.cond138 = and i1 %14, %cmp23.not
  %sub = add nsw i32 %shr.i, -1
  %spec.select = select i1 %or.cond138, i32 %sub, i32 -1
  br label %sw.epilog

sw.bb11.i:                                        ; preds = %for.body.sw.bb11.i_crit_edge, %for.body.sw.bb11.i_crit_edge202
  %16 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load12.i = load i64, ptr %oe_bit.i, align 4
  %17 = trunc i64 %bf.load12.i to i32
  %18 = lshr i32 %17, 27
  br label %if.end

if.end:                                           ; preds = %sw.bb11.i, %sw.bb.i
  %mask.1.ph = phi i32 [ 1, %sw.bb11.i ], [ 3, %sw.bb.i ]
  %bit.1.ph = phi i32 [ %18, %sw.bb11.i ], [ %bf.cast.i, %sw.bb.i ]
  %19 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %trunc, label %do.end53 [
    i8 1, label %if.end.sw.epilog_crit_edge
    i8 3, label %sw.bb7
    i8 0, label %sw.bb8
    i8 5, label %sw.bb12
    i8 12, label %if.end.sw.epilog_crit_edge203
    i8 17, label %do.body
  ]

if.end.sw.epilog_crit_edge203:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %20 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %soc, align 4
  %pull_no_keeper = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %pull_no_keeper to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pull_no_keeper, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %sw.bb8.sw.epilog_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %soc, align 4
  %pull_no_keeper14 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %pull_no_keeper14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pull_no_keeper14, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool15.not = icmp eq i8 %27, 0
  %. = select i1 %tobool15.not, i32 3, i32 2
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %28 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i139 = load i64, ptr %oe_bit.i, align 4
  %bf.lshr.i140 = lshr i64 %bf.load.i139, 62
  %bf.cast.i141 = trunc i64 %bf.lshr.i140 to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i141
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i, align 4
  %31 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %32
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool31.not = icmp ult i32 %5, 256
  %35 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load35 = load i64, ptr %oe_bit.i, align 4
  %36 = trunc i64 %bf.load35 to i32
  %37 = lshr i32 %36, 17
  %bf.cast38 = and i32 %37, 31
  %shl39 = shl nuw i32 1, %bf.cast38
  %or = or i32 %shl39, %34
  %neg = xor i32 %shl39, -1
  %and = and i32 %34, %neg
  %val.0 = select i1 %tobool31.not, i32 %and, i32 %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !153
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %val.0) #8
  %39 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %bf.load.i143 = load i64, ptr %oe_bit.i, align 4
  %bf.lshr.i144 = lshr i64 %bf.load.i143, 62
  %bf.cast.i145 = trunc i64 %bf.lshr.i144 to i32
  %arrayidx.i146 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i145
  %40 = ptrtoint ptr %arrayidx.i146 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i146, align 4
  %42 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %41, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %38) #8, !srcloc !151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call29) #8
  br label %sw.epilog

do.end53:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.le183 = and i32 %5, 255
  %44 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.25, i32 noundef %and.i.le183) #12
  br label %cleanup

sw.epilog:                                        ; preds = %do.body, %sw.bb12, %sw.bb8.sw.epilog_crit_edge, %sw.bb7, %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge203, %if.end.thread176, %if.end.thread
  %bit.1.ph175 = phi i32 [ %bit.1.ph, %do.body ], [ %bf.cast5.i, %if.end.thread ], [ %bit.1.ph, %sw.bb7 ], [ %bit.1.ph, %if.end.sw.epilog_crit_edge ], [ %bit.1.ph, %sw.bb8.sw.epilog_crit_edge ], [ %bit.1.ph, %sw.bb12 ], [ %bit.1.ph, %if.end.sw.epilog_crit_edge203 ], [ %bf.cast10.i, %if.end.thread176 ]
  %mask.1.ph173 = phi i32 [ %mask.1.ph, %do.body ], [ 1, %if.end.thread ], [ %mask.1.ph, %sw.bb7 ], [ %mask.1.ph, %if.end.sw.epilog_crit_edge ], [ %mask.1.ph, %sw.bb8.sw.epilog_crit_edge ], [ %mask.1.ph, %sw.bb12 ], [ %mask.1.ph, %if.end.sw.epilog_crit_edge203 ], [ 7, %if.end.thread176 ]
  %arg.0 = phi i32 [ 1, %do.body ], [ 1, %if.end.thread ], [ 1, %sw.bb7 ], [ 0, %if.end.sw.epilog_crit_edge ], [ 2, %sw.bb8.sw.epilog_crit_edge ], [ %., %sw.bb12 ], [ 0, %if.end.sw.epilog_crit_edge203 ], [ %spec.select, %if.end.thread176 ]
  %neg54 = xor i32 %mask.1.ph173, -1
  %and55 = and i32 %arg.0, %neg54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %do.body63, label %do.end60

do.end60:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.le = and i32 %5, 255
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.28, i32 noundef %and.i.le, i32 noundef %arg.0) #12
  br label %cleanup

do.body63:                                        ; preds = %sw.epilog
  %call70 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %48 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 8)
  %bf.load.i150 = load i64, ptr %oe_bit.i, align 4
  %bf.lshr.i151 = lshr i64 %bf.load.i150, 62
  %bf.cast.i152 = trunc i64 %bf.lshr.i151 to i32
  %arrayidx.i153 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i152
  %49 = ptrtoint ptr %arrayidx.i153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i153, align 4
  %51 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %50, i32 %52
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #8, !srcloc !148
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %shl74 = shl i32 %mask.1.ph173, %bit.1.ph175
  %neg75 = xor i32 %shl74, -1
  %and76 = and i32 %54, %neg75
  %shl77 = shl i32 %arg.0, %bit.1.ph175
  %or78 = or i32 %and76, %shl77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %55 = tail call i32 @llvm.bswap.i32(i32 %or78) #8
  %56 = ptrtoint ptr %oe_bit.i to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %bf.load.i156 = load i64, ptr %oe_bit.i, align 4
  %bf.lshr.i157 = lshr i64 %bf.load.i156, 62
  %bf.cast.i158 = trunc i64 %bf.lshr.i157 to i32
  %arrayidx.i159 = getelementptr %struct.msm_pinctrl, ptr %call, i32 0, i32 14, i32 %bf.cast.i158
  %57 = ptrtoint ptr %arrayidx.i159 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i159, align 4
  %59 = ptrtoint ptr %ctl_reg.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ctl_reg.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %58, i32 %60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 %55) #8, !srcloc !151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call70) #8
  %inc = add nuw i32 %i.0186, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %do.body63.cleanup_crit_edge, label %do.body63.for.body_crit_edge

do.body63.for.body_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body63.cleanup_crit_edge:                      ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %do.body63.cleanup_crit_edge, %do.end60, %do.end53, %sw.bb8.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end53 ], [ -22, %do.end60 ], [ 0, %entry.cleanup_crit_edge ], [ -524, %sw.bb8.cleanup_crit_edge ], [ 0, %do.body63.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_init_valid_mask(ptr noundef %gc, ptr noundef %valid_mask, i32 noundef %ngpios) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %soc, align 4
  %reserved_gpios = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %reserved_gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reserved_gpios, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %sub.i = add i32 %ngpios, 31
  %4 = lshr i32 %sub.i, 3
  %mul.i = and i32 %4, 536870908
  %5 = call ptr @memset(ptr %valid_mask, i32 255, i32 %mul.i)
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp79 = icmp sgt i32 %7, -1
  br i1 %cmp79, label %if.then.for.body_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %if.then.for.body_crit_edge
  %8 = phi i32 [ %12, %if.end.for.body_crit_edge ], [ %7, %if.then.for.body_crit_edge ]
  %i.080 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.080, i32 %ngpios)
  %cmp1.not = icmp ult i32 %i.080, %ngpios
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ngpios)
  %cmp3.not = icmp ult i32 %8, %ngpios
  %or.cond = select i1 %cmp1.not, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.39) #12
  br label %cleanup

if.end:                                           ; preds = %for.body
  tail call void @_clear_bit(i32 noundef %8, ptr noundef %valid_mask) #8
  %inc = add nuw i32 %i.080, 1
  %arrayidx = getelementptr i32, ptr %3, i32 %inc
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %cmp = icmp sgt i32 %12, -1
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end6:                                          ; preds = %entry
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %call.i = tail call i32 @device_property_read_u16_array(ptr noundef %14, ptr noundef nonnull @.str.38, ptr noundef null, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9 = icmp slt i32 %call.i, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %ngpios)
  %cmp12 = icmp ugt i32 %call.i, %ngpios
  br i1 %cmp12, label %if.end11.cleanup_crit_edge, label %if.end7.i

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7.i:                                        ; preds = %if.end11
  %15 = shl nuw i32 %call.i, 1
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %15, i32 noundef 3264) #13
  %tobool16.not = icmp eq ptr %call8.i, null
  br i1 %tobool16.not, label %if.end7.i.cleanup_crit_edge, label %if.end18

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end7.i
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %call20 = tail call i32 @device_property_read_u16_array(ptr noundef %17, ptr noundef nonnull @.str.38, ptr noundef nonnull %call8.i, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.42) #12
  br label %out

if.end27:                                         ; preds = %if.end18
  %sub.i70 = add i32 %ngpios, 31
  %20 = lshr i32 %sub.i70, 3
  %mul.i71 = and i32 %20, 536870908
  %21 = call ptr @memset(ptr %valid_mask, i32 0, i32 %mul.i71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2981.not = icmp eq i32 %call.i, 0
  br i1 %cmp2981.not, label %if.end27.out_crit_edge, label %if.end27.for.body30_crit_edge

if.end27.for.body30_crit_edge:                    ; preds = %if.end27
  br label %for.body30

if.end27.out_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %if.end27.for.body30_crit_edge
  %i.182 = phi i32 [ %inc33, %for.body30.for.body30_crit_edge ], [ 0, %if.end27.for.body30_crit_edge ]
  %arrayidx31 = getelementptr i16, ptr %call8.i, i32 %i.182
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx31, align 2
  %conv = zext i16 %23 to i32
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %valid_mask) #8
  %inc33 = add nuw i32 %i.182, 1
  %exitcond.not = icmp eq i32 %inc33, %call.i
  br i1 %exitcond.not, label %for.body30.out_crit_edge, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

for.body30.out_crit_edge:                         ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

out:                                              ; preds = %for.body30.out_crit_edge, %if.end27.out_crit_edge, %do.end25
  tail call void @kfree(ptr noundef nonnull %call8.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call20, %out ], [ 0, %if.end6.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -12, %if.end7.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_irq_enable(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_chip_enable_parent(ptr noundef %d) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msm_gpio_irq_unmask(ptr noundef %d)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_irq_disable(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_chip_disable_parent(ptr noundef %d) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msm_gpio_irq_mask(ptr noundef %d)
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_irq_mask(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 13
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %groups, align 4
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tile.i = getelementptr %struct.msm_pingroup, ptr %13, i32 %5, i32 10
  %14 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i52 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i
  %15 = ptrtoint ptr %arrayidx.i52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i52, align 4
  %intr_cfg_reg.i = getelementptr %struct.msm_pingroup, ptr %13, i32 %5, i32 7
  %17 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %21 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %common.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %and = and i32 %24, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end5.if.end13_crit_edge, label %if.then11

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %intr_raw_status_bit = getelementptr %struct.msm_pingroup, ptr %13, i32 %5, i32 11
  %25 = ptrtoint ptr %intr_raw_status_bit to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load i32, ptr %intr_raw_status_bit, align 4
  %bf.lshr = lshr i32 %bf.load, 22
  %bf.clear = and i32 %bf.lshr, 31
  %shl = shl nuw i32 1, %bf.clear
  %neg = xor i32 %shl, -1
  %and12 = and i32 %20, %neg
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end5.if.end13_crit_edge
  %val.0 = phi i32 [ %and12, %if.then11 ], [ %20, %if.end5.if.end13_crit_edge ]
  %26 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load14 = load i64, ptr %tile.i, align 4
  %27 = trunc i64 %bf.load14 to i32
  %28 = lshr i32 %27, 12
  %bf.cast = and i32 %28, 31
  %shl17 = shl nuw i32 1, %bf.cast
  %neg18 = xor i32 %shl17, -1
  %and19 = and i32 %val.0, %neg18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %and19) #8
  %30 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %bf.load.i55 = load i64, ptr %tile.i, align 4
  %bf.lshr.i56 = lshr i64 %bf.load.i55, 62
  %bf.cast.i57 = trunc i64 %bf.lshr.i56 to i32
  %arrayidx.i58 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i57
  %31 = ptrtoint ptr %arrayidx.i58 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i58, align 4
  %33 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %32, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60, i32 %29) #8, !srcloc !151
  %35 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hwirq, align 4
  %enabled_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef %36, ptr noundef %enabled_irqs) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_irq_unmask(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 13
  %10 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %groups, align 4
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %tile.i = getelementptr %struct.msm_pingroup, ptr %13, i32 %5, i32 10
  %14 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i45 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i
  %15 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i45, align 4
  %intr_cfg_reg.i = getelementptr %struct.msm_pingroup, ptr %13, i32 %5, i32 7
  %17 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 %18
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %intr_raw_status_bit = getelementptr %struct.msm_pingroup, ptr %13, i32 %5, i32 11
  %21 = ptrtoint ptr %intr_raw_status_bit to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %intr_raw_status_bit, align 4
  %bf.lshr = lshr i32 %bf.load, 22
  %bf.clear = and i32 %bf.lshr, 31
  %shl = shl nuw i32 1, %bf.clear
  %or = or i32 %shl, %20
  %22 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load9 = load i64, ptr %tile.i, align 4
  %23 = trunc i64 %bf.load9 to i32
  %24 = lshr i32 %23, 12
  %bf.cast = and i32 %24, 31
  %shl12 = shl nuw i32 1, %bf.cast
  %or13 = or i32 %or, %shl12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %or13) #8
  %26 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i47 = load i64, ptr %tile.i, align 4
  %bf.lshr.i48 = lshr i64 %bf.load.i47, 62
  %bf.cast.i49 = trunc i64 %bf.lshr.i48 to i32
  %arrayidx.i50 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i49
  %27 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i50, align 4
  %29 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i52 = getelementptr i8, ptr %28, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i52, i32 %25) #8, !srcloc !151
  %31 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hwirq, align 4
  %enabled_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %32, ptr noundef %enabled_irqs) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_irq_ack(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %6 = shl nuw i32 1, %and.i
  %7 = and i32 %6, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.end8, label %if.then

if.then:                                          ; preds = %entry
  %dual_edge_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 9
  %arrayidx.i45 = getelementptr i32, ptr %dual_edge_irqs, i32 %div3.i
  %8 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i45, align 4
  %10 = and i32 %9, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %if.then.cleanup_crit_edge, label %if.then7

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @msm_gpio_update_dual_edge_parent(ptr noundef %d)
  br label %cleanup

if.end8:                                          ; preds = %entry
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 13
  %11 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %groups, align 4
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 8
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %intr_ack_high.i = getelementptr %struct.msm_pingroup, ptr %14, i32 %3, i32 10
  %15 = ptrtoint ptr %intr_ack_high.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i = load i64, ptr %intr_ack_high.i, align 4
  %16 = and i64 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not.i = icmp eq i64 %16, 0
  %17 = trunc i64 %bf.load.i to i32
  %18 = lshr i32 %17, 7
  %bf.cast4.i = and i32 %18, 31
  %shl.i = shl nuw i32 1, %bf.cast4.i
  %cond.i = select i1 %tobool.not.i, i32 0, i32 %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %20 = ptrtoint ptr %intr_ack_high.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i.i = load i64, ptr %intr_ack_high.i, align 4
  %bf.lshr.i.i = lshr i64 %bf.load.i.i, 62
  %bf.cast.i.i = trunc i64 %bf.lshr.i.i to i32
  %arrayidx.i.i = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i.i, align 4
  %intr_status_reg.i.i = getelementptr %struct.msm_pingroup, ptr %14, i32 %3, i32 8
  %23 = ptrtoint ptr %intr_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #8, !srcloc !151
  %25 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwirq, align 4
  %dual_edge_irqs12 = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 9
  %div3.i49 = lshr i32 %26, 5
  %arrayidx.i50 = getelementptr i32, ptr %dual_edge_irqs12, i32 %div3.i49
  %27 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %arrayidx.i50, align 4
  %and.i51 = and i32 %26, 31
  %29 = shl nuw i32 1, %and.i51
  %30 = and i32 %29, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool15.not = icmp eq i32 %30, 0
  br i1 %tobool15.not, label %if.end8.do.body18_crit_edge, label %if.then16

if.end8.do.body18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body18

if.then16:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.msm_pingroup, ptr %14, i32 %3
  tail call fastcc void @msm_gpio_update_dual_edge_pos(ptr noundef %call1, ptr noundef %arrayidx)
  br label %do.body18

do.body18:                                        ; preds = %if.then16, %if.end8.do.body18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body18, %if.then7, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_type(ptr noundef %d, i32 noundef %type) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !156
  %3 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i, align 4
  %call1.i = tail call ptr @gpiochip_get_data(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %type)
  %cmp.i = icmp eq i32 %type, 3
  br i1 %cmp.i, label %land.lhs.true.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i:                                  ; preds = %entry
  %soc.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call1.i, i32 0, i32 13
  %5 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %soc.i, align 4
  %wakeirq_dual_edge_errata.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %6, i32 0, i32 13
  %7 = ptrtoint ptr %wakeirq_dual_edge_errata.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %wakeirq_dual_edge_errata.i, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %parent_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %9 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent_data.i, align 4
  %tobool3.not.i = icmp eq ptr %10, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.if.end_crit_edge, label %msm_gpio_needs_dual_edge_parent_workaround.exit

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

msm_gpio_needs_dual_edge_parent_workaround.exit:  ; preds = %land.lhs.true2.i
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %11 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq.i, align 4
  %skip_wake_irqs.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call1.i, i32 0, i32 11
  %div3.i.i = lshr i32 %12, 5
  %arrayidx.i.i = getelementptr i32, ptr %skip_wake_irqs.i, i32 %div3.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %12, 31
  %15 = shl nuw i32 1, %and.i.i
  %16 = and i32 %15, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.i.not = icmp eq i32 %16, 0
  br i1 %tobool5.i.not, label %msm_gpio_needs_dual_edge_parent_workaround.exit.if.end_crit_edge, label %if.then

msm_gpio_needs_dual_edge_parent_workaround.exit.if.end_crit_edge: ; preds = %msm_gpio_needs_dual_edge_parent_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %msm_gpio_needs_dual_edge_parent_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hwirq.i, align 4
  %dual_edge_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 9
  tail call void @_set_bit(i32 noundef %18, ptr noundef %dual_edge_irqs) #8
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %19 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @handle_fasteoi_ack_irq, ptr %handle_irq.i, align 4
  tail call fastcc void @msm_gpio_update_dual_edge_parent(ptr noundef %d)
  br label %cleanup

if.end:                                           ; preds = %msm_gpio_needs_dual_edge_parent_workaround.exit.if.end_crit_edge, %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %22 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %23, null
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %type) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %hwirq6 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %24 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hwirq6, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %25, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %25, 31
  %28 = shl nuw i32 1, %and.i
  %29 = and i32 %28, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool9.not = icmp eq i32 %29, 0
  br i1 %tobool9.not, label %if.end14, label %if.then10

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dual_edge_irqs12 = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 9
  tail call void @_clear_bit(i32 noundef %25, ptr noundef %dual_edge_irqs12) #8
  %common.i.i335 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %30 = ptrtoint ptr %common.i.i335 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %common.i.i335, align 4
  %handle_irq.i336 = getelementptr inbounds %struct.irq_desc, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %handle_irq.i336 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @handle_fasteoi_irq, ptr %handle_irq.i336, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 13
  %33 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.msm_pingroup, ptr %36, i32 %25
  %lock = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 8
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %intr_detection_width = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 11
  %37 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load = load i32, ptr %intr_detection_width, align 4
  %38 = and i32 %bf.load, 3968
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %38)
  %cmp17 = icmp eq i32 %38, 128
  %or.cond = and i1 %cmp.i, %cmp17
  %39 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %hwirq6, align 4
  %dual_edge_irqs23 = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 9
  br i1 %or.cond, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef %40, ptr noundef %dual_edge_irqs23) #8
  br label %if.end28

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_clear_bit(i32 noundef %40, ptr noundef %dual_edge_irqs23) #8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %if.then21
  %intr_target_use_scm = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 7
  %41 = ptrtoint ptr %intr_target_use_scm to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %intr_target_use_scm, align 4, !range !154
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool29.not = icmp eq i8 %42, 0
  br i1 %tobool29.not, label %if.else52, label %if.then30

if.then30:                                        ; preds = %if.end28
  %phys_base = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 15
  %43 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %phys_base, align 4
  %intr_target_reg = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 9
  %45 = ptrtoint ptr %intr_target_reg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %intr_target_reg, align 4
  %add = add i32 %46, %44
  %call32 = call i32 @qcom_scm_io_readl(i32 noundef %add, ptr noundef nonnull %val) #8
  %intr_target_bit = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 10
  %47 = ptrtoint ptr %intr_target_bit to i32
  call void @__asan_loadN_noabort(i32 %47, i32 8)
  %bf.load33 = load i64, ptr %intr_target_bit, align 4
  %48 = trunc i64 %bf.load33 to i32
  %49 = lshr i32 %48, 1
  %bf.cast = and i32 %49, 31
  %shl = shl i32 7, %bf.cast
  %neg = xor i32 %shl, -1
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  %and = and i32 %51, %neg
  store i32 %and, ptr %val, align 4
  %52 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %52)
  %bf.load36 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr37 = lshr i32 %bf.load36, 27
  %shl43 = shl i32 %bf.lshr37, %bf.cast
  %or = or i32 %and, %shl43
  store i32 %or, ptr %val, align 4
  %call44 = call i32 @qcom_scm_io_writel(i32 noundef %add, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then30.if.end72_crit_edge, label %do.end49

if.then30.if.end72_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

do.end49:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call1, align 4
  %55 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hwirq6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.49, i32 noundef %56) #12
  br label %if.end72

if.else52:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %tile.i = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 10
  %57 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i337 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i
  %58 = ptrtoint ptr %arrayidx.i337 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.i337, align 4
  %intr_target_reg.i = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 9
  %60 = ptrtoint ptr %intr_target_reg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %intr_target_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %59, i32 %61
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !161
  %64 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 8)
  %bf.load55 = load i64, ptr %tile.i, align 4
  %65 = trunc i64 %bf.load55 to i32
  %66 = lshr i32 %65, 1
  %bf.cast58 = and i32 %66, 31
  %shl59 = shl i32 7, %bf.cast58
  %neg60 = xor i32 %shl59, -1
  %and61 = and i32 %63, %neg60
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and61, ptr %val, align 4
  %68 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load63 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 27
  %shl70 = shl i32 %bf.lshr64, %bf.cast58
  %or71 = or i32 %and61, %shl70
  store i32 %or71, ptr %val, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !162
  tail call void @arm_heavy_mb() #8
  %69 = tail call i32 @llvm.bswap.i32(i32 %or71) #8
  %70 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 8)
  %bf.load.i339 = load i64, ptr %tile.i, align 4
  %bf.lshr.i340 = lshr i64 %bf.load.i339, 62
  %bf.cast.i341 = trunc i64 %bf.lshr.i340 to i32
  %arrayidx.i342 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i341
  %71 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx.i342, align 4
  %73 = ptrtoint ptr %intr_target_reg.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %intr_target_reg.i, align 4
  %add.ptr.i344 = getelementptr i8, ptr %72, i32 %74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i344, i32 %69) #8, !srcloc !151
  br label %if.end72

if.end72:                                         ; preds = %if.else52, %do.end49, %if.then30.if.end72_crit_edge
  %tile.i345 = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 10
  %75 = ptrtoint ptr %tile.i345 to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %bf.load.i346 = load i64, ptr %tile.i345, align 4
  %bf.lshr.i347 = lshr i64 %bf.load.i346, 62
  %bf.cast.i348 = trunc i64 %bf.lshr.i347 to i32
  %arrayidx.i349 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i348
  %76 = ptrtoint ptr %arrayidx.i349 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i349, align 4
  %intr_cfg_reg.i = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 7
  %78 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i350 = getelementptr i8, ptr %77, i32 %79
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350) #8, !srcloc !148
  %81 = call i32 @llvm.bswap.i32(i32 %80) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %82 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %val, align 4
  %83 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %83)
  %bf.load74 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr75 = lshr i32 %bf.load74, 22
  %bf.clear76 = and i32 %bf.lshr75, 31
  %shl77 = shl nuw i32 1, %bf.clear76
  %and78 = and i32 %shl77, %81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  %or85 = or i32 %shl77, %81
  %84 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or85, ptr %val, align 4
  %85 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %85)
  %bf.load87 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr88 = lshr i32 %bf.load87, 7
  %bf.clear89 = and i32 %bf.lshr88, 31
  %86 = zext i32 %bf.clear89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %bf.clear89, label %do.body214 [
    i32 2, label %if.then92
    i32 1, label %if.then157
  ]

if.then92:                                        ; preds = %if.end72
  %bf.lshr94 = lshr i32 %bf.load87, 12
  %bf.clear95 = and i32 %bf.lshr94, 31
  %shl96 = shl i32 3, %bf.clear95
  %neg97 = xor i32 %shl96, -1
  %and98 = and i32 %or85, %neg97
  %87 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %and98, ptr %val, align 4
  %88 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %88)
  %bf.load99 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr100 = lshr i32 %bf.load99, 17
  %bf.clear101 = and i32 %bf.lshr100, 31
  %shl102 = shl nuw i32 1, %bf.clear101
  %neg103 = xor i32 %shl102, -1
  %and104 = and i32 %and98, %neg103
  store i32 %and104, ptr %val, align 4
  %89 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %type, label %if.then92.if.end221_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb117
    i32 3, label %sw.bb130
    i32 4, label %sw.bb143
  ]

if.then92.if.end221_crit_edge:                    ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

sw.bb:                                            ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %90)
  %bf.load106 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr107 = lshr i32 %bf.load106, 12
  %bf.clear108 = and i32 %bf.lshr107, 31
  %shl109 = shl nuw i32 1, %bf.clear108
  %or110 = or i32 %shl109, %and104
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %or110, ptr %val, align 4
  %bf.load112 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr113 = lshr i32 %bf.load112, 17
  %bf.clear114 = and i32 %bf.lshr113, 31
  %shl115 = shl nuw i32 1, %bf.clear114
  %or116 = or i32 %shl115, %or110
  store i32 %or116, ptr %val, align 4
  br label %if.end221

sw.bb117:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load119 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr120 = lshr i32 %bf.load119, 12
  %bf.clear121 = and i32 %bf.lshr120, 31
  %shl122 = shl i32 2, %bf.clear121
  %or123 = or i32 %shl122, %and104
  %93 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or123, ptr %val, align 4
  %bf.load125 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr126 = lshr i32 %bf.load125, 17
  %bf.clear127 = and i32 %bf.lshr126, 31
  %shl128 = shl nuw i32 1, %bf.clear127
  %or129 = or i32 %shl128, %or123
  store i32 %or129, ptr %val, align 4
  br label %if.end221

sw.bb130:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %94)
  %bf.load132 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr133 = lshr i32 %bf.load132, 12
  %bf.clear134 = and i32 %bf.lshr133, 31
  %shl135 = shl i32 3, %bf.clear134
  %or136 = or i32 %shl135, %and104
  %95 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %or136, ptr %val, align 4
  %bf.load138 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr139 = lshr i32 %bf.load138, 17
  %bf.clear140 = and i32 %bf.lshr139, 31
  %shl141 = shl nuw i32 1, %bf.clear140
  %or142 = or i32 %shl141, %or136
  store i32 %or142, ptr %val, align 4
  br label %if.end221

sw.bb143:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %96)
  %bf.load145 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr146 = lshr i32 %bf.load145, 17
  %bf.clear147 = and i32 %bf.lshr146, 31
  %shl148 = shl nuw i32 1, %bf.clear147
  %or149 = or i32 %shl148, %and104
  %97 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %or149, ptr %val, align 4
  br label %if.end221

if.then157:                                       ; preds = %if.end72
  %bf.lshr160 = lshr i32 %bf.load87, 12
  %bf.clear161 = and i32 %bf.lshr160, 31
  %shl162 = shl nuw i32 1, %bf.clear161
  %neg163 = xor i32 %shl162, -1
  %and164 = and i32 %or85, %neg163
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and164, ptr %val, align 4
  %99 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load166 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr167 = lshr i32 %bf.load166, 17
  %bf.clear168 = and i32 %bf.lshr167, 31
  %shl169 = shl nuw i32 1, %bf.clear168
  %neg170 = xor i32 %shl169, -1
  %and171 = and i32 %and164, %neg170
  store i32 %and171, ptr %val, align 4
  %100 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %type, label %if.then157.if.end221_crit_edge [
    i32 1, label %sw.bb172
    i32 2, label %sw.bb185
    i32 3, label %sw.bb192
    i32 4, label %sw.bb205
  ]

if.then157.if.end221_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end221

sw.bb172:                                         ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %101)
  %bf.load174 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr175 = lshr i32 %bf.load174, 12
  %bf.clear176 = and i32 %bf.lshr175, 31
  %shl177 = shl nuw i32 1, %bf.clear176
  %or178 = or i32 %shl177, %and171
  %102 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or178, ptr %val, align 4
  %bf.load180 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr181 = lshr i32 %bf.load180, 17
  %bf.clear182 = and i32 %bf.lshr181, 31
  %shl183 = shl nuw i32 1, %bf.clear182
  %or184 = or i32 %shl183, %or178
  store i32 %or184, ptr %val, align 4
  br label %if.end221

sw.bb185:                                         ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %103)
  %bf.load187 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr188 = lshr i32 %bf.load187, 12
  %bf.clear189 = and i32 %bf.lshr188, 31
  %shl190 = shl nuw i32 1, %bf.clear189
  %or191 = or i32 %shl190, %and171
  %104 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or191, ptr %val, align 4
  br label %if.end221

sw.bb192:                                         ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load194 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr195 = lshr i32 %bf.load194, 12
  %bf.clear196 = and i32 %bf.lshr195, 31
  %shl197 = shl nuw i32 1, %bf.clear196
  %or198 = or i32 %shl197, %and171
  %106 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or198, ptr %val, align 4
  %bf.load200 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr201 = lshr i32 %bf.load200, 17
  %bf.clear202 = and i32 %bf.lshr201, 31
  %shl203 = shl nuw i32 1, %bf.clear202
  %or204 = or i32 %shl203, %or198
  store i32 %or204, ptr %val, align 4
  br label %if.end221

sw.bb205:                                         ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %intr_detection_width to i32
  call void @__asan_load4_noabort(i32 %107)
  %bf.load207 = load i32, ptr %intr_detection_width, align 4
  %bf.lshr208 = lshr i32 %bf.load207, 17
  %bf.clear209 = and i32 %bf.lshr208, 31
  %shl210 = shl nuw i32 1, %bf.clear209
  %or211 = or i32 %shl210, %and171
  %108 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or211, ptr %val, align 4
  br label %if.end221

do.body214:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/qcom/pinctrl-msm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1077, 0\0A.popsection", ""() #8, !srcloc !163
  unreachable

if.end221:                                        ; preds = %sw.bb205, %sw.bb192, %sw.bb185, %sw.bb172, %if.then157.if.end221_crit_edge, %sw.bb143, %sw.bb130, %sw.bb117, %sw.bb, %if.then92.if.end221_crit_edge
  %109 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %val, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  call void @arm_heavy_mb() #8
  %111 = call i32 @llvm.bswap.i32(i32 %110) #8
  %112 = ptrtoint ptr %tile.i345 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 8)
  %bf.load.i352 = load i64, ptr %tile.i345, align 4
  %bf.lshr.i353 = lshr i64 %bf.load.i352, 62
  %bf.cast.i354 = trunc i64 %bf.lshr.i353 to i32
  %arrayidx.i355 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i354
  %113 = ptrtoint ptr %arrayidx.i355 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx.i355, align 4
  %115 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i357 = getelementptr i8, ptr %114, i32 %116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i357, i32 %111) #8, !srcloc !151
  br i1 %tobool79.not, label %if.then223, label %if.end221.if.end224_crit_edge

if.end221.if.end224_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end224

if.then223:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %tile.i345 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %bf.load.i358 = load i64, ptr %tile.i345, align 4
  %118 = and i64 %bf.load.i358, 64
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %118)
  %tobool.not.i359 = icmp eq i64 %118, 0
  %119 = trunc i64 %bf.load.i358 to i32
  %120 = lshr i32 %119, 7
  %bf.cast4.i = and i32 %120, 31
  %shl.i = shl nuw i32 1, %bf.cast4.i
  %cond.i = select i1 %tobool.not.i359, i32 0, i32 %shl.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !158
  call void @arm_heavy_mb() #8
  %121 = call i32 @llvm.bswap.i32(i32 %cond.i) #8
  %122 = ptrtoint ptr %tile.i345 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %bf.load.i.i = load i64, ptr %tile.i345, align 4
  %bf.lshr.i.i = lshr i64 %bf.load.i.i, 62
  %bf.cast.i.i = trunc i64 %bf.lshr.i.i to i32
  %arrayidx.i.i360 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i.i
  %123 = ptrtoint ptr %arrayidx.i.i360 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx.i.i360, align 4
  %intr_status_reg.i.i = getelementptr %struct.msm_pingroup, ptr %36, i32 %25, i32 8
  %125 = ptrtoint ptr %intr_status_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %intr_status_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %124, i32 %126
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %121) #8, !srcloc !151
  br label %if.end224

if.end224:                                        ; preds = %if.then223, %if.end221.if.end224_crit_edge
  %127 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %hwirq6, align 4
  %dual_edge_irqs226 = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 9
  %div3.i330 = lshr i32 %128, 5
  %arrayidx.i331 = getelementptr i32, ptr %dual_edge_irqs226, i32 %div3.i330
  %129 = ptrtoint ptr %arrayidx.i331 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %arrayidx.i331, align 4
  %and.i332 = and i32 %128, 31
  %131 = shl nuw i32 1, %and.i332
  %132 = and i32 %131, %130
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool229.not = icmp eq i32 %132, 0
  br i1 %tobool229.not, label %if.end224.do.body232_crit_edge, label %if.then230

if.end224.do.body232_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body232

if.then230:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @msm_gpio_update_dual_edge_pos(ptr noundef %call1, ptr noundef %arrayidx)
  br label %do.body232

do.body232:                                       ; preds = %if.then230, %if.end224.do.body232_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #8
  %and241 = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and241)
  %tobool242.not = icmp eq i32 %and241, 0
  br i1 %tobool242.not, label %if.else244, label %if.then243

if.then243:                                       ; preds = %do.body232
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i361 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %133 = ptrtoint ptr %common.i.i361 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %common.i.i361, align 4
  %handle_irq.i362 = getelementptr inbounds %struct.irq_desc, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %handle_irq.i362 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @handle_level_irq, ptr %handle_irq.i362, align 4
  br label %cleanup

if.else244:                                       ; preds = %do.body232
  %and245 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  br i1 %tobool246.not, label %if.else244.cleanup_crit_edge, label %if.then247

if.else244.cleanup_crit_edge:                     ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then247:                                       ; preds = %if.else244
  call void @__sanitizer_cov_trace_pc() #10
  %common.i.i363 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %136 = ptrtoint ptr %common.i.i363 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %common.i.i363, align 4
  %handle_irq.i364 = getelementptr inbounds %struct.irq_desc, ptr %137, i32 0, i32 3
  %138 = ptrtoint ptr %handle_irq.i364 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @handle_edge_irq, ptr %handle_irq.i364, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then247, %if.else244.cleanup_crit_edge, %if.then243, %if.then10, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_wake(ptr noundef %d, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @irq_chip_set_wake_parent(ptr noundef %d, i32 noundef %on) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 6
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 4
  %call5 = tail call i32 @irq_set_irq_wake(i32 noundef %11, i32 noundef %on) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_reqres(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %owner, align 4
  %call2 = tail call zeroext i1 @try_module_get(ptr noundef %3) #8
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pctrl3 = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %pctrl3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pctrl3, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %call.i = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %5) #8
  %soc.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i, i32 0, i32 13
  %8 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %soc.i, align 4
  %groups.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %groups.i, align 4
  %nfuncs.i = getelementptr %struct.msm_pingroup, ptr %11, i32 %7, i32 4
  %12 = ptrtoint ptr %nfuncs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nfuncs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %msm_pinmux_request_gpio.exit

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

msm_pinmux_request_gpio.exit:                     ; preds = %if.end
  %funcs.i = getelementptr %struct.msm_pingroup, ptr %11, i32 %7, i32 3
  %14 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs.i, align 4
  %gpio_func.i = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %9, i32 0, i32 14
  %16 = ptrtoint ptr %gpio_func.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gpio_func.i, align 4
  %arrayidx2.i = getelementptr i32, ptr %15, i32 %17
  %18 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @msm_pinmux_set_mux(ptr noundef %5, i32 noundef %19, i32 noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %msm_pinmux_request_gpio.exit.if.end6_crit_edge, label %msm_pinmux_request_gpio.exit.out_crit_edge

msm_pinmux_request_gpio.exit.out_crit_edge:       ; preds = %msm_pinmux_request_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

msm_pinmux_request_gpio.exit.if.end6_crit_edge:   ; preds = %msm_pinmux_request_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %msm_pinmux_request_gpio.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %20 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hwirq, align 4
  %call.i29 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %soc.i30 = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i29, i32 0, i32 13
  %22 = ptrtoint ptr %soc.i30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc.i30, align 4
  %groups.i31 = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %groups.i31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %groups.i31, align 4
  %lock.i = getelementptr inbounds %struct.msm_pinctrl, ptr %call.i29, i32 0, i32 8
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %tile.i.i = getelementptr %struct.msm_pingroup, ptr %25, i32 %21, i32 10
  %26 = ptrtoint ptr %tile.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i.i = load i64, ptr %tile.i.i, align 4
  %bf.lshr.i.i = lshr i64 %bf.load.i.i, 62
  %bf.cast.i.i = trunc i64 %bf.lshr.i.i to i32
  %arrayidx.i.i = getelementptr %struct.msm_pinctrl, ptr %call.i29, i32 0, i32 14, i32 %bf.cast.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i.i, align 4
  %ctl_reg.i.i = getelementptr %struct.msm_pingroup, ptr %25, i32 %21, i32 5
  %29 = ptrtoint ptr %ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ctl_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 %30
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !148
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !149
  %33 = ptrtoint ptr %tile.i.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load.i = load i64, ptr %tile.i.i, align 4
  %34 = trunc i64 %bf.load.i to i32
  %35 = lshr i32 %34, 27
  %shl.i = shl nuw i32 1, %35
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %32, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !150
  tail call void @arm_heavy_mb() #8
  %36 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  %37 = ptrtoint ptr %tile.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %bf.load.i20.i = load i64, ptr %tile.i.i, align 4
  %bf.lshr.i21.i = lshr i64 %bf.load.i20.i, 62
  %bf.cast.i22.i = trunc i64 %bf.lshr.i21.i to i32
  %arrayidx.i23.i = getelementptr %struct.msm_pinctrl, ptr %call.i29, i32 0, i32 14, i32 %bf.cast.i22.i
  %38 = ptrtoint ptr %arrayidx.i23.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i23.i, align 4
  %40 = ptrtoint ptr %ctl_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ctl_reg.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %39, i32 %41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 %36) #8, !srcloc !151
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call1.i) #8
  %42 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hwirq, align 4
  %call10 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %1, i32 noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end14, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %parent, align 4
  %46 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hwirq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.51, i32 noundef %47) #12
  br label %out

if.end14:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %48 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq, align 4
  tail call void @irq_modify_status(i32 noundef %49, i32 noundef 0, i32 noundef 524288) #8
  br label %cleanup

out:                                              ; preds = %do.end, %msm_pinmux_request_gpio.exit.out_crit_edge
  %ret.0 = phi i32 [ %call3.i, %msm_pinmux_request_gpio.exit.out_crit_edge ], [ -22, %do.end ]
  %50 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %51) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ 0, %if.end14 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_irq_relres(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %1, i32 noundef %3) #8
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_affinity(ptr noundef %d, ptr noundef %dest, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @irq_chip_set_affinity_parent(ptr noundef %d, ptr noundef %dest, i1 noundef zeroext %force) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_irq_set_vcpu_affinity(ptr noundef %d, ptr noundef %vcpu_info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 6
  %2 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %skip_wake_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 11
  %div3.i = lshr i32 %5, 5
  %arrayidx.i = getelementptr i32, ptr %skip_wake_irqs, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %5, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %8, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @irq_chip_set_vcpu_affinity_parent(ptr noundef %d, ptr noundef %vcpu_info) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @msm_gpio_wakeirq(ptr noundef %gc, i32 noundef %child, i32 noundef %child_type, ptr nocapture noundef writeonly %parent, ptr nocapture noundef writeonly %parent_type) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #8
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %parent, align 4
  %1 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %parent_type, align 4
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call, i32 0, i32 13
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %nwakeirq_map = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %nwakeirq_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nwakeirq_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.not = icmp eq i32 %5, 0
  br i1 %cmp9.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %wakeirq_map = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %wakeirq_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wakeirq_map, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.010 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.msm_gpio_wakeirq_map, ptr %7, i32 %i.010
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %child)
  %cmp2 = icmp eq i32 %9, %child
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %wakeirq = getelementptr %struct.msm_gpio_wakeirq_map, ptr %7, i32 %i.010, i32 1
  %10 = ptrtoint ptr %wakeirq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %wakeirq, align 4
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %parent, align 4
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @msm_gpio_irq_handler(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %enabled_irqs = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 10
  %ngpio = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 2, i32 20
  %12 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %13 to i32
  %call4 = tail call i32 @_find_next_bit_be(ptr noundef %enabled_irqs, i32 noundef %conv, i32 noundef 0) #8
  %14 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ngpio, align 4
  %conv742 = zext i16 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %conv742)
  %cmp43 = icmp slt i32 %call4, %conv742
  br i1 %cmp43, label %for.body.lr.ph, label %chained_irq_enter.exit.if.then19_crit_edge

chained_irq_enter.exit.if.then19_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 13
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ %call4, %for.body.lr.ph ], [ %call16, %for.inc.for.body_crit_edge ]
  %handled.044 = phi i32 [ 0, %for.body.lr.ph ], [ %handled.1, %for.inc.for.body_crit_edge ]
  %16 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %groups, align 4
  %tile.i = getelementptr %struct.msm_pingroup, ptr %19, i32 %i.045, i32 10
  %20 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %intr_status_reg.i = getelementptr %struct.msm_pingroup, ptr %19, i32 %i.045, i32 8
  %23 = ptrtoint ptr %intr_status_reg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %intr_status_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 %24
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  %27 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load = load i64, ptr %tile.i, align 4
  %28 = trunc i64 %bf.load to i32
  %29 = lshr i32 %28, 7
  %bf.cast = and i32 %29, 31
  %shl = shl nuw i32 1, %bf.cast
  %and = and i32 %shl, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %domain, align 4
  %call10 = tail call i32 @generic_handle_domain_irq(ptr noundef %31, i32 noundef %i.045) #8
  %inc = add i32 %handled.044, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %handled.1 = phi i32 [ %inc, %if.then ], [ %handled.044, %for.body.for.inc_crit_edge ]
  %32 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %ngpio, align 4
  %conv15 = zext i16 %33 to i32
  %add = add nsw i32 %i.045, 1
  %call16 = tail call i32 @_find_next_bit_be(ptr noundef %enabled_irqs, i32 noundef %conv15, i32 noundef %add) #8
  %34 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %ngpio, align 4
  %conv7 = zext i16 %35 to i32
  %cmp = icmp slt i32 %call16, %conv7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handled.1)
  %cmp17 = icmp eq i32 %handled.1, 0
  br i1 %cmp17, label %for.end.if.then19_crit_edge, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

for.end.if.then19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then19

if.then19:                                        ; preds = %for.end.if.then19_crit_edge, %chained_irq_enter.exit.if.then19_crit_edge
  tail call void @handle_bad_irq(ptr noundef %desc) #8
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %for.end.if.end20_crit_edge
  %36 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i39 = icmp eq ptr %37, null
  br i1 %tobool.not.i39, label %if.else.i40, label %if.end20.chained_irq_exit.exit_crit_edge

if.end20.chained_irq_exit.exit_crit_edge:         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i40:                                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %38 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i40, %if.end20.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %39, %if.else.i40 ], [ %37, %if.end20.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_enable_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_disable_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_gpio_update_dual_edge_parent(ptr noundef %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #8
  %soc = getelementptr inbounds %struct.msm_pinctrl, ptr %call1, i32 0, i32 13
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %soc, align 4
  %groups = getelementptr inbounds %struct.msm_pinctrl_soc_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %groups, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %tile.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %7, i32 10
  %8 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %io_reg.i = getelementptr %struct.msm_pingroup, ptr %5, i32 %7, i32 6
  %11 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %15 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load = load i64, ptr %tile.i, align 4
  %16 = trunc i64 %bf.load to i32
  %17 = lshr i32 %16, 22
  %bf.cast = and i32 %17, 31
  %shl = shl nuw i32 1, %bf.cast
  %and = and i32 %shl, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 1, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %loop_limit.0 = phi i32 [ %dec, %do.cond.do.body_crit_edge ], [ 100, %entry ]
  %type.0 = phi i32 [ %type.1, %do.cond.do.body_crit_edge ], [ %spec.select, %entry ]
  %call3 = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %type.0) #8
  %18 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load.i50 = load i64, ptr %tile.i, align 4
  %bf.lshr.i51 = lshr i64 %bf.load.i50, 62
  %bf.cast.i52 = trunc i64 %bf.lshr.i51 to i32
  %arrayidx.i53 = getelementptr %struct.msm_pinctrl, ptr %call1, i32 0, i32 14, i32 %bf.cast.i52
  %19 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i53, align 4
  %21 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i55 = getelementptr i8, ptr %20, i32 %22
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i55) #8, !srcloc !148
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %25 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load6 = load i64, ptr %tile.i, align 4
  %26 = trunc i64 %bf.load6 to i32
  %27 = lshr i32 %26, 22
  %bf.cast9 = and i32 %27, 31
  %shl10 = shl nuw i32 1, %bf.cast9
  %and11 = and i32 %shl10, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type.0)
  %cmp = icmp eq i32 %type.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %cmp, label %if.then, label %if.then15

if.then:                                          ; preds = %do.body
  br i1 %tobool12.not, label %if.then.cleanup_crit_edge, label %if.then.do.cond_crit_edge

if.then.do.cond_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15:                                        ; preds = %do.body
  br i1 %tobool12.not, label %if.then15.do.cond_crit_edge, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then15.do.cond_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond

do.cond:                                          ; preds = %if.then15.do.cond_crit_edge, %if.then.do.cond_crit_edge
  %type.1 = phi i32 [ 2, %if.then.do.cond_crit_edge ], [ 1, %if.then15.do.cond_crit_edge ]
  %dec = add nsw i32 %loop_limit.0, -1
  %cmp21.not = icmp eq i32 %loop_limit.0, 0
  br i1 %cmp21.not, label %do.body22, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body22:                                        ; preds = %do.cond
  %.b48 = load i1, ptr @msm_gpio_update_dual_edge_parent.__print_once, align 1
  br i1 %.b48, label %do.body22.cleanup_crit_edge, label %if.then24

do.body22.cleanup_crit_edge:                      ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @msm_gpio_update_dual_edge_parent.__print_once, align 1
  %28 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.44) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %do.body22.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msm_gpio_update_dual_edge_pos(ptr nocapture noundef readonly %pctrl, ptr nocapture noundef readonly %g) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tile.i = getelementptr inbounds %struct.msm_pingroup, ptr %g, i32 0, i32 10
  %io_reg.i = getelementptr inbounds %struct.msm_pingroup, ptr %g, i32 0, i32 6
  %intr_cfg_reg.i = getelementptr inbounds %struct.msm_pingroup, ptr %g, i32 0, i32 7
  %intr_polarity_bit = getelementptr inbounds %struct.msm_pingroup, ptr %g, i32 0, i32 11
  %intr_status_reg.i = getelementptr inbounds %struct.msm_pingroup, ptr %g, i32 0, i32 8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %loop_limit.0 = phi i32 [ 100, %entry ], [ %dec, %do.cond.do.body_crit_edge ]
  %0 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %tile.i, align 4
  %bf.lshr.i = lshr i64 %bf.load.i, 62
  %bf.cast.i = trunc i64 %bf.lshr.i to i32
  %arrayidx.i = getelementptr %struct.msm_pinctrl, ptr %pctrl, i32 0, i32 14, i32 %bf.cast.i
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %3 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !148
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %7 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load = load i64, ptr %tile.i, align 4
  %8 = trunc i64 %bf.load to i32
  %9 = lshr i32 %8, 22
  %bf.cast = and i32 %9, 31
  %shl = shl nuw i32 1, %bf.cast
  %and = and i32 %shl, %6
  %bf.lshr.i3 = lshr i64 %bf.load, 62
  %bf.cast.i4 = trunc i64 %bf.lshr.i3 to i32
  %arrayidx.i5 = getelementptr %struct.msm_pinctrl, ptr %pctrl, i32 0, i32 14, i32 %bf.cast.i4
  %10 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i5, align 4
  %12 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i6 = getelementptr i8, ptr %11, i32 %13
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6) #8, !srcloc !148
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !159
  %16 = ptrtoint ptr %intr_polarity_bit to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load2 = load i32, ptr %intr_polarity_bit, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 17
  %bf.clear4 = and i32 %bf.lshr3, 31
  %shl5 = shl nuw i32 1, %bf.clear4
  %xor = xor i32 %shl5, %15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !160
  tail call void @arm_heavy_mb() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %xor) #8
  %18 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load.i8 = load i64, ptr %tile.i, align 4
  %bf.lshr.i9 = lshr i64 %bf.load.i8, 62
  %bf.cast.i10 = trunc i64 %bf.lshr.i9 to i32
  %arrayidx.i11 = getelementptr %struct.msm_pinctrl, ptr %pctrl, i32 0, i32 14, i32 %bf.cast.i10
  %19 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i11, align 4
  %21 = ptrtoint ptr %intr_cfg_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %intr_cfg_reg.i, align 4
  %add.ptr.i13 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13, i32 %17) #8, !srcloc !151
  %23 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i15 = load i64, ptr %tile.i, align 4
  %bf.lshr.i16 = lshr i64 %bf.load.i15, 62
  %bf.cast.i17 = trunc i64 %bf.lshr.i16 to i32
  %arrayidx.i18 = getelementptr %struct.msm_pinctrl, ptr %pctrl, i32 0, i32 14, i32 %bf.cast.i17
  %24 = ptrtoint ptr %arrayidx.i18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i18, align 4
  %26 = ptrtoint ptr %io_reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %io_reg.i, align 4
  %add.ptr.i20 = getelementptr i8, ptr %25, i32 %27
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #8, !srcloc !148
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !152
  %30 = ptrtoint ptr %tile.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 8)
  %bf.load8 = load i64, ptr %tile.i, align 4
  %31 = trunc i64 %bf.load8 to i32
  %32 = lshr i32 %31, 22
  %bf.cast11 = and i32 %32, 31
  %shl12 = shl nuw i32 1, %bf.cast11
  %and13 = and i32 %shl12, %29
  %bf.lshr.i23 = lshr i64 %bf.load8, 62
  %bf.cast.i24 = trunc i64 %bf.lshr.i23 to i32
  %arrayidx.i25 = getelementptr %struct.msm_pinctrl, ptr %pctrl, i32 0, i32 14, i32 %bf.cast.i24
  %33 = ptrtoint ptr %arrayidx.i25 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i25, align 4
  %35 = ptrtoint ptr %intr_status_reg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %intr_status_reg.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %34, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #8, !srcloc !148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !164
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and13)
  %cmp = icmp eq i32 %and, %and13
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %dec = add nsw i32 %loop_limit.0, -1
  %cmp15.not = icmp eq i32 %loop_limit.0, 0
  br i1 %cmp15.not, label %do.end18, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end18:                                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.47, i32 noundef %and, i32 noundef %and13) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end18, %do.body.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_ack_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_fasteoi_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_io_readl(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_scm_io_writel(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_vcpu_affinity_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !90, !92, !93, !95, !96, !97, !98, !100, !102, !103, !104, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !121, !122, !124, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @msm_pinctrl_dev_pm_ops, !1, !"msm_pinctrl_dev_pm_ops", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1397, i32 1}
!2 = !{ptr @__ksymtab_msm_pinctrl_dev_pm_ops, !3, !"__ksymtab_msm_pinctrl_dev_pm_ops", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1400, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1419, i32 6}
!6 = !{ptr @msm_pinctrl_probe.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1421, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1456, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @msm_pinctrl_probe._entry, !10, !"_entry", i1 false, i1 false}
!16 = !{ptr @msm_pinctrl_probe._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1466, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @msm_pinctrl_probe.__UNIQUE_ID_ddebug227, !18, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!21 = !{ptr @__ksymtab_msm_pinctrl_probe, !22, !"__ksymtab_msm_pinctrl_probe", i1 false, i1 false}
!22 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1470, i32 1}
!23 = !{ptr @__ksymtab_msm_pinctrl_remove, !24, !"__ksymtab_msm_pinctrl_remove", i1 false, i1 false}
!24 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1482, i32 1}
!25 = !{ptr @__UNIQUE_ID_description228, !26, !"__UNIQUE_ID_description228", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1484, i32 1}
!27 = !{ptr @__UNIQUE_ID_file229, !28, !"__UNIQUE_ID_file229", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1485, i32 1}
!29 = !{ptr @__UNIQUE_ID_license230, !28, !"__UNIQUE_ID_license230", i1 false, i1 false}
!30 = !{ptr @msm_gpio_template, !31, !"msm_gpio_template", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 724, i32 31}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 621, i32 3}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 622, i32 3}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 623, i32 3}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 624, i32 3}
!40 = !{ptr @msm_gpio_dbg_show_one.pulls_keeper, !41, !"pulls_keeper", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 620, i32 28}
!42 = !{ptr @msm_gpio_dbg_show_one.pulls_no_keeper, !43, !"pulls_no_keeper", i1 false, i1 false}
!43 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 627, i32 28}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 650, i32 16}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 650, i32 49}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 650, i32 57}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 651, i32 16}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 651, i32 38}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 651, i32 47}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 652, i32 16}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 654, i32 17}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 657, i32 14}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1371, i32 29}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1375, i32 5}
!66 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @msm_pinctrl_setup_pm_reset._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @msm_pinctrl_setup_pm_reset._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @poweroff_pctrl, !70, !"poweroff_pctrl", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1358, i32 28}
!71 = !{ptr @msm_pinctrl_ops, !72, !"msm_pinctrl_ops", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 136, i32 33}
!73 = !{ptr @msm_pinmux_ops, !74, !"msm_pinmux_ops", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 269, i32 32}
!75 = !{ptr @msm_pinconf_ops, !76, !"msm_pinconf_ops", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 502, i32 33}
!77 = !{ptr @.str.25, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 480, i32 4}
!79 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @msm_config_group_set._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @msm_config_group_set._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 487, i32 4}
!84 = !{ptr @msm_config_group_set._entry.27, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @msm_config_group_set._entry_ptr.29, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1270, i32 25}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1286, i32 45}
!90 = !{ptr @msm_gpio_init.lock_key, !91, !"lock_key", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1319, i32 8}
!92 = !{ptr @msm_gpio_init.request_key, !91, !"request_key", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1321, i32 3}
!95 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @msm_gpio_init._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @msm_gpio_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.34, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1335, i32 50}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1339, i32 4}
!102 = !{ptr @msm_gpio_init._entry.35, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @msm_gpio_init._entry_ptr.37, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1246, i32 47}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 688, i32 5}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @msm_gpio_init_valid_mask._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @msm_gpio_init_valid_mask._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.42, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 711, i32 3}
!113 = !{ptr @msm_gpio_init_valid_mask._entry.41, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @msm_gpio_init_valid_mask._entry_ptr.43, !112, !"_entry_ptr", i1 false, i1 false}
!115 = distinct !{null, !116, !"__print_once", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 924, i32 2}
!117 = !{ptr @.str.44, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @msm_gpio_update_dual_edge_parent._entry, !116, !"_entry", i1 false, i1 false}
!121 = !{ptr @msm_gpio_update_dual_edge_parent._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.47, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 775, i32 2}
!124 = !{ptr @.str.48, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @msm_gpio_update_dual_edge_pos._entry, !123, !"_entry", i1 false, i1 false}
!126 = !{ptr @msm_gpio_update_dual_edge_pos._entry_ptr, !123, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1015, i32 4}
!129 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @msm_gpio_irq_set_type._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @msm_gpio_irq_set_type._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.51, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/qcom/pinctrl-msm.c", i32 1134, i32 3}
!134 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @msm_gpio_irq_reqres._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @msm_gpio_irq_reqres._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"branch_weights", i32 1, i32 2000}
!147 = !{i64 2148794359, i64 2148794364, i64 2148794377, i64 2148794421, i64 2148794455, i64 2148794476}
!148 = !{i64 3014034}
!149 = !{i64 2153997687}
!150 = !{i64 2153997941}
!151 = !{i64 3013616}
!152 = !{i64 2153999045}
!153 = !{i64 2153999296}
!154 = !{i8 0, i8 2}
!155 = !{i64 2154040926}
!156 = !{!"auto-init"}
!157 = !{i32 0, i32 33}
!158 = !{i64 2154002205}
!159 = !{i64 2154000459}
!160 = !{i64 2154000728}
!161 = !{i64 2154003407}
!162 = !{i64 2154003685}
!163 = !{i64 2154031453, i64 2154031953, i64 2154031490, i64 2154031546, i64 2154031580, i64 2154031604, i64 2154031645, i64 2154031666, i64 2154031694, i64 2154031728}
!164 = !{i64 2154001927}
