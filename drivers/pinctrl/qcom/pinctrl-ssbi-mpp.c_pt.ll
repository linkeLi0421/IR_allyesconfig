; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pm8xxx_mpp = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip, %struct.pinctrl_desc, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pm8xxx_pin_data = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_ssbi_mpp__228_937_pm8xxx_mpp_driver_init6 = internal global ptr @pm8xxx_mpp_driver_init, section ".initcall6.init", align 4
@pm8xxx_mpp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pm8xxx_mpp_probe, ptr @pm8xxx_mpp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pm8xxx_mpp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pm8xxx_mpp_driver_exit = internal global ptr @pm8xxx_mpp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [73 x i8] c"pinctrl_ssbi_mpp.author=Bjorn Andersson <bjorn.andersson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [56 x i8] c"pinctrl_ssbi_mpp.description=Qualcomm PM8xxx MPP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [60 x i8] c"pinctrl_ssbi_mpp.file=drivers/pinctrl/qcom/pinctrl-ssbi-mpp\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [32 x i8] c"pinctrl_ssbi_mpp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom-ssbi-mpp\00", [18 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_of_match = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8018-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8038-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8058-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8821-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8917-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 10 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8921-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 12 to ptr) }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 811, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"parent regmap unavailable\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pm8xxx_mpp_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_probe._entry_ptr = internal global ptr @pm8xxx_mpp_probe._entry, section ".printk_index", align 4
@pm8xxx_pinctrl_desc = internal constant { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.19, ptr null, i32 0, ptr @pm8xxx_pinctrl_ops, ptr @pm8xxx_pinmux_ops, ptr @pm8xxx_pinconf_ops, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@pm8xxx_groups = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40], [48 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_bindings = internal constant { [4 x %struct.pinconf_generic_params], [48 x i8] } { [4 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.41, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.42, i32 130, i32 0 }, %struct.pinconf_generic_params { ptr @.str.43, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.44, i32 131, i32 0 }], [48 x i8] zeroinitializer }, align 32
@pm8xxx_conf_items = internal constant { [4 x %struct.pin_config_item], [32 x i8] } { [4 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.45, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.46, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.47, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.48, ptr null, i8 0 }], [32 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 853, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"couldn't register pm8xxx mpp driver\0A\00", [59 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_probe._entry_ptr.8 = internal global ptr @pm8xxx_mpp_probe._entry.6, section ".printk_index", align 4
@pm8xxx_mpp_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm8xxx_mpp_direction_input, ptr @pm8xxx_mpp_direction_output, ptr @pm8xxx_mpp_get, ptr null, ptr @pm8xxx_mpp_set, ptr null, ptr null, ptr null, ptr @pm8xxx_mpp_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pm8xxx_mpp_of_xlate }, [68 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ssbi-mpp\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,pm8821-mpp\00", [16 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pm8xxx_mpp_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pm8xxx_mpp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 895, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed register gpiochip\0A\00", [38 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_probe._entry_ptr.13 = internal global ptr @pm8xxx_mpp_probe._entry.11, section ".printk_index", align 4
@pm8xxx_mpp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_probe._entry_ptr.16 = internal global ptr @pm8xxx_mpp_probe._entry.14, section ".printk_index", align 4
@pm8xxx_mpp_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 -29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pinctrl_ssbi_mpp\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Qualcomm pm8xxx mpp driver probed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pm8xxx_mpp\00", [21 x i8] zeroinitializer }, align 32
@pm8xxx_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pm8xxx_get_groups_count, ptr @pm8xxx_get_group_name, ptr @pm8xxx_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@pm8xxx_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pm8xxx_get_functions_count, ptr @pm8xxx_get_function_name, ptr @pm8xxx_get_function_groups, ptr @pm8xxx_pinmux_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pm8xxx_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pm8xxx_pin_config_get, ptr @pm8xxx_pin_config_set, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_functions = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22], [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"digital\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 236, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to write register\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pm8xxx_mpp_update\00", [46 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_update._entry_ptr = internal global ptr @pm8xxx_mpp_update._entry, section ".printk_index", align 4
@pm8xxx_pin_config_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unsupported config parameter: %x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pm8xxx_pin_config_set\00", [42 x i8] zeroinitializer }, align 32
@pm8xxx_pin_config_set._entry_ptr = internal global ptr @pm8xxx_pin_config_set._entry, section ".printk_index", align 4
@pm8xxx_pin_populate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read register\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pm8xxx_pin_populate\00", [44 x i8] zeroinitializer }, align 32
@pm8xxx_pin_populate._entry_ptr = internal global ptr @pm8xxx_pin_populate._entry, section ".printk_index", align 4
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp1\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp2\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp3\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp4\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp5\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp6\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp7\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp8\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp9\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mpp10\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mpp11\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mpp12\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,amux-route\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,analog-level\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom,dtest\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,paired\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"analog mux\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"analog level\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dtest\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"paired\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_dbg_show_one.aout_lvls = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], [32 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1v25\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1v25_2\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0v625\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0v3125\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpp\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abus1\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abus2\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"abus3\00", [26 x i8] zeroinitializer }, align 32
@pm8xxx_mpp_dbg_show_one.amuxs = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.55, ptr @.str.56, ptr @.str.57], [32 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amux5\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amux6\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amux7\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amux8\00", [26 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"amux9\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" mpp%-2d:\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" digital \00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dtest%d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bi-dir high-z\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bi-dir %dOhm\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in gpio\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"out \00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inverted\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"follow\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" analog \00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"out %s \00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"input mux %s\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" sink %dmA \00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dtest%d\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.82 = internal global [4 x i64] [i64 2, i64 32, i64 600, i64 10000]
@__sancov_gen_cov_switch_values.83 = internal global [12 x i64] [i64 10, i64 8, i64 2, i64 5, i64 9, i64 12, i64 17, i64 21, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.84 = internal global [12 x i64] [i64 10, i64 8, i64 2, i64 5, i64 9, i64 12, i64 17, i64 21, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.88 = private unnamed_addr constant [18 x i8] c"pm8xxx_mpp_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 928, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 930, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"pm8xxx_mpp_of_match\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 780, i32 34 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 811, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"pm8xxx_pinctrl_desc\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 434, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"pm8xxx_groups\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 152, i32 27 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"pm8xxx_mpp_bindings\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 133, i32 44 }
@___asan_gen_.124 = private unnamed_addr constant [18 x i8] c"pm8xxx_conf_items\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 141, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 853, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"pm8xxx_mpp_template\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 634, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 873, i32 20 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 885, i32 49 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 893, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 895, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 903, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 909, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 435, i32 10 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"pm8xxx_pinctrl_ops\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 268, i32 33 }
@___asan_gen_.172 = private unnamed_addr constant [18 x i8] c"pm8xxx_pinmux_ops\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 312, i32 32 }
@___asan_gen_.175 = private unnamed_addr constant [19 x i8] c"pm8xxx_pinconf_ops\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 428, i32 33 }
@___asan_gen_.178 = private unnamed_addr constant [21 x i8] c"pm8xxx_mpp_functions\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 161, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 162, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 162, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 162, i32 23 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 236, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 416, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 655, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 10 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 26 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 34 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 42 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 50 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 153, i32 58 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 154, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 154, i32 10 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 154, i32 19 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 154, i32 28 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 134, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 135, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 136, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 137, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 142, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 143, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 144, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 145, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 626, i32 15 }
@___asan_gen_.280 = private unnamed_addr constant [10 x i8] c"aout_lvls\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 548, i32 28 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 549, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 549, i32 11 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 549, i32 21 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 549, i32 30 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 549, i32 40 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 549, i32 47 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 549, i32 56 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 550, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant [6 x i8] c"amuxs\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 553, i32 28 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 554, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 554, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 554, i32 21 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 554, i32 30 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 554, i32 39 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 558, i32 16 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 562, i32 15 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 564, i32 18 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 567, i32 17 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 569, i32 19 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 574, i32 17 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 576, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 580, i32 7 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 580, i32 16 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 583, i32 7 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 583, i32 20 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 588, i32 15 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 590, i32 18 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 599, i32 18 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 603, i32 17 }
@___asan_gen_.370 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.371 = private constant [43 x i8] c"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.371, i32 605, i32 18 }
@llvm.compiler.used = appending global [109 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_pm8xxx_mpp_driver_exit, ptr @__initcall__kmod_pinctrl_ssbi_mpp__228_937_pm8xxx_mpp_driver_init6, ptr @pm8xxx_mpp_driver_exit, ptr @pm8xxx_mpp_probe._entry, ptr @pm8xxx_mpp_probe._entry.11, ptr @pm8xxx_mpp_probe._entry.14, ptr @pm8xxx_mpp_probe._entry.6, ptr @pm8xxx_mpp_probe._entry_ptr, ptr @pm8xxx_mpp_probe._entry_ptr.13, ptr @pm8xxx_mpp_probe._entry_ptr.16, ptr @pm8xxx_mpp_probe._entry_ptr.8, ptr @pm8xxx_mpp_update._entry, ptr @pm8xxx_mpp_update._entry_ptr, ptr @pm8xxx_pin_config_set._entry, ptr @pm8xxx_pin_config_set._entry_ptr, ptr @pm8xxx_pin_populate._entry, ptr @pm8xxx_pin_populate._entry_ptr, ptr @pm8xxx_mpp_driver, ptr @.str, ptr @pm8xxx_mpp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pm8xxx_pinctrl_desc, ptr @pm8xxx_groups, ptr @pm8xxx_mpp_bindings, ptr @pm8xxx_conf_items, ptr @.str.7, ptr @pm8xxx_mpp_template, ptr @.str.9, ptr @.str.10, ptr @pm8xxx_mpp_probe.lock_key, ptr @pm8xxx_mpp_probe.request_key, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @pm8xxx_pinctrl_ops, ptr @pm8xxx_pinmux_ops, ptr @pm8xxx_pinconf_ops, ptr @pm8xxx_mpp_functions, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @pm8xxx_mpp_dbg_show_one.aout_lvls, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @pm8xxx_mpp_dbg_show_one.amuxs, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_of_match to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_groups to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_bindings to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_conf_items to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_functions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pin_config_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_pin_populate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_dbg_show_one.aout_lvls to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm8xxx_mpp_dbg_show_one.amuxs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pm8xxx_mpp_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_mpp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @pm8xxx_mpp_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 544, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @device_get_match_data(ptr noundef %dev) #11
  %1 = ptrtoint ptr %call4 to i32
  %npins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 6
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %npins, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %call6 = tail call ptr @dev_get_regmap(ptr noundef %4, ptr noundef null) #11
  %regmap = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %regmap, align 4
  %tobool8.not = icmp eq ptr %call6, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %desc = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 5
  %6 = call ptr @memcpy(ptr %desc, ptr @pm8xxx_pinctrl_desc, i32 44)
  %7 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %npins, align 4
  %npins14 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %npins14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %npins14, align 4
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 12) #11
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %if.end11.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !203

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end11
  %12 = extractvalue { i32, i1 } %10, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %12, i32 noundef 3520) #11
  %tobool19.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool19.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end21

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %devm_kcalloc.exit
  %13 = ptrtoint ptr %npins14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %npins14, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 20) #11
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %if.end21.cleanup_crit_edge, label %devm_kcalloc.exit237, !prof !203

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

devm_kcalloc.exit237:                             ; preds = %if.end21
  %17 = extractvalue { i32, i1 } %15, 0
  %call5.i.i234 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %17, i32 noundef 3520) #11
  %tobool26.not = icmp eq ptr %call5.i.i234, null
  br i1 %tobool26.not, label %devm_kcalloc.exit237.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit237.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit237
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit237
  %18 = ptrtoint ptr %npins14 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %npins14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp260.not = icmp eq i32 %19, 0
  br i1 %cmp260.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %if.end35.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0261 = phi i32 [ %inc, %if.end35.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.0261, 80
  %arrayidx = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #11
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %val.i, align 4, !annotation !204
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i238 = call i32 @regmap_read(ptr noundef %23, i32 noundef %add, ptr noundef nonnull %val.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i238)
  %tobool.not.i = icmp eq i32 %call.i238, 0
  br i1 %tobool.not.i, label %if.end.i, label %pm8xxx_pin_populate.exit

if.end.i:                                         ; preds = %for.body
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %25, 5
  %and.i = and i32 %shr.i, 7
  %shr1.i = lshr i32 %25, 2
  %and2.i = and i32 %shr1.i, 7
  %and3.i = and i32 %25, 3
  %26 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb5.i
    i32 2, label %sw.bb17.i
    i32 3, label %sw.bb29.i
    i32 4, label %sw.bb33.i
    i32 5, label %sw.bb49.i
    i32 6, label %sw.bb64.i
    i32 7, label %sw.bb73.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %27 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %mode.i, align 4
  %input.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 2
  %28 = ptrtoint ptr %input.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %input.i, align 1
  %conv.i = trunc i32 %and2.i to i8
  %power_source.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 7
  %29 = ptrtoint ptr %power_source.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.i, ptr %power_source.i, align 2
  %conv4.i = trunc i32 %and3.i to i8
  %dtest.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 8
  %30 = ptrtoint ptr %dtest.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv4.i, ptr %dtest.i, align 1
  br label %if.end35

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mode6.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %31 = ptrtoint ptr %mode6.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %mode6.i, align 4
  %output.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 3
  %32 = ptrtoint ptr %output.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %output.i, align 2
  %conv7.i = trunc i32 %and2.i to i8
  %power_source8.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 7
  %33 = ptrtoint ptr %power_source8.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv7.i, ptr %power_source8.i, align 2
  %output_value.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 6
  %34 = trunc i32 %25 to i8
  %35 = and i8 %34, 1
  %36 = ptrtoint ptr %output_value.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %output_value.i, align 1
  %paired.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 5
  %37 = lshr i8 %34, 1
  %38 = and i8 %37, 1
  %39 = ptrtoint ptr %paired.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %paired.i, align 4
  br label %if.end35

sw.bb17.i:                                        ; preds = %if.end.i
  %mode18.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %40 = ptrtoint ptr %mode18.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %mode18.i, align 4
  %input19.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 2
  %41 = ptrtoint ptr %input19.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %input19.i, align 1
  %output20.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 3
  %42 = ptrtoint ptr %output20.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %output20.i, align 2
  %conv21.i = trunc i32 %and2.i to i8
  %power_source22.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 7
  %43 = ptrtoint ptr %power_source22.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv21.i, ptr %power_source22.i, align 2
  %44 = zext i32 %and3.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %and3.i, label %sw.bb17.unreachabledefault.i [
    i32 0, label %sw.bb23.i
    i32 1, label %sw.bb24.i
    i32 2, label %sw.bb25.i
    i32 3, label %sw.bb27.i
  ]

sw.bb23.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %pullup.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 12
  %45 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 600, ptr %pullup.i, align 4
  br label %if.end35

sw.bb24.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %high_z.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 4
  %46 = ptrtoint ptr %high_z.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %high_z.i, align 1
  br label %if.end35

sw.bb25.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %pullup26.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 12
  %47 = ptrtoint ptr %pullup26.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 10000, ptr %pullup26.i, align 4
  br label %if.end35

sw.bb27.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #13
  %pullup28.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 12
  %48 = ptrtoint ptr %pullup28.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 30000, ptr %pullup28.i, align 4
  br label %if.end35

sw.bb29.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mode30.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %49 = ptrtoint ptr %mode30.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %mode30.i, align 4
  %input31.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 2
  %50 = ptrtoint ptr %input31.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %input31.i, align 1
  %conv32.i = trunc i32 %and2.i to i8
  %amux.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 9
  %51 = ptrtoint ptr %amux.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv32.i, ptr %amux.i, align 4
  br label %if.end35

sw.bb33.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mode34.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %52 = ptrtoint ptr %mode34.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %mode34.i, align 4
  %output35.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 3
  %53 = ptrtoint ptr %output35.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %output35.i, align 2
  %conv36.i = trunc i32 %and2.i to i8
  %aout_level.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 10
  %54 = ptrtoint ptr %aout_level.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv36.i, ptr %aout_level.i, align 1
  %output_value41.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 6
  %55 = trunc i32 %25 to i8
  %56 = and i8 %55, 1
  %57 = ptrtoint ptr %output_value41.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %output_value41.i, align 1
  %paired47.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 5
  %58 = lshr i8 %55, 1
  %59 = and i8 %58, 1
  %60 = ptrtoint ptr %paired47.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %paired47.i, align 4
  br label %if.end35

sw.bb49.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mode50.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %61 = ptrtoint ptr %mode50.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %mode50.i, align 4
  %62 = trunc i32 %and2.i to i8
  %63 = mul nuw nsw i8 %62, 5
  %conv51.i = add nuw nsw i8 %63, 5
  %drive_strength.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 11
  %64 = ptrtoint ptr %drive_strength.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %conv51.i, ptr %drive_strength.i, align 2
  %output_value56.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 6
  %65 = trunc i32 %25 to i8
  %66 = and i8 %65, 1
  %67 = ptrtoint ptr %output_value56.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %output_value56.i, align 1
  %paired62.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 5
  %68 = lshr i8 %65, 1
  %69 = and i8 %68, 1
  %70 = ptrtoint ptr %paired62.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %paired62.i, align 4
  br label %if.end35

sw.bb64.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mode65.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %71 = ptrtoint ptr %mode65.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 2, ptr %mode65.i, align 4
  %72 = trunc i32 %and3.i to i8
  %conv67.i = add nuw nsw i8 %72, 1
  %dtest68.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 8
  %73 = ptrtoint ptr %dtest68.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv67.i, ptr %dtest68.i, align 1
  %74 = trunc i32 %and2.i to i8
  %75 = mul nuw nsw i8 %74, 5
  %conv71.i = add nuw nsw i8 %75, 5
  %drive_strength72.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 11
  %76 = ptrtoint ptr %drive_strength72.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv71.i, ptr %drive_strength72.i, align 2
  br label %if.end35

sw.bb73.i:                                        ; preds = %if.end.i
  %mode74.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 1
  %77 = ptrtoint ptr %mode74.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %mode74.i, align 4
  %conv75.i = trunc i32 %and2.i to i8
  %power_source76.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 7
  %78 = ptrtoint ptr %power_source76.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %conv75.i, ptr %power_source76.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %cmp.not.i = icmp eq i32 %and3.i, 0
  br i1 %cmp.not.i, label %sw.bb73.i.if.end35_crit_edge, label %if.then78.i

sw.bb73.i.if.end35_crit_edge:                     ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then78.i:                                      ; preds = %sw.bb73.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv79.i = trunc i32 %and3.i to i8
  %dtest80.i = getelementptr %struct.pm8xxx_pin_data, ptr %call5.i.i234, i32 %i.0261, i32 8
  %79 = ptrtoint ptr %dtest80.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv79.i, ptr %dtest80.i, align 1
  br label %if.end35

if.end.unreachabledefault.i:                      ; preds = %if.end.i
  unreachable

sw.bb17.unreachabledefault.i:                     ; preds = %sw.bb17.i
  unreachable

pm8xxx_pin_populate.exit:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.27) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  br label %cleanup

if.end35:                                         ; preds = %if.then78.i, %sw.bb73.i.if.end35_crit_edge, %sw.bb64.i, %sw.bb49.i, %sw.bb33.i, %sw.bb29.i, %sw.bb27.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb5.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #11
  %arrayidx36 = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0261
  %82 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %i.0261, ptr %arrayidx36, align 4
  %arrayidx37 = getelementptr [12 x ptr], ptr @pm8xxx_groups, i32 0, i32 %i.0261
  %83 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx37, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0261, i32 1
  %85 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %name, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %call5.i.i, i32 %i.0261, i32 2
  %86 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %arrayidx, ptr %drv_data, align 4
  %inc = add nuw i32 %i.0261, 1
  %87 = ptrtoint ptr %npins14 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %npins14, align 4
  %cmp = icmp ult i32 %inc, %88
  br i1 %cmp, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end35.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pins42 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 5, i32 1
  %89 = ptrtoint ptr %pins42 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call5.i.i, ptr %pins42, align 4
  %num_custom_params = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 5, i32 7
  %90 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %num_custom_params, align 4
  %custom_params = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 5, i32 8
  %91 = ptrtoint ptr %custom_params to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @pm8xxx_mpp_bindings, ptr %custom_params, align 4
  %custom_conf_items = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 5, i32 9
  %92 = ptrtoint ptr %custom_conf_items to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @pm8xxx_conf_items, ptr %custom_conf_items, align 4
  %call48 = call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef %desc, ptr noundef nonnull %call.i) #11
  %pctrl49 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 2
  %93 = ptrtoint ptr %pctrl49 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call48, ptr %pctrl49, align 4
  %cmp.i = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end55, label %if.end59

do.end55:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #14
  %94 = ptrtoint ptr %pctrl49 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pctrl49, align 4
  %96 = ptrtoint ptr %95 to i32
  br label %cleanup

if.end59:                                         ; preds = %for.end
  %chip = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3
  %97 = call ptr @memcpy(ptr %chip, ptr @pm8xxx_mpp_template, i32 348)
  %base = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 19
  %98 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %base, align 4
  %parent63 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 2
  %99 = ptrtoint ptr %parent63 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %dev, ptr %parent63, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 40
  %100 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %101 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 3
  %103 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i239 = icmp eq ptr %104, null
  br i1 %tobool.not.i239, label %if.end.i240, label %if.end59.dev_name.exit_crit_edge

if.end59.dev_name.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i240:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #13
  %105 = ptrtoint ptr %102 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %102, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i240, %if.end59.dev_name.exit_crit_edge
  %retval.0.i241 = phi ptr [ %106, %if.end.i240 ], [ %104, %if.end59.dev_name.exit_crit_edge ]
  %107 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %retval.0.i241, ptr %chip, align 4
  %108 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %npins, align 4
  %conv = trunc i32 %109 to i16
  %ngpio = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 20
  %110 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv, ptr %ngpio, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %102, i32 0, i32 27
  %111 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node, align 8
  %call71 = call ptr @of_irq_find_parent(ptr noundef %112) #11
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %dev_name.exit.cleanup_crit_edge, label %if.end74

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %dev_name.exit
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call71, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #11
  %113 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %114 = call ptr @memset(ptr %113, i32 0, i32 68)
  %115 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #11
  %tobool.not.i242 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i242, label %irq_find_host.exit, label %irq_find_host.exit.thread

irq_find_host.exit.thread:                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void @of_node_put(ptr noundef nonnull %call71) #11
  br label %if.end78

irq_find_host.exit:                               ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #11
  %116 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %117 = call ptr @memset(ptr %116, i32 0, i32 68)
  %118 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #11
  call void @of_node_put(ptr noundef nonnull %call71) #11
  %tobool76.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool76.not, label %irq_find_host.exit.cleanup_crit_edge, label %irq_find_host.exit.if.end78_crit_edge

irq_find_host.exit.if.end78_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end78

irq_find_host.exit.cleanup_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end78:                                         ; preds = %irq_find_host.exit.if.end78_crit_edge, %irq_find_host.exit.thread
  %d.0.i256 = phi ptr [ %call.i.i.i, %irq_find_host.exit.thread ], [ %call.i.i8.i, %irq_find_host.exit.if.end78_crit_edge ]
  %irq = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 4
  %name79 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 4, i32 1
  %119 = ptrtoint ptr %name79 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr @.str.9, ptr %name79, align 4
  %irq_mask_ack = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 4, i32 8
  %120 = ptrtoint ptr %irq_mask_ack to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @irq_chip_mask_ack_parent, ptr %irq_mask_ack, align 4
  %irq_unmask = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 4, i32 9
  %121 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @irq_chip_unmask_parent, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 4, i32 13
  %122 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @irq_chip_set_type_parent, ptr %irq_set_type, align 4
  %flags = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 4, i32 33
  %123 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 20, ptr %flags, align 4
  %irq85 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37
  %124 = ptrtoint ptr %irq85 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %irq, ptr %irq85, align 4
  %default_type = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 10
  %125 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 9
  %126 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @handle_level_irq, ptr %handler, align 4
  %127 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i, align 4
  %of_node89 = getelementptr inbounds %struct.device, ptr %128, i32 0, i32 27
  %129 = ptrtoint ptr %of_node89 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %of_node89, align 8
  %tobool.not.i244 = icmp eq ptr %130, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %130, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i244, ptr null, ptr %fwnode.i
  %fwnode = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 3
  %131 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %spec.select.i, ptr %fwnode, align 4
  %parent_domain91 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 4
  %132 = ptrtoint ptr %parent_domain91 to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %d.0.i256, ptr %parent_domain91, align 4
  %of_node93 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %133 = ptrtoint ptr %of_node93 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %of_node93, align 8
  %call94 = call i32 @of_device_is_compatible(ptr noundef %134, ptr noundef nonnull @.str.10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  %spec.select = select i1 %tobool95.not, ptr @pm8xxx_mpp_child_to_parent_hwirq, ptr @pm8821_mpp_child_to_parent_hwirq
  %135 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 5
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %spec.select, ptr %135, align 4
  %populate_parent_alloc_arg = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 6
  %137 = ptrtoint ptr %populate_parent_alloc_arg to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @gpiochip_populate_parent_fwspec_twocell, ptr %populate_parent_alloc_arg, align 4
  %child_offset_to_irq = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 7
  %138 = ptrtoint ptr %child_offset_to_irq to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @pm8xxx_mpp_child_offset_to_irq, ptr %child_offset_to_irq, align 4
  %translate = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 3, i32 37, i32 8, i32 9
  %139 = ptrtoint ptr %translate to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @pm8xxx_mpp_domain_translate, ptr %translate, align 4
  %call100 = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef nonnull %call.i, ptr noundef nonnull @pm8xxx_mpp_probe.lock_key, ptr noundef nonnull @pm8xxx_mpp_probe.request_key) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.end107, label %do.end105

do.end105:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %cleanup

if.end107:                                        ; preds = %if.end78
  %140 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call.i, align 4
  %init_name.i245 = getelementptr inbounds %struct.device, ptr %141, i32 0, i32 3
  %142 = ptrtoint ptr %init_name.i245 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %init_name.i245, align 8
  %tobool.not.i246 = icmp eq ptr %143, null
  br i1 %tobool.not.i246, label %if.end.i247, label %if.end107.dev_name.exit249_crit_edge

if.end107.dev_name.exit249_crit_edge:             ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit249

if.end.i247:                                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #13
  %144 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %141, align 4
  br label %dev_name.exit249

dev_name.exit249:                                 ; preds = %if.end.i247, %if.end107.dev_name.exit249_crit_edge
  %retval.0.i248 = phi ptr [ %145, %if.end.i247 ], [ %143, %if.end107.dev_name.exit249_crit_edge ]
  %146 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %ngpio, align 4
  %conv113 = zext i16 %147 to i32
  %call114 = call i32 @gpiochip_add_pin_range(ptr noundef %chip, ptr noundef %retval.0.i248, i32 noundef 0, i32 noundef 0, i32 noundef %conv113) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %if.end121, label %do.end119

do.end119:                                        ; preds = %dev_name.exit249
  call void @__sanitizer_cov_trace_pc() #13
  %148 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.15) #14
  call void @gpiochip_remove(ptr noundef %chip) #11
  br label %cleanup

if.end121:                                        ; preds = %dev_name.exit249
  call void @__sanitizer_cov_trace_pc() #13
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %150 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pm8xxx_mpp_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pm8xxx_mpp_probe, %cleanup)) #11
          to label %if.then129 [label %cleanup], !srcloc !205

if.then129:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pm8xxx_mpp_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.18) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then129, %if.end121, %do.end119, %do.end105, %irq_find_host.exit.cleanup_crit_edge, %dev_name.exit.cleanup_crit_edge, %do.end55, %pm8xxx_pin_populate.exit, %devm_kcalloc.exit237.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %96, %do.end55 ], [ %call100, %do.end105 ], [ %call114, %do.end119 ], [ -6, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit237.cleanup_crit_edge ], [ %call.i238, %pm8xxx_pin_populate.exit ], [ -6, %dev_name.exit.cleanup_crit_edge ], [ -6, %irq_find_host.exit.cleanup_crit_edge ], [ 0, %if.then129 ], [ -12, %if.end11.cleanup_crit_edge ], [ -12, %if.end21.cleanup_crit_edge ], [ 0, %if.end121 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.pm8xxx_mpp, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %chip) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pm8821_mpp_child_to_parent_hwirq(ptr nocapture noundef readnone %chip, i32 noundef %child_hwirq, i32 noundef %child_type, ptr nocapture noundef writeonly %parent_hwirq, ptr nocapture noundef writeonly %parent_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %child_hwirq, 24
  %0 = ptrtoint ptr %parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %parent_hwirq, align 4
  %1 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %child_type, ptr %parent_type, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pm8xxx_mpp_child_to_parent_hwirq(ptr nocapture noundef readnone %chip, i32 noundef %child_hwirq, i32 noundef %child_type, ptr nocapture noundef writeonly %parent_hwirq, ptr nocapture noundef writeonly %parent_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %child_hwirq, 128
  %0 = ptrtoint ptr %parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %parent_hwirq, align 4
  %1 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %child_type, ptr %parent_type, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_populate_parent_fwspec_twocell(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_mpp_child_offset_to_irq(ptr nocapture noundef readnone %chip, i32 noundef %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_mpp_domain_translate(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %2 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp5 = icmp ugt i32 %5, %conv
  br i1 %cmp5, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  %sub = add i32 %5, -1
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %sub, ptr %hwirq, align 4
  %arrayidx10 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx10, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %npins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %npins, align 4
  ret i32 %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [12 x ptr], ptr @pm8xxx_groups, i32 0, i32 %group
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_group_pins(ptr noundef %pctldev, i32 noundef %group, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins1 = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %group
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %arrayidx, ptr %pins, align 4
  %3 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_get_functions_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pm8xxx_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @pm8xxx_mpp_functions, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_get_function_groups(ptr noundef %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pm8xxx_groups, ptr %groups, align 4
  %npins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %npins, align 4
  %3 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_pinmux_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %group) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %group, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %conv = trunc i32 %function to i8
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %mode, align 4
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %call, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm8xxx_mpp_update(ptr nocapture noundef readonly %pctrl, ptr nocapture noundef readonly %pin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 1
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mode, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %1, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb42
    i8 2, label %sw.bb58
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %dtest = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 8
  %3 = ptrtoint ptr %dtest to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dtest, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  %conv2 = zext i8 %4 to i32
  %sub = add nsw i32 %conv2, -1
  br label %if.end40

if.else:                                          ; preds = %sw.bb
  %input = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 2
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %input, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.else32, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else
  %output = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 3
  %7 = ptrtoint ptr %output to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %output, align 2, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end40_crit_edge, label %if.then7

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then7:                                         ; preds = %land.lhs.true
  %high_z = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 4
  %9 = ptrtoint ptr %high_z to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %high_z, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.else10, label %if.then7.if.end40_crit_edge

if.then7.if.end40_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else10:                                        ; preds = %if.then7
  %pullup = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 12
  %11 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pullup, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %12, label %if.else18 [
    i32 600, label %if.else10.if.end40_crit_edge
    i32 10000, label %if.then17
  ]

if.else10.if.end40_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then17:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else18:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.else32:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 6
  %14 = ptrtoint ptr %output_value to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %output_value, align 1, !range !206
  %16 = zext i8 %15 to i32
  %paired = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 5
  %17 = ptrtoint ptr %paired to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %paired, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool35.not = icmp eq i8 %18, 0
  %or = or i32 %16, 2
  %spec.select = select i1 %tobool35.not, i32 %16, i32 %or
  br label %if.end40

if.end40:                                         ; preds = %if.else32, %if.else18, %if.then17, %if.else10.if.end40_crit_edge, %if.then7.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.then
  %ctrl.0 = phi i32 [ %sub, %if.then ], [ 2, %if.then17 ], [ 3, %if.else18 ], [ 1, %if.then7.if.end40_crit_edge ], [ 0, %if.else10.if.end40_crit_edge ], [ %spec.select, %if.else32 ], [ 0, %land.lhs.true.if.end40_crit_edge ]
  %type.0 = phi i32 [ 224, %if.then ], [ 64, %if.then17 ], [ 64, %if.else18 ], [ 64, %if.then7.if.end40_crit_edge ], [ 64, %if.else10.if.end40_crit_edge ], [ 32, %if.else32 ], [ 0, %land.lhs.true.if.end40_crit_edge ]
  %power_source = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 7
  %19 = ptrtoint ptr %power_source to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %power_source, align 2
  %conv41 = zext i8 %20 to i32
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  %output43 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 3
  %21 = ptrtoint ptr %output43 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %output43, align 2, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool44.not = icmp eq i8 %22, 0
  br i1 %tobool44.not, label %if.else55, label %if.then45

if.then45:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  %aout_level = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 10
  %23 = ptrtoint ptr %aout_level to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %aout_level, align 1
  %conv46 = zext i8 %24 to i32
  %output_value47 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 6
  %25 = ptrtoint ptr %output_value47 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %output_value47, align 1, !range !206
  %27 = zext i8 %26 to i32
  %paired50 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 5
  %28 = ptrtoint ptr %paired50 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %paired50, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool51.not = icmp eq i8 %29, 0
  %or53 = or i32 %27, 2
  %spec.select1 = select i1 %tobool51.not, i32 %27, i32 %or53
  br label %sw.epilog

if.else55:                                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #13
  %amux = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 9
  %30 = ptrtoint ptr %amux to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %amux, align 4
  %conv56 = zext i8 %31 to i32
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  %drive_strength = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 11
  %32 = ptrtoint ptr %drive_strength to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %drive_strength, align 2
  %34 = udiv i8 %33, 5
  %div = zext i8 %34 to i32
  %sub60 = add nsw i32 %div, -1
  %dtest61 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 8
  %35 = ptrtoint ptr %dtest61 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dtest61, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool62.not = icmp eq i8 %36, 0
  br i1 %tobool62.not, label %if.else67, label %if.then63

if.then63:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  %conv65 = zext i8 %36 to i32
  %sub66 = add nsw i32 %conv65, -1
  br label %sw.epilog

if.else67:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #13
  %output_value68 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 6
  %37 = ptrtoint ptr %output_value68 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %output_value68, align 1, !range !206
  %39 = zext i8 %38 to i32
  %paired71 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %pin, i32 0, i32 5
  %40 = ptrtoint ptr %paired71 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %paired71, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool72.not = icmp eq i8 %41, 0
  %or74 = or i32 %39, 2
  %spec.select2 = select i1 %tobool72.not, i32 %39, i32 %or74
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else67, %if.then63, %if.else55, %if.then45, %if.end40
  %level.0 = phi i32 [ %sub60, %if.then63 ], [ %conv56, %if.else55 ], [ %conv41, %if.end40 ], [ %conv46, %if.then45 ], [ %sub60, %if.else67 ]
  %ctrl.1 = phi i32 [ %sub66, %if.then63 ], [ 0, %if.else55 ], [ %ctrl.0, %if.end40 ], [ %spec.select1, %if.then45 ], [ %spec.select2, %if.else67 ]
  %type.1 = phi i32 [ 192, %if.then63 ], [ 96, %if.else55 ], [ %type.0, %if.end40 ], [ 128, %if.then45 ], [ 160, %if.else67 ]
  %shl77 = shl nsw i32 %level.0, 2
  %or78 = or i32 %ctrl.1, %shl77
  %or79 = or i32 %or78, %type.1
  %regmap = getelementptr inbounds %struct.pm8xxx_mpp, ptr %pctrl, i32 0, i32 1
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %44 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pin, align 4
  %conv81 = and i32 %or79, 255
  %call = tail call i32 @regmap_write(ptr noundef %43, i32 noundef %45, i32 noundef %conv81) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool82.not = icmp eq i32 %call, 0
  br i1 %tobool82.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %46 = ptrtoint ptr %pctrl to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pctrl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.23) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_get(ptr noundef %pctldev, i32 noundef %offset, ptr nocapture noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config, align 4
  %and.i = and i32 %5, 255
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 5, label %sw.bb
    i8 2, label %sw.bb2
    i8 12, label %sw.bb3
    i8 17, label %sw.bb6
    i8 21, label %sw.bb9
    i8 9, label %sw.bb11
    i8 -127, label %sw.bb13
    i8 -128, label %sw.bb15
    i8 -126, label %sw.bb17
    i8 -125, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %pullup = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pullup, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %high_z = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %9 = ptrtoint ptr %high_z to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %high_z, align 1, !range !206
  %11 = zext i8 %10 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %input = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %input, align 1, !range !206
  %14 = zext i8 %13 to i32
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %output_value to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %output_value, align 1, !range !206
  %17 = zext i8 %16 to i32
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %power_source = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %power_source to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %power_source, align 2
  %conv10 = zext i8 %19 to i32
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %drive_strength = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 11
  %20 = ptrtoint ptr %drive_strength to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %drive_strength, align 2
  %conv12 = zext i8 %21 to i32
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dtest = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %dtest to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dtest, align 1
  %conv14 = zext i8 %23 to i32
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %amux = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 9
  %24 = ptrtoint ptr %amux to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %amux, align 4
  %conv16 = zext i8 %25 to i32
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %aout_level = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 10
  %26 = ptrtoint ptr %aout_level to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %aout_level, align 1
  %conv18 = zext i8 %27 to i32
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %paired = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 5
  %28 = ptrtoint ptr %paired to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %paired, align 4, !range !206
  %30 = zext i8 %29 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb6, %sw.bb3, %sw.bb2, %sw.bb
  %arg.0 = phi i32 [ %30, %sw.bb19 ], [ %conv18, %sw.bb17 ], [ %conv16, %sw.bb15 ], [ %conv14, %sw.bb13 ], [ %conv12, %sw.bb11 ], [ %conv10, %sw.bb9 ], [ %17, %sw.bb6 ], [ %14, %sw.bb3 ], [ %11, %sw.bb2 ], [ %8, %sw.bb ]
  %shl.i = shl i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %31 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_pin_config_set(ptr noundef %pctldev, i32 noundef %offset, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #11
  %pins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp53.not = icmp eq i32 %num_configs, 0
  br i1 %cmp53.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %paired = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 5
  %aout_level = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 10
  %amux = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 9
  %dtest = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 8
  %drive_strength = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 11
  %power_source = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 7
  %output = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 6
  %input = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %high_z = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 4
  %pullup = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.054
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx1, align 4
  %shr.i = lshr i32 %5, 8
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %trunc, label %do.end [
    i8 5, label %sw.bb
    i8 2, label %sw.bb5
    i8 12, label %sw.bb6
    i8 17, label %sw.bb7
    i8 21, label %sw.bb9
    i8 9, label %sw.bb10
    i8 -127, label %sw.bb12
    i8 -128, label %sw.bb14
    i8 -126, label %sw.bb16
    i8 -125, label %sw.bb18
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %pullup to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shr.i, ptr %pullup, align 4
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %high_z to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %high_z, align 1
  br label %for.inc

sw.bb6:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %input, align 1
  br label %for.inc

sw.bb7:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %output, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool = icmp ugt i32 %5, 255
  %frombool = zext i1 %tobool to i8
  %11 = ptrtoint ptr %output_value to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool, ptr %output_value, align 1
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv = trunc i32 %shr.i to i8
  %12 = ptrtoint ptr %power_source to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %power_source, align 2
  br label %for.inc

sw.bb10:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv11 = trunc i32 %shr.i to i8
  %13 = ptrtoint ptr %drive_strength to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11, ptr %drive_strength, align 2
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv13 = trunc i32 %shr.i to i8
  %14 = ptrtoint ptr %dtest to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv13, ptr %dtest, align 1
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv15 = trunc i32 %shr.i to i8
  %15 = ptrtoint ptr %amux to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv15, ptr %amux, align 4
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %conv17 = trunc i32 %shr.i to i8
  %16 = ptrtoint ptr %aout_level to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv17, ptr %aout_level, align 1
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %tobool19 = icmp ugt i32 %5, 255
  %frombool22 = zext i1 %tobool19 to i8
  %17 = ptrtoint ptr %paired to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool22, ptr %paired, align 4
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %and.i = and i32 %5, 255
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.25, i32 noundef %and.i) #14
  br label %cleanup

for.inc:                                          ; preds = %sw.bb18, %sw.bb16, %sw.bb14, %sw.bb12, %sw.bb10, %sw.bb9, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb
  %inc = add nuw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %call, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %input = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %input, align 1
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %input2 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %input2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %input2, align 1
  %output = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %output to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %output, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %call, ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  %mode = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 0, label %entry.sw.epilog.sink.split_crit_edge
    i8 1, label %entry.sw.epilog.sink.split.sink.split_crit_edge
    i8 2, label %entry.sw.epilog.sink.split.sink.split_crit_edge14
  ]

entry.sw.epilog.sink.split.sink.split_crit_edge14: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.sink.split

entry.sw.epilog.sink.split.sink.split_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog.sink.split.sink.split:                  ; preds = %entry.sw.epilog.sink.split.sink.split_crit_edge, %entry.sw.epilog.sink.split.sink.split_crit_edge14
  %input = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %input to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %input, align 1
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %entry.sw.epilog.sink.split_crit_edge
  %output5 = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %output5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %output5, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %call, ptr noundef %3)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pm8xxx_mpp_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %state = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %state) #11
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %state, align 1, !annotation !204
  %input = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %input to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %input, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 6
  %7 = ptrtoint ptr %output_value to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %output_value, align 1, !range !206
  %9 = zext i8 %8 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 15
  %10 = ptrtoint ptr %to_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %to_irq, align 4
  %call3 = tail call i32 %11(ptr noundef %chip, i32 noundef %offset) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @irq_get_irqchip_state(i32 noundef %call3, i32 noundef 3, ptr noundef nonnull %state) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %state, align 1, !range !206
  %14 = zext i8 %13 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ %call3, %if.end.cleanup_crit_edge ], [ %call6, %if.end5.cleanup_crit_edge ], [ %14, %if.then8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %state) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_mpp_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %1, i32 %offset, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drv_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %output_value = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %3, i32 0, i32 6
  %frombool = zext i1 %tobool to i8
  %4 = ptrtoint ptr %output_value to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool, ptr %output_value, align 1
  tail call fastcc void @pm8xxx_mpp_update(ptr noundef %call, ptr noundef %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pm8xxx_mpp_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp10.not = icmp eq i16 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %pm8xxx_mpp_dbg_show_one.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %add.i, %pm8xxx_mpp_dbg_show_one.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #11
  %pins.i = getelementptr inbounds %struct.pm8xxx_mpp, ptr %call.i, i32 0, i32 5, i32 1
  %2 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins.i, align 4
  %drv_data.i = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %i.011, i32 2
  %4 = ptrtoint ptr %drv_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drv_data.i, align 4
  %add.i = add nuw nsw i32 %i.011, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %add.i) #11
  %mode.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode.i, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %7, label %for.body.pm8xxx_mpp_dbg_show_one.exit_crit_edge [
    i8 0, label %sw.bb.i
    i8 1, label %sw.bb40.i
    i8 2, label %sw.bb62.i
  ]

for.body.pm8xxx_mpp_dbg_show_one.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm8xxx_mpp_dbg_show_one.exit

sw.bb.i:                                          ; preds = %for.body
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.64) #11
  %dtest.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 8
  %9 = ptrtoint ptr %dtest.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dtest.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, i32 noundef %conv2.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else.i:                                        ; preds = %sw.bb.i
  %input.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %input.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %input.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not.i = icmp eq i8 %12, 0
  %output23.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %output23.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %output23.i, align 2, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool24.not.i = icmp eq i8 %14, 0
  br i1 %tobool3.not.i, label %if.else22.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.else.i
  br i1 %tobool24.not.i, label %if.else20.i, label %if.then7.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  %high_z.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 4
  %15 = ptrtoint ptr %high_z.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %high_z.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool8.not.i = icmp eq i8 %16, 0
  br i1 %tobool8.not.i, label %if.else10.i, label %if.then9.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.66) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #13
  %pullup.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 12
  %17 = ptrtoint ptr %pullup.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pullup.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.67, i32 noundef %18) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.69) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else22.i:                                      ; preds = %if.else.i
  br i1 %tobool24.not.i, label %if.else22.i.pm8xxx_mpp_dbg_show_one.exit_crit_edge, label %if.then25.i

if.else22.i.pm8xxx_mpp_dbg_show_one.exit_crit_edge: ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %pm8xxx_mpp_dbg_show_one.exit

if.then25.i:                                      ; preds = %if.else22.i
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.70) #11
  %paired.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 5
  %19 = ptrtoint ptr %paired.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %paired.i, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool26.not.i = icmp eq i8 %20, 0
  %output_value.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %output_value.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %output_value.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool28.not.i = icmp eq i8 %22, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %if.else30.i

if.then27.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond.i = select i1 %tobool28.not.i, ptr @.str.72, ptr @.str.71
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else30.i:                                      ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond34.i = select i1 %tobool28.not.i, ptr @.str.74, ptr @.str.73
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond34.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

sw.bb40.i:                                        ; preds = %for.body
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.75) #11
  %output41.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 3
  %23 = ptrtoint ptr %output41.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %output41.i, align 2, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool42.not.i = icmp eq i8 %24, 0
  br i1 %tobool42.not.i, label %if.else58.i, label %if.then43.i

if.then43.i:                                      ; preds = %sw.bb40.i
  %aout_level.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 10
  %25 = ptrtoint ptr %aout_level.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %aout_level.i, align 1
  %idxprom.i = zext i8 %26 to i32
  %arrayidx44.i = getelementptr [8 x ptr], ptr @pm8xxx_mpp_dbg_show_one.aout_lvls, i32 0, i32 %idxprom.i
  %27 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx44.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.76, ptr noundef %28) #11
  %paired45.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 5
  %29 = ptrtoint ptr %paired45.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %paired45.i, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool46.not.i = icmp eq i8 %30, 0
  %output_value48.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 6
  %31 = ptrtoint ptr %output_value48.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %output_value48.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool49.not.i = icmp eq i8 %32, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.else52.i

if.then47.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond51.i = select i1 %tobool49.not.i, ptr @.str.72, ptr @.str.71
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond51.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else52.i:                                      ; preds = %if.then43.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond56.i = select i1 %tobool49.not.i, ptr @.str.74, ptr @.str.73
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond56.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else58.i:                                      ; preds = %sw.bb40.i
  call void @__sanitizer_cov_trace_pc() #13
  %amux.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 9
  %33 = ptrtoint ptr %amux.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %amux.i, align 4
  %idxprom59.i = zext i8 %34 to i32
  %arrayidx60.i = getelementptr [8 x ptr], ptr @pm8xxx_mpp_dbg_show_one.amuxs, i32 0, i32 %idxprom59.i
  %35 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx60.i, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.77, ptr noundef %36) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

sw.bb62.i:                                        ; preds = %for.body
  %drive_strength.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 11
  %37 = ptrtoint ptr %drive_strength.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %drive_strength.i, align 2
  %conv63.i = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.78, i32 noundef %conv63.i) #11
  %dtest64.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 8
  %39 = ptrtoint ptr %dtest64.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %dtest64.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool65.not.i = icmp eq i8 %40, 0
  br i1 %tobool65.not.i, label %if.else69.i, label %if.then66.i

if.then66.i:                                      ; preds = %sw.bb62.i
  call void @__sanitizer_cov_trace_pc() #13
  %conv68.i = zext i8 %40 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, i32 noundef %conv68.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else69.i:                                      ; preds = %sw.bb62.i
  %paired70.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 5
  %41 = ptrtoint ptr %paired70.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %paired70.i, align 4, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool71.not.i = icmp eq i8 %42, 0
  %output_value73.i = getelementptr inbounds %struct.pm8xxx_pin_data, ptr %5, i32 0, i32 6
  %43 = ptrtoint ptr %output_value73.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %output_value73.i, align 1, !range !206
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool74.not.i = icmp eq i8 %44, 0
  br i1 %tobool71.not.i, label %if.then72.i, label %if.else77.i

if.then72.i:                                      ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond76.i = select i1 %tobool74.not.i, ptr @.str.72, ptr @.str.71
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond76.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

if.else77.i:                                      ; preds = %if.else69.i
  call void @__sanitizer_cov_trace_pc() #13
  %cond81.i = select i1 %tobool74.not.i, ptr @.str.74, ptr @.str.73
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %cond81.i) #11
  br label %pm8xxx_mpp_dbg_show_one.exit

pm8xxx_mpp_dbg_show_one.exit:                     ; preds = %if.else77.i, %if.then72.i, %if.then66.i, %if.else58.i, %if.else52.i, %if.then47.i, %if.else30.i, %if.then27.i, %if.else22.i.pm8xxx_mpp_dbg_show_one.exit_crit_edge, %if.else20.i, %if.else10.i, %if.then9.i, %if.then.i, %for.body.pm8xxx_mpp_dbg_show_one.exit_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.49) #11
  %45 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %46 to i32
  %cmp = icmp ult i32 %add.i, %conv
  br i1 %cmp, label %pm8xxx_mpp_dbg_show_one.exit.for.body_crit_edge, label %pm8xxx_mpp_dbg_show_one.exit.for.end_crit_edge

pm8xxx_mpp_dbg_show_one.exit.for.end_crit_edge:   ; preds = %pm8xxx_mpp_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

pm8xxx_mpp_dbg_show_one.exit.for.body_crit_edge:  ; preds = %pm8xxx_mpp_dbg_show_one.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %pm8xxx_mpp_dbg_show_one.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pm8xxx_mpp_of_xlate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %gpio_desc, ptr noundef writeonly %flags) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %gpio_desc, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %flags, align 4
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end.if.end2_crit_edge
  %args3 = getelementptr inbounds %struct.of_phandle_args, ptr %gpio_desc, i32 0, i32 2
  %5 = ptrtoint ptr %args3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args3, align 4
  %sub = add i32 %6, -1
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  %retval.0 = phi i32 [ %sub, %if.end2 ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_get_irqchip_state(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !65, !66, !68, !70, !71, !72, !73, !75, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192}
!llvm.module.flags = !{!194, !195, !196, !197, !198, !199, !200, !201}
!llvm.ident = !{!202}

!0 = !{ptr @__initcall__kmod_pinctrl_ssbi_mpp__228_937_pm8xxx_mpp_driver_init6, !1, !"__initcall__kmod_pinctrl_ssbi_mpp__228_937_pm8xxx_mpp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 937, i32 1}
!2 = !{ptr @__exitcall_pm8xxx_mpp_driver_exit, !1, !"__exitcall_pm8xxx_mpp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 939, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 940, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 941, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 930, i32 11}
!12 = !{ptr @pm8xxx_mpp_driver, !13, !"pm8xxx_mpp_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 928, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 811, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pm8xxx_mpp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @pm8xxx_mpp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 853, i32 3}
!24 = !{ptr @pm8xxx_mpp_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @pm8xxx_mpp_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 873, i32 20}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 885, i32 49}
!30 = !{ptr @pm8xxx_mpp_probe.lock_key, !31, !"lock_key", i1 false, i1 false}
!31 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 893, i32 8}
!32 = !{ptr @pm8xxx_mpp_probe.request_key, !31, !"request_key", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 895, i32 3}
!35 = !{ptr @pm8xxx_mpp_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pm8xxx_mpp_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 903, i32 3}
!39 = !{ptr @pm8xxx_mpp_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pm8xxx_mpp_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 909, i32 2}
!43 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @pm8xxx_mpp_probe.__UNIQUE_ID_ddebug227, !42, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 435, i32 10}
!47 = !{ptr @pm8xxx_pinctrl_desc, !48, !"pm8xxx_pinctrl_desc", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 434, i32 34}
!49 = !{ptr @pm8xxx_pinctrl_ops, !50, !"pm8xxx_pinctrl_ops", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 268, i32 33}
!51 = !{ptr @pm8xxx_pinmux_ops, !52, !"pm8xxx_pinmux_ops", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 312, i32 32}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 162, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 162, i32 13}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 162, i32 23}
!59 = !{ptr @pm8xxx_mpp_functions, !60, !"pm8xxx_mpp_functions", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 161, i32 27}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 236, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pm8xxx_mpp_update._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @pm8xxx_mpp_update._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @pm8xxx_pinconf_ops, !67, !"pm8xxx_pinconf_ops", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 428, i32 33}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 416, i32 4}
!70 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @pm8xxx_pin_config_set._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @pm8xxx_pin_config_set._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 655, i32 3}
!75 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pm8xxx_pin_populate._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pm8xxx_pin_populate._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 2}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 10}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 18}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 26}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 34}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 42}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 50}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 153, i32 58}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 154, i32 2}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 154, i32 10}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 154, i32 19}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 154, i32 28}
!102 = !{ptr @pm8xxx_groups, !103, !"pm8xxx_groups", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 152, i32 27}
!104 = !{ptr @.str.41, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 134, i32 3}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 135, i32 3}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 136, i32 3}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 137, i32 3}
!112 = !{ptr @pm8xxx_mpp_bindings, !113, !"pm8xxx_mpp_bindings", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 133, i32 44}
!114 = !{ptr @.str.45, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 142, i32 2}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 143, i32 2}
!118 = !{ptr @.str.47, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 144, i32 2}
!120 = !{ptr @.str.48, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 145, i32 2}
!122 = !{ptr @pm8xxx_conf_items, !123, !"pm8xxx_conf_items", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 141, i32 37}
!124 = !{ptr @pm8xxx_mpp_template, !125, !"pm8xxx_mpp_template", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 634, i32 31}
!126 = !{ptr @.str.49, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 626, i32 15}
!128 = !{ptr @.str.50, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 549, i32 3}
!130 = !{ptr @.str.51, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 549, i32 11}
!132 = !{ptr @.str.52, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 549, i32 21}
!134 = !{ptr @.str.53, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 549, i32 30}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 549, i32 40}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 549, i32 47}
!140 = !{ptr @.str.56, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 549, i32 56}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 550, i32 3}
!144 = !{ptr @pm8xxx_mpp_dbg_show_one.aout_lvls, !145, !"aout_lvls", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 548, i32 28}
!146 = !{ptr @.str.58, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 554, i32 3}
!148 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 554, i32 12}
!150 = !{ptr @.str.60, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 554, i32 21}
!152 = !{ptr @.str.61, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 554, i32 30}
!154 = !{ptr @.str.62, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 554, i32 39}
!156 = !{ptr @pm8xxx_mpp_dbg_show_one.amuxs, !157, !"amuxs", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 553, i32 28}
!158 = !{ptr @.str.63, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 558, i32 16}
!160 = !{ptr @.str.64, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 562, i32 15}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 564, i32 18}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 567, i32 17}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 569, i32 19}
!168 = distinct !{null, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 572, i32 19}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 574, i32 17}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 576, i32 16}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 580, i32 7}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 580, i32 16}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 583, i32 7}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 583, i32 20}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 588, i32 15}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 590, i32 18}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 599, i32 18}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 603, i32 17}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 605, i32 18}
!192 = !{ptr @pm8xxx_mpp_of_match, !193, !"pm8xxx_mpp_of_match", i1 false, i1 false}
!193 = !{!"../drivers/pinctrl/qcom/pinctrl-ssbi-mpp.c", i32 780, i32 34}
!194 = !{i32 1, !"wchar_size", i32 2}
!195 = !{i32 1, !"min_enum_size", i32 4}
!196 = !{i32 8, !"branch-target-enforcement", i32 0}
!197 = !{i32 8, !"sign-return-address", i32 0}
!198 = !{i32 8, !"sign-return-address-all", i32 0}
!199 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!200 = !{i32 7, !"uwtable", i32 1}
!201 = !{i32 7, !"frame-pointer", i32 2}
!202 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!203 = !{!"branch_weights", i32 1, i32 2000}
!204 = !{!"auto-init"}
!205 = !{i64 2148975035, i64 2148975040, i64 2148975053, i64 2148975097, i64 2148975131, i64 2148975152}
!206 = !{i8 0, i8 2}
