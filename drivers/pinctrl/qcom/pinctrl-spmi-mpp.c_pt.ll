; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/qcom/pinctrl-spmi-mpp.c_pt.bc'
source_filename = "../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
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
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.pmic_mpp_state = type { ptr, ptr, ptr, %struct.gpio_chip, %struct.irq_chip }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pmic_mpp_pad = type { i16, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_pinctrl_spmi_mpp__223_986_pmic_mpp_driver_init6 = internal global ptr @pmic_mpp_driver_init, section ".initcall6.init", align 4
@pmic_mpp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pmic_mpp_probe, ptr @pmic_mpp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @pmic_mpp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pmic_mpp_driver_exit = internal global ptr @pmic_mpp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [60 x i8] c"pinctrl_spmi_mpp.author=Ivan T. Ivanov <iivanov@mm-sol.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description225 = internal constant [71 x i8] c"pinctrl_spmi_mpp.description=Qualcomm SPMI PMIC MPP pin control driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias226 = internal constant [46 x i8] c"pinctrl_spmi_mpp.alias=platform:qcom-spmi-mpp\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [60 x i8] c"pinctrl_spmi_mpp.file=drivers/pinctrl/qcom/pinctrl-spmi-mpp\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [32 x i8] c"pinctrl_spmi_mpp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qcom-spmi-mpp\00", [18 x i8] zeroinitializer }, align 32
@pmic_mpp_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8019-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8841-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8916-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8941-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8950-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8950-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pm8994-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pma8084-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,pmi8994-mpp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@pmic_mpp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 839, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"missing base address\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmic_mpp_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pinctrl/qcom/pinctrl-spmi-mpp.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pmic_mpp_probe._entry_ptr = internal global ptr @pmic_mpp_probe._entry, section ".printk_index", align 4
@pmic_mpp_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @pmic_mpp_get_groups_count, ptr @pmic_mpp_get_group_name, ptr @pmic_mpp_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_group, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@pmic_mpp_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @pmic_mpp_get_functions_count, ptr @pmic_mpp_get_function_name, ptr @pmic_mpp_get_function_groups, ptr @pmic_mpp_set_mux, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@pmic_mpp_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr null, ptr null, ptr @pmic_mpp_config_get, ptr @pmic_mpp_config_set, ptr null, ptr @pmic_mpp_config_dbg_show, ptr null }, [32 x i8] zeroinitializer }, align 32
@pmic_mpp_bindings = internal constant { [4 x %struct.pinconf_generic_params], [48 x i8] } { [4 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.38, i32 128, i32 0 }, %struct.pinconf_generic_params { ptr @.str.39, i32 129, i32 0 }, %struct.pinconf_generic_params { ptr @.str.40, i32 130, i32 0 }, %struct.pinconf_generic_params { ptr @.str.41, i32 131, i32 0 }], [48 x i8] zeroinitializer }, align 32
@pmic_conf_items = internal constant { [4 x %struct.pin_config_item], [32 x i8] } { [4 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.42, ptr null, i8 1 }, %struct.pin_config_item { i32 129, ptr @.str.43, ptr null, i8 1 }, %struct.pin_config_item { i32 130, ptr @.str.44, ptr null, i8 1 }, %struct.pin_config_item { i32 131, ptr @.str.45, ptr null, i8 0 }], [32 x i8] zeroinitializer }, align 32
@pmic_mpp_groups = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@pmic_mpp_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @pmic_mpp_direction_input, ptr @pmic_mpp_direction_output, ptr @pmic_mpp_get, ptr null, ptr @pmic_mpp_set, ptr null, ptr null, ptr null, ptr @pmic_mpp_dbg_show, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr @pmic_mpp_of_xlate }, [68 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spmi-mpp\00", [23 x i8] zeroinitializer }, align 32
@pmic_mpp_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pmic_mpp_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pmic_mpp_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 937, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't add gpio chip\0A\00", [43 x i8] zeroinitializer }, align 32
@pmic_mpp_probe._entry_ptr.10 = internal global ptr @pmic_mpp_probe._entry.8, section ".printk_index", align 4
@pmic_mpp_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 943, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add pin range\0A\00", [39 x i8] zeroinitializer }, align 32
@pmic_mpp_probe._entry_ptr.13 = internal global ptr @pmic_mpp_probe._entry.11, section ".printk_index", align 4
@pmic_mpp_functions = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16], [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"digital\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sink\00", [27 x i8] zeroinitializer }, align 32
@pmic_mpp_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 198, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write 0x%x failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmic_mpp_write\00", [17 x i8] zeroinitializer }, align 32
@pmic_mpp_write._entry_ptr = internal global ptr @pmic_mpp_write._entry, section ".printk_index", align 4
@pmic_mpp_config_dbg_show.biases = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.6kOhm\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10kOhm\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"30kOhm\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" mpp%-2d:\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" ---\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-4s\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"out\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"in\00", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-7s\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" vin-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %-8s\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" dtest%d\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" paired\00", [24 x i8] zeroinitializer }, align 32
@pmic_mpp_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 183, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read 0x%x failed\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pmic_mpp_read\00", [18 x i8] zeroinitializer }, align 32
@pmic_mpp_read._entry_ptr = internal global ptr @pmic_mpp_read._entry, section ".printk_index", align 4
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qcom,amux-route\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"qcom,analog-level\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qcom,dtest\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qcom,paired\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"analog mux\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"analog level\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dtest\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"paired\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp1\00", [27 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp2\00", [27 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp3\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp4\00", [27 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp5\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp6\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp7\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpp8\00", [27 x i8] zeroinitializer }, align 32
@pmic_mpp_populate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.4, i32 658, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"incorrect block type 0x%x at 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pmic_mpp_populate\00", [46 x i8] zeroinitializer }, align 32
@pmic_mpp_populate._entry_ptr = internal global ptr @pmic_mpp_populate._entry, section ".printk_index", align 4
@pmic_mpp_populate._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.4, i32 679, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unknown MPP type 0x%x at 0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@pmic_mpp_populate._entry_ptr.58 = internal global ptr @pmic_mpp_populate._entry.56, section ".printk_index", align 4
@pmic_mpp_populate._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.55, ptr @.str.4, i32 729, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"unknown MPP direction\0A\00", [41 x i8] zeroinitializer }, align 32
@pmic_mpp_populate._entry_ptr.61 = internal global ptr @pmic_mpp_populate._entry.59, section ".printk_index", align 4
@.str.62 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@switch.table.pmic_mpp_probe = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 8], [44 x i8] zeroinitializer }, align 32
@switch.table.pmic_mpp_probe.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\00\01\01\01\00\00", [25 x i8] zeroinitializer }, align 32
@switch.table.pmic_mpp_probe.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\01\01\00\01\01", [25 x i8] zeroinitializer }, align 32
@switch.table.pmic_mpp_probe.65 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 2], [36 x i8] zeroinitializer }, align 32
@switch.table.pmic_mpp_config_get = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 600, i32 10000, i32 30000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.67 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 5, i64 9, i64 12, i64 17, i64 21, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.68 = internal global [13 x i64] [i64 11, i64 8, i64 1, i64 2, i64 5, i64 9, i64 12, i64 17, i64 21, i64 128, i64 129, i64 130, i64 131]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 600, i64 10000, i64 30000]
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"pmic_mpp_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 977, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 979, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"pmic_mpp_of_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 962, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 837, i32 43 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 839, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"pmic_mpp_pinctrl_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 224, i32 33 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"pmic_mpp_pinmux_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 321, i32 32 }
@___asan_gen_.106 = private unnamed_addr constant [21 x i8] c"pmic_mpp_pinconf_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 554, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"pmic_mpp_bindings\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 147, i32 44 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"pmic_conf_items\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 155, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant [16 x i8] c"pmic_mpp_groups\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 163, i32 26 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"pmic_mpp_gpio_template\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 635, i32 31 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 916, i32 20 }
@___asan_gen_.124 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 935, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 937, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 943, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"pmic_mpp_functions\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 171, i32 26 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 172, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 172, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 172, i32 23 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 198, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [7 x i8] c"biases\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 519, i32 27 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 520, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 520, i32 14 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 520, i32 24 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 520, i32 34 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 525, i32 16 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 528, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 540, i32 17 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 540, i32 48 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 540, i32 56 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 541, i32 17 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 542, i32 17 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 543, i32 17 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 545, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 546, i32 43 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 546, i32 52 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 548, i32 18 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 550, i32 16 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 183, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 148, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 149, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 150, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 151, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 156, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 157, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 158, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 159, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 10 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 26 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 34 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 42 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 50 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 164, i32 58 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 657, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 678, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 729, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.296 = private constant [43 x i8] c"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.296, i32 631, i32 15 }
@___asan_gen_.298 = private unnamed_addr constant [28 x i8] c"switch.table.pmic_mpp_probe\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [31 x i8] c"switch.table.pmic_mpp_probe.63\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [31 x i8] c"switch.table.pmic_mpp_probe.64\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [31 x i8] c"switch.table.pmic_mpp_probe.65\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [33 x i8] c"switch.table.pmic_mpp_config_get\00", align 1
@llvm.compiler.used = appending global [97 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_description225, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_pmic_mpp_driver_exit, ptr @__initcall__kmod_pinctrl_spmi_mpp__223_986_pmic_mpp_driver_init6, ptr @pmic_mpp_driver_exit, ptr @pmic_mpp_populate._entry, ptr @pmic_mpp_populate._entry.56, ptr @pmic_mpp_populate._entry.59, ptr @pmic_mpp_populate._entry_ptr, ptr @pmic_mpp_populate._entry_ptr.58, ptr @pmic_mpp_populate._entry_ptr.61, ptr @pmic_mpp_probe._entry, ptr @pmic_mpp_probe._entry.11, ptr @pmic_mpp_probe._entry.8, ptr @pmic_mpp_probe._entry_ptr, ptr @pmic_mpp_probe._entry_ptr.10, ptr @pmic_mpp_probe._entry_ptr.13, ptr @pmic_mpp_read._entry, ptr @pmic_mpp_read._entry_ptr, ptr @pmic_mpp_write._entry, ptr @pmic_mpp_write._entry_ptr, ptr @pmic_mpp_driver, ptr @.str, ptr @pmic_mpp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pmic_mpp_pinctrl_ops, ptr @pmic_mpp_pinmux_ops, ptr @pmic_mpp_pinconf_ops, ptr @pmic_mpp_bindings, ptr @pmic_conf_items, ptr @pmic_mpp_groups, ptr @pmic_mpp_gpio_template, ptr @.str.7, ptr @pmic_mpp_probe.lock_key, ptr @pmic_mpp_probe.request_key, ptr @.str.9, ptr @.str.12, ptr @pmic_mpp_functions, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @pmic_mpp_config_dbg_show.biases, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @switch.table.pmic_mpp_probe, ptr @switch.table.pmic_mpp_probe.63, ptr @switch.table.pmic_mpp_probe.64, ptr @switch.table.pmic_mpp_probe.65, ptr @switch.table.pmic_mpp_config_get], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_bindings to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_conf_items to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_groups to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_functions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_config_dbg_show.biases to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_populate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_populate._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_mpp_populate._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pmic_mpp_probe to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pmic_mpp_probe.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pmic_mpp_probe.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pmic_mpp_probe.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pmic_mpp_config_get to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pmic_mpp_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pmic_mpp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @pmic_mpp_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %val.i277.i = alloca i32, align 4
  %val.i267.i = alloca i32, align 4
  %val.i257.i = alloca i32, align 4
  %val.i247.i = alloca i32, align 4
  %val.i237.i = alloca i32, align 4
  %val.i227.i = alloca i32, align 4
  %val.i217.i = alloca i32, align 4
  %val.i207.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #12
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !165
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call ptr @device_get_match_data(ptr noundef %dev1) #12
  %3 = ptrtoint ptr %call3 to i32
  %cmp5 = icmp ugt ptr %call3, inttoptr (i32 8 to ptr)
  br i1 %cmp5, label %do.body8, label %do.end16, !prof !166

do.body8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/qcom/pinctrl-spmi-mpp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 845, 0\0A.popsection", ""() #12, !srcloc !167
  unreachable

do.end16:                                         ; preds = %if.end
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 496, i32 noundef 3520) #12
  %tobool18.not = icmp eq ptr %call.i, null
  br i1 %tobool18.not, label %do.end16.cleanup_crit_edge, label %if.end20

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %do.end16
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %call.i, align 4
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call23 = call ptr @dev_get_regmap(ptr noundef %7, ptr noundef null) #12
  %map = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %map, align 4
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 12) #12
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end20.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !166

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end20
  %11 = extractvalue { i32, i1 } %9, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %11, i32 noundef 3520) #12
  %tobool25.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool25.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end27

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end27:                                         ; preds = %devm_kcalloc.exit
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 40) #12
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end27.cleanup_crit_edge, label %devm_kcalloc.exit216, !prof !166

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

devm_kcalloc.exit216:                             ; preds = %if.end27
  %14 = extractvalue { i32, i1 } %12, 0
  %call5.i.i213 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %14, i32 noundef 3520) #12
  %tobool29.not = icmp eq ptr %call5.i.i213, null
  br i1 %tobool29.not, label %devm_kcalloc.exit216.cleanup_crit_edge, label %if.end31

devm_kcalloc.exit216.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit216
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %devm_kcalloc.exit216
  %call.i217 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #12
  %tobool33.not = icmp eq ptr %call.i217, null
  br i1 %tobool33.not, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 3
  %15 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @pmic_mpp_pinctrl_ops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 4
  %16 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @pmic_mpp_pinmux_ops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 5
  %17 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pmic_mpp_pinconf_ops, ptr %confops, align 4
  %owner = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 6
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %19 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end35.dev_name.exit_crit_edge

if.end35.dev_name.exit_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end35.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %22, %if.end.i ], [ %20, %if.end35.dev_name.exit_crit_edge ]
  %23 = ptrtoint ptr %call.i217 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %retval.0.i, ptr %call.i217, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 1
  %24 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i, ptr %pins, align 4
  %npins37 = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 2
  %25 = ptrtoint ptr %npins37 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %3, ptr %npins37, align 4
  %num_custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 7
  %26 = ptrtoint ptr %num_custom_params to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %num_custom_params, align 4
  %custom_params = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 8
  %27 = ptrtoint ptr %custom_params to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @pmic_mpp_bindings, ptr %custom_params, align 4
  %custom_conf_items = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i217, i32 0, i32 9
  %28 = ptrtoint ptr %custom_conf_items to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @pmic_conf_items, ptr %custom_conf_items, align 4
  %cmp38315 = icmp sgt ptr %call3, null
  br i1 %cmp38315, label %for.body.preheader, label %dev_name.exit.for.end_crit_edge

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %dev_name.exit
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0317 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %pindesc.0316 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %call5.i.i, %for.body.preheader ]
  %arrayidx = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317
  %drv_data = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pindesc.0316, i32 0, i32 2
  %29 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx, ptr %drv_data, align 4
  %30 = ptrtoint ptr %pindesc.0316 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %i.0317, ptr %pindesc.0316, align 4
  %arrayidx39 = getelementptr [8 x ptr], ptr @pmic_mpp_groups, i32 0, i32 %i.0317
  %31 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx39, align 4
  %name40 = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pindesc.0316, i32 0, i32 1
  %33 = ptrtoint ptr %name40 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %name40, align 4
  %34 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reg, align 4
  %mul = shl i32 %i.0317, 8
  %add = add i32 %35, %mul
  %conv = trunc i32 %add to i16
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #12
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %val.i.i, align 4, !annotation !165
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  %conv.i.i = and i32 %add, 65535
  %add.i.i = add nuw nsw i32 %conv.i.i, 4
  %call.i.i218 = call i32 @regmap_read(ptr noundef %39, i32 noundef %add.i.i, ptr noundef nonnull %val.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i218)
  %cmp.i.i = icmp slt i32 %call.i.i218, 0
  br i1 %cmp.i.i, label %pmic_mpp_read.exit.thread.i, label %pmic_mpp_read.exit.i

pmic_mpp_read.exit.thread.i:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.36, i32 noundef 4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  br label %cleanup

pmic_mpp_read.exit.i:                             ; preds = %for.body
  %42 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i = icmp slt i32 %43, 0
  br i1 %cmp.i, label %pmic_mpp_read.exit.i.cleanup_crit_edge, label %if.end.i219

pmic_mpp_read.exit.i.cleanup_crit_edge:           ; preds = %pmic_mpp_read.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i219:                                      ; preds = %pmic_mpp_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %43)
  %cmp1.not.i = icmp eq i32 %43, 17
  br i1 %cmp1.not.i, label %if.end3.i, label %do.end.i

do.end.i:                                         ; preds = %if.end.i219
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx, align 4
  %conv.i = zext i16 %47 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.54, i32 noundef %43, i32 noundef %conv.i) #15
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i219
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i207.i) #12
  %48 = ptrtoint ptr %val.i207.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %val.i207.i, align 4, !annotation !165
  %49 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map, align 4
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx, align 4
  %conv.i209.i = zext i16 %52 to i32
  %add.i210.i = add nuw nsw i32 %conv.i209.i, 5
  %call.i211.i = call i32 @regmap_read(ptr noundef %50, i32 noundef %add.i210.i, ptr noundef nonnull %val.i207.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i211.i)
  %cmp.i212.i = icmp slt i32 %call.i211.i, 0
  br i1 %cmp.i212.i, label %pmic_mpp_read.exit216.thread.i, label %pmic_mpp_read.exit216.i

pmic_mpp_read.exit216.thread.i:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #14
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.36, i32 noundef 5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i207.i) #12
  br label %cleanup

pmic_mpp_read.exit216.i:                          ; preds = %if.end3.i
  %55 = ptrtoint ptr %val.i207.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val.i207.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i207.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp5.i = icmp slt i32 %56, 0
  br i1 %cmp5.i, label %pmic_mpp_read.exit216.i.cleanup_crit_edge, label %if.end8.i

pmic_mpp_read.exit216.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit216.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %pmic_mpp_read.exit216.i
  %switch.tableidx = add i32 %56, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %57 = icmp ult i32 %switch.tableidx, 13
  br i1 %57, label %switch.hole_check, label %if.end8.i.do.end13.i_crit_edge

if.end8.i.do.end13.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

do.end13.i:                                       ; preds = %switch.hole_check.do.end13.i_crit_edge, %if.end8.i.do.end13.i_crit_edge
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx, align 4
  %conv16.i = zext i16 %61 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.57, i32 noundef %56, i32 noundef %conv16.i) #15
  br label %cleanup

switch.hole_check:                                ; preds = %if.end8.i
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 4127, %switch.maskindex
  %62 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %62)
  %switch.lobit.not = icmp eq i16 %62, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end13.i_crit_edge, label %switch.lookup

switch.hole_check.do.end13.i_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end13.i

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.pmic_mpp_probe, i32 0, i32 %switch.tableidx
  %63 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %63)
  %switch.load = load i32, ptr %switch.gep, align 4
  %num_sources10.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 7
  %64 = ptrtoint ptr %num_sources10.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %switch.load, ptr %num_sources10.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i217.i) #12
  %65 = ptrtoint ptr %val.i217.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %val.i217.i, align 4, !annotation !165
  %66 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %map, align 4
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %arrayidx, align 4
  %conv.i219.i = zext i16 %69 to i32
  %add.i220.i = add nuw nsw i32 %conv.i219.i, 64
  %call.i221.i = call i32 @regmap_read(ptr noundef %67, i32 noundef %add.i220.i, ptr noundef nonnull %val.i217.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221.i)
  %cmp.i222.i = icmp slt i32 %call.i221.i, 0
  br i1 %cmp.i222.i, label %pmic_mpp_read.exit226.thread.i, label %pmic_mpp_read.exit226.i

pmic_mpp_read.exit226.thread.i:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.36, i32 noundef 64) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i217.i) #12
  br label %cleanup

pmic_mpp_read.exit226.i:                          ; preds = %switch.lookup
  %72 = ptrtoint ptr %val.i217.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val.i217.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i217.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp18.i = icmp slt i32 %73, 0
  br i1 %cmp18.i, label %pmic_mpp_read.exit226.i.cleanup_crit_edge, label %if.end21.i

pmic_mpp_read.exit226.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit226.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21.i:                                       ; preds = %pmic_mpp_read.exit226.i
  %out_value.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 2
  %74 = trunc i32 %73 to i8
  %75 = and i8 %74, 1
  %76 = ptrtoint ptr %out_value.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %out_value.i, align 1
  %77 = lshr i32 %73, 4
  %and22.i = and i32 %77, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and22.i)
  %.not = icmp eq i32 %and22.i, 7
  br i1 %.not, label %do.end51.i, label %switch.lookup566

do.end51.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.60) #15
  br label %cleanup

switch.lookup566:                                 ; preds = %if.end21.i
  %switch.gep567 = getelementptr inbounds [7 x i8], ptr @switch.table.pmic_mpp_probe.63, i32 0, i32 %and22.i
  %80 = ptrtoint ptr %switch.gep567 to i32
  call void @__asan_load1_noabort(i32 %80)
  %switch.load568 = load i8, ptr %switch.gep567, align 1
  %switch.gep569 = getelementptr inbounds [7 x i8], ptr @switch.table.pmic_mpp_probe.64, i32 0, i32 %and22.i
  %81 = ptrtoint ptr %switch.gep569 to i32
  call void @__asan_load1_noabort(i32 %81)
  %switch.load570 = load i8, ptr %switch.gep569, align 1
  %switch.gep571 = getelementptr inbounds [7 x i32], ptr @switch.table.pmic_mpp_probe.65, i32 0, i32 %and22.i
  %82 = ptrtoint ptr %switch.gep571 to i32
  call void @__asan_load4_noabort(i32 %82)
  %switch.load572 = load i32, ptr %switch.gep571, align 4
  %input_enabled45.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 4
  %83 = ptrtoint ptr %input_enabled45.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %switch.load568, ptr %input_enabled45.i, align 1
  %output_enabled46.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 3
  %84 = ptrtoint ptr %output_enabled46.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %switch.load570, ptr %output_enabled46.i, align 4
  %function47.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 12
  %85 = ptrtoint ptr %function47.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %switch.load572, ptr %function47.i, align 4
  %86 = lshr i32 %73, 1
  %and55.i = and i32 %86, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and55.i)
  %cmp56.i = icmp ugt i32 %and55.i, 3
  br i1 %cmp56.i, label %if.then58.i, label %if.else.i

if.then58.i:                                      ; preds = %switch.lookup566
  call void @__sanitizer_cov_trace_pc() #14
  %add.i = add nuw nsw i32 %and55.i, 1
  %dtest.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 14
  %87 = ptrtoint ptr %dtest.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %add.i, ptr %dtest.i, align 4
  br label %if.end63.i

if.else.i:                                        ; preds = %switch.lookup566
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and55.i)
  %cmp59.i = icmp eq i32 %and55.i, 1
  br i1 %cmp59.i, label %if.then61.i, label %if.else.i.if.end63.i_crit_edge

if.else.i.if.end63.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end63.i

if.then61.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %paired.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 5
  %88 = ptrtoint ptr %paired.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %paired.i, align 2
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then61.i, %if.else.i.if.end63.i_crit_edge, %if.then58.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i227.i) #12
  %89 = ptrtoint ptr %val.i227.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %val.i227.i, align 4, !annotation !165
  %90 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %map, align 4
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %arrayidx, align 4
  %conv.i229.i = zext i16 %93 to i32
  %add.i230.i = add nuw nsw i32 %conv.i229.i, 65
  %call.i231.i = call i32 @regmap_read(ptr noundef %91, i32 noundef %add.i230.i, ptr noundef nonnull %val.i227.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i231.i)
  %cmp.i232.i = icmp slt i32 %call.i231.i, 0
  br i1 %cmp.i232.i, label %pmic_mpp_read.exit236.thread.i, label %pmic_mpp_read.exit236.i

pmic_mpp_read.exit236.thread.i:                   ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #14
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.36, i32 noundef 65) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i227.i) #12
  br label %cleanup

pmic_mpp_read.exit236.i:                          ; preds = %if.end63.i
  %96 = ptrtoint ptr %val.i227.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %val.i227.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i227.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %cmp65.i = icmp slt i32 %97, 0
  br i1 %cmp65.i, label %pmic_mpp_read.exit236.i.cleanup_crit_edge, label %if.end68.i

pmic_mpp_read.exit236.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit236.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end68.i:                                       ; preds = %pmic_mpp_read.exit236.i
  %power_source.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 8
  %and71.i = and i32 %97, 7
  %98 = ptrtoint ptr %power_source.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %and71.i, ptr %power_source.i, align 4
  %99 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %if.then76.i [
    i32 4, label %if.end68.i.if.end85.i_crit_edge
    i32 6, label %if.end68.i.if.end85.i_crit_edge737
  ]

if.end68.i.if.end85.i_crit_edge737:               ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i

if.end68.i.if.end85.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end85.i

if.then76.i:                                      ; preds = %if.end68.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i237.i) #12
  %100 = ptrtoint ptr %val.i237.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %val.i237.i, align 4, !annotation !165
  %101 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %map, align 4
  %103 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %arrayidx, align 4
  %conv.i239.i = zext i16 %104 to i32
  %add.i240.i = add nuw nsw i32 %conv.i239.i, 66
  %call.i241.i = call i32 @regmap_read(ptr noundef %102, i32 noundef %add.i240.i, ptr noundef nonnull %val.i237.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241.i)
  %cmp.i242.i = icmp slt i32 %call.i241.i, 0
  br i1 %cmp.i242.i, label %pmic_mpp_read.exit246.thread.i, label %pmic_mpp_read.exit246.i

pmic_mpp_read.exit246.thread.i:                   ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #14
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.36, i32 noundef 66) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i237.i) #12
  br label %cleanup

pmic_mpp_read.exit246.i:                          ; preds = %if.then76.i
  %107 = ptrtoint ptr %val.i237.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %val.i237.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i237.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %cmp78.i = icmp slt i32 %108, 0
  br i1 %cmp78.i, label %pmic_mpp_read.exit246.i.cleanup_crit_edge, label %if.end81.i

pmic_mpp_read.exit246.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit246.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end81.i:                                       ; preds = %pmic_mpp_read.exit246.i
  call void @__sanitizer_cov_trace_pc() #14
  %pullup.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 11
  %and84.i = and i32 %108, 7
  %109 = ptrtoint ptr %pullup.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %and84.i, ptr %pullup.i, align 4
  %has_pullup.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 6
  %110 = ptrtoint ptr %has_pullup.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %has_pullup.i, align 1
  br label %if.end85.i

if.end85.i:                                       ; preds = %if.end81.i, %if.end68.i.if.end85.i_crit_edge, %if.end68.i.if.end85.i_crit_edge737
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i247.i) #12
  %111 = ptrtoint ptr %val.i247.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %val.i247.i, align 4, !annotation !165
  %112 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %map, align 4
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx, align 4
  %conv.i249.i = zext i16 %115 to i32
  %add.i250.i = add nuw nsw i32 %conv.i249.i, 74
  %call.i251.i = call i32 @regmap_read(ptr noundef %113, i32 noundef %add.i250.i, ptr noundef nonnull %val.i247.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i251.i)
  %cmp.i252.i = icmp slt i32 %call.i251.i, 0
  br i1 %cmp.i252.i, label %pmic_mpp_read.exit256.thread.i, label %pmic_mpp_read.exit256.i

pmic_mpp_read.exit256.thread.i:                   ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #14
  %116 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.36, i32 noundef 74) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i247.i) #12
  br label %cleanup

pmic_mpp_read.exit256.i:                          ; preds = %if.end85.i
  %118 = ptrtoint ptr %val.i247.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %val.i247.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i247.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp87.i = icmp slt i32 %119, 0
  br i1 %cmp87.i, label %pmic_mpp_read.exit256.i.cleanup_crit_edge, label %if.end90.i

pmic_mpp_read.exit256.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit256.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end90.i:                                       ; preds = %pmic_mpp_read.exit256.i
  %amux_input.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 9
  %and93.i = and i32 %119, 7
  %120 = ptrtoint ptr %amux_input.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %and93.i, ptr %amux_input.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i257.i) #12
  %121 = ptrtoint ptr %val.i257.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %val.i257.i, align 4, !annotation !165
  %122 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %map, align 4
  %124 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %arrayidx, align 4
  %conv.i259.i = zext i16 %125 to i32
  %add.i260.i = add nuw nsw i32 %conv.i259.i, 76
  %call.i261.i = call i32 @regmap_read(ptr noundef %123, i32 noundef %add.i260.i, ptr noundef nonnull %val.i257.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261.i)
  %cmp.i262.i = icmp slt i32 %call.i261.i, 0
  br i1 %cmp.i262.i, label %pmic_mpp_read.exit266.thread.i, label %pmic_mpp_read.exit266.i

pmic_mpp_read.exit266.thread.i:                   ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #14
  %126 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.36, i32 noundef 76) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i257.i) #12
  br label %cleanup

pmic_mpp_read.exit266.i:                          ; preds = %if.end90.i
  %128 = ptrtoint ptr %val.i257.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val.i257.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i257.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp95.i = icmp slt i32 %129, 0
  br i1 %cmp95.i, label %pmic_mpp_read.exit266.i.cleanup_crit_edge, label %if.end98.i

pmic_mpp_read.exit266.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit266.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end98.i:                                       ; preds = %pmic_mpp_read.exit266.i
  %drive_strength.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 13
  %130 = ptrtoint ptr %drive_strength.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %drive_strength.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i267.i) #12
  %131 = ptrtoint ptr %val.i267.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %val.i267.i, align 4, !annotation !165
  %132 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %map, align 4
  %134 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %arrayidx, align 4
  %conv.i269.i = zext i16 %135 to i32
  %add.i270.i = add nuw nsw i32 %conv.i269.i, 72
  %call.i271.i = call i32 @regmap_read(ptr noundef %133, i32 noundef %add.i270.i, ptr noundef nonnull %val.i267.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i271.i)
  %cmp.i272.i = icmp slt i32 %call.i271.i, 0
  br i1 %cmp.i272.i, label %pmic_mpp_read.exit276.thread.i, label %pmic_mpp_read.exit276.i

pmic_mpp_read.exit276.thread.i:                   ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #14
  %136 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %137, ptr noundef nonnull @.str.36, i32 noundef 72) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i267.i) #12
  br label %cleanup

pmic_mpp_read.exit276.i:                          ; preds = %if.end98.i
  %138 = ptrtoint ptr %val.i267.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %val.i267.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i267.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp100.i = icmp slt i32 %139, 0
  br i1 %cmp100.i, label %pmic_mpp_read.exit276.i.cleanup_crit_edge, label %if.end103.i

pmic_mpp_read.exit276.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit276.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end103.i:                                      ; preds = %pmic_mpp_read.exit276.i
  %aout_level.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 10
  %140 = ptrtoint ptr %aout_level.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %aout_level.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i277.i) #12
  %141 = ptrtoint ptr %val.i277.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -1, ptr %val.i277.i, align 4, !annotation !165
  %142 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %map, align 4
  %144 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx, align 4
  %conv.i279.i = zext i16 %145 to i32
  %add.i280.i = add nuw nsw i32 %conv.i279.i, 70
  %call.i281.i = call i32 @regmap_read(ptr noundef %143, i32 noundef %add.i280.i, ptr noundef nonnull %val.i277.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i281.i)
  %cmp.i282.i = icmp slt i32 %call.i281.i, 0
  br i1 %cmp.i282.i, label %pmic_mpp_read.exit286.thread.i, label %pmic_mpp_read.exit286.i

pmic_mpp_read.exit286.thread.i:                   ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #14
  %146 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.36, i32 noundef 70) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i277.i) #12
  br label %cleanup

pmic_mpp_read.exit286.i:                          ; preds = %if.end103.i
  %148 = ptrtoint ptr %val.i277.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %val.i277.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i277.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp105.i = icmp slt i32 %149, 0
  br i1 %cmp105.i, label %pmic_mpp_read.exit286.i.cleanup_crit_edge, label %for.inc

pmic_mpp_read.exit286.i.cleanup_crit_edge:        ; preds = %pmic_mpp_read.exit286.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc:                                          ; preds = %pmic_mpp_read.exit286.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool109.i = icmp ne i32 %149, 0
  %is_enabled.i = getelementptr %struct.pmic_mpp_pad, ptr %call5.i.i213, i32 %i.0317, i32 1
  %frombool111.i = zext i1 %tobool109.i to i8
  %150 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 %frombool111.i, ptr %is_enabled.i, align 2
  %inc = add nuw nsw i32 %i.0317, 1
  %incdec.ptr = getelementptr %struct.pinctrl_pin_desc, ptr %pindesc.0316, i32 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %dev_name.exit.for.end_crit_edge
  %chip = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3
  %151 = call ptr @memcpy(ptr %chip, ptr @pmic_mpp_gpio_template, i32 348)
  %parent47 = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 2
  %152 = ptrtoint ptr %parent47 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %dev1, ptr %parent47, align 4
  %base49 = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 19
  %153 = ptrtoint ptr %base49 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 -1, ptr %base49, align 4
  %conv50 = trunc i32 %3 to i16
  %ngpio = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 20
  %154 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 %conv50, ptr %ngpio, align 4
  %155 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i222 = icmp eq ptr %156, null
  br i1 %tobool.not.i222, label %if.end.i223, label %for.end.dev_name.exit225_crit_edge

for.end.dev_name.exit225_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit225

if.end.i223:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  %157 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit225

dev_name.exit225:                                 ; preds = %if.end.i223, %for.end.dev_name.exit225_crit_edge
  %retval.0.i224 = phi ptr [ %158, %if.end.i223 ], [ %156, %for.end.dev_name.exit225_crit_edge ]
  %159 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %retval.0.i224, ptr %chip, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 40
  %160 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %can_sleep = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 23
  %161 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 0, ptr %can_sleep, align 4
  %call56 = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef nonnull %call.i217, ptr noundef nonnull %call.i) #12
  %ctrl = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 2
  %162 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call56, ptr %ctrl, align 4
  %cmp.i226 = icmp ugt ptr %call56, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %if.then59, label %if.end62

if.then59:                                        ; preds = %dev_name.exit225
  call void @__sanitizer_cov_trace_pc() #14
  %163 = ptrtoint ptr %call56 to i32
  br label %cleanup

if.end62:                                         ; preds = %dev_name.exit225
  %164 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %call.i, align 4
  %of_node64 = getelementptr inbounds %struct.device, ptr %165, i32 0, i32 27
  %166 = ptrtoint ptr %of_node64 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %of_node64, align 8
  %call65 = call ptr @of_irq_find_parent(ptr noundef %167) #12
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %if.end62.cleanup_crit_edge, label %if.end68

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end68:                                         ; preds = %if.end62
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %call65, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #12
  %168 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %169 = call ptr @memset(ptr %168, i32 0, i32 68)
  %170 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #12
  %tobool.not.i227 = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i227, label %irq_find_host.exit, label %irq_find_host.exit.thread

irq_find_host.exit.thread:                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #14
  call void @of_node_put(ptr noundef nonnull %call65) #12
  br label %if.end72

irq_find_host.exit:                               ; preds = %if.end68
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #12
  %171 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %172 = call ptr @memset(ptr %171, i32 0, i32 68)
  %173 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #12
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #12
  call void @of_node_put(ptr noundef nonnull %call65) #12
  %tobool70.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool70.not, label %irq_find_host.exit.cleanup_crit_edge, label %irq_find_host.exit.if.end72_crit_edge

irq_find_host.exit.if.end72_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end72

irq_find_host.exit.cleanup_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end72:                                         ; preds = %irq_find_host.exit.if.end72_crit_edge, %irq_find_host.exit.thread
  %d.0.i243 = phi ptr [ %call.i.i.i, %irq_find_host.exit.thread ], [ %call.i.i8.i, %irq_find_host.exit.if.end72_crit_edge ]
  %irq = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4
  %name73 = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4, i32 1
  %174 = ptrtoint ptr %name73 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr @.str.7, ptr %name73, align 4
  %irq_ack = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4, i32 6
  %175 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @irq_chip_ack_parent, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4, i32 7
  %176 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr @irq_chip_mask_parent, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4, i32 9
  %177 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @irq_chip_unmask_parent, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4, i32 13
  %178 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr @irq_chip_set_type_parent, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4, i32 14
  %179 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @irq_chip_set_wake_parent, ptr %irq_set_wake, align 4
  %flags = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 4, i32 33
  %180 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 4, ptr %flags, align 4
  %irq81 = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37
  %181 = ptrtoint ptr %irq81 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %irq, ptr %irq81, align 4
  %default_type = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 10
  %182 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 9
  %183 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @handle_level_irq, ptr %handler, align 4
  %184 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %call.i, align 4
  %of_node85 = getelementptr inbounds %struct.device, ptr %185, i32 0, i32 27
  %186 = ptrtoint ptr %of_node85 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %of_node85, align 8
  %tobool.not.i229 = icmp eq ptr %187, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %187, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i229, ptr null, ptr %fwnode.i
  %fwnode = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 3
  %188 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %spec.select.i, ptr %fwnode, align 4
  %parent_domain87 = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 4
  %189 = ptrtoint ptr %parent_domain87 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %d.0.i243, ptr %parent_domain87, align 4
  %child_to_parent_hwirq = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 5
  %190 = ptrtoint ptr %child_to_parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @pmic_mpp_child_to_parent_hwirq, ptr %child_to_parent_hwirq, align 4
  %populate_parent_alloc_arg = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 6
  %191 = ptrtoint ptr %populate_parent_alloc_arg to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr @gpiochip_populate_parent_fwspec_fourcell, ptr %populate_parent_alloc_arg, align 4
  %child_offset_to_irq = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 7
  %192 = ptrtoint ptr %child_offset_to_irq to i32
  call void @__asan_store4_noabort(i32 %192)
  store ptr @pmic_mpp_child_offset_to_irq, ptr %child_offset_to_irq, align 4
  %translate = getelementptr inbounds %struct.pmic_mpp_state, ptr %call.i, i32 0, i32 3, i32 37, i32 8, i32 9
  %193 = ptrtoint ptr %translate to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @pmic_mpp_domain_translate, ptr %translate, align 4
  %call89 = call i32 @gpiochip_add_data_with_key(ptr noundef %chip, ptr noundef %call.i, ptr noundef nonnull @pmic_mpp_probe.lock_key, ptr noundef nonnull @pmic_mpp_probe.request_key) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end96, label %do.end94

do.end94:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %194 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %195, ptr noundef nonnull @.str.9) #15
  br label %cleanup

if.end96:                                         ; preds = %if.end72
  %196 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i231 = icmp eq ptr %197, null
  br i1 %tobool.not.i231, label %if.end.i232, label %if.end96.dev_name.exit234_crit_edge

if.end96.dev_name.exit234_crit_edge:              ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit234

if.end.i232:                                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #14
  %198 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit234

dev_name.exit234:                                 ; preds = %if.end.i232, %if.end96.dev_name.exit234_crit_edge
  %retval.0.i233 = phi ptr [ %199, %if.end.i232 ], [ %197, %if.end96.dev_name.exit234_crit_edge ]
  %call99 = call i32 @gpiochip_add_pin_range(ptr noundef %chip, ptr noundef %retval.0.i233, i32 noundef 0, i32 noundef 0, i32 noundef %3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %dev_name.exit234.cleanup_crit_edge, label %do.end104

dev_name.exit234.cleanup_crit_edge:               ; preds = %dev_name.exit234
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end104:                                        ; preds = %dev_name.exit234
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #15
  call void @gpiochip_remove(ptr noundef %chip) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end104, %dev_name.exit234.cleanup_crit_edge, %do.end94, %irq_find_host.exit.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then59, %pmic_mpp_read.exit286.i.cleanup_crit_edge, %pmic_mpp_read.exit286.thread.i, %pmic_mpp_read.exit276.i.cleanup_crit_edge, %pmic_mpp_read.exit276.thread.i, %pmic_mpp_read.exit266.i.cleanup_crit_edge, %pmic_mpp_read.exit266.thread.i, %pmic_mpp_read.exit256.i.cleanup_crit_edge, %pmic_mpp_read.exit256.thread.i, %pmic_mpp_read.exit246.i.cleanup_crit_edge, %pmic_mpp_read.exit246.thread.i, %pmic_mpp_read.exit236.i.cleanup_crit_edge, %pmic_mpp_read.exit236.thread.i, %do.end51.i, %pmic_mpp_read.exit226.i.cleanup_crit_edge, %pmic_mpp_read.exit226.thread.i, %do.end13.i, %pmic_mpp_read.exit216.i.cleanup_crit_edge, %pmic_mpp_read.exit216.thread.i, %do.end.i, %pmic_mpp_read.exit.i.cleanup_crit_edge, %pmic_mpp_read.exit.thread.i, %if.end31.cleanup_crit_edge, %devm_kcalloc.exit216.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %163, %if.then59 ], [ %call89, %do.end94 ], [ %call99, %do.end104 ], [ -12, %do.end16.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit216.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ -6, %if.end62.cleanup_crit_edge ], [ -6, %irq_find_host.exit.cleanup_crit_edge ], [ 0, %dev_name.exit234.cleanup_crit_edge ], [ -12, %if.end20.cleanup_crit_edge ], [ -12, %if.end27.cleanup_crit_edge ], [ %call.i281.i, %pmic_mpp_read.exit286.thread.i ], [ %call.i271.i, %pmic_mpp_read.exit276.thread.i ], [ %call.i261.i, %pmic_mpp_read.exit266.thread.i ], [ %call.i251.i, %pmic_mpp_read.exit256.thread.i ], [ %call.i241.i, %pmic_mpp_read.exit246.thread.i ], [ %call.i231.i, %pmic_mpp_read.exit236.thread.i ], [ %call.i221.i, %pmic_mpp_read.exit226.thread.i ], [ %call.i211.i, %pmic_mpp_read.exit216.thread.i ], [ %call.i.i218, %pmic_mpp_read.exit.thread.i ], [ -19, %do.end51.i ], [ -19, %do.end13.i ], [ -19, %do.end.i ], [ %43, %pmic_mpp_read.exit.i.cleanup_crit_edge ], [ %56, %pmic_mpp_read.exit216.i.cleanup_crit_edge ], [ %73, %pmic_mpp_read.exit226.i.cleanup_crit_edge ], [ %97, %pmic_mpp_read.exit236.i.cleanup_crit_edge ], [ %108, %pmic_mpp_read.exit246.i.cleanup_crit_edge ], [ %119, %pmic_mpp_read.exit256.i.cleanup_crit_edge ], [ %129, %pmic_mpp_read.exit266.i.cleanup_crit_edge ], [ %139, %pmic_mpp_read.exit276.i.cleanup_crit_edge ], [ %149, %pmic_mpp_read.exit286.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %chip = getelementptr inbounds %struct.pmic_mpp_state, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %chip) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_ack_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_wake_parent(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @pmic_mpp_child_to_parent_hwirq(ptr nocapture noundef readnone %chip, i32 noundef %child_hwirq, i32 noundef %child_type, ptr nocapture noundef writeonly %parent_hwirq, ptr nocapture noundef writeonly %parent_type) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %child_hwirq, 192
  %0 = ptrtoint ptr %parent_hwirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %add, ptr %parent_hwirq, align 4
  %1 = ptrtoint ptr %parent_type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %child_type, ptr %parent_type, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_populate_parent_fwspec_fourcell(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_child_offset_to_irq(ptr nocapture noundef readnone %chip, i32 noundef %offset) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 1
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_domain_translate(ptr nocapture noundef readonly %domain, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_groups_count(ptr nocapture noundef readonly %pctldev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins, align 4
  ret i32 %3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_mpp_get_group_name(ptr nocapture noundef readonly %pctldev, i32 noundef %pin) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins, align 4
  %name = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  ret ptr %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_group_pins(ptr nocapture noundef readonly %pctldev, i32 noundef %pin, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %num_pins) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %pins1 = getelementptr inbounds %struct.pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pins1, align 4
  %arrayidx = getelementptr %struct.pinctrl_pin_desc, ptr %3, i32 %pin
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %pins, align 4
  %5 = ptrtoint ptr %num_pins to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %num_pins, align 4
  ret i32 0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_group(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 4) #12
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_functions_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_mpp_get_function_name(ptr nocapture noundef readnone %pctldev, i32 noundef %function) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x ptr], ptr @pmic_mpp_functions, i32 0, i32 %function
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  ret ptr %1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_get_function_groups(ptr nocapture noundef readonly %pctldev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_qgroups) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @pmic_mpp_groups, ptr %groups, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 4
  %npins = getelementptr inbounds %struct.pinctrl_desc, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npins, align 4
  %5 = ptrtoint ptr %num_qgroups to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %num_qgroups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_set_mux(ptr noundef %pctldev, i32 noundef %function, i32 noundef %pin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #12
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
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
  %function1 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %function1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %function, ptr %function1, align 4
  %call2 = tail call fastcc i32 @pmic_mpp_write_mode_ctl(ptr noundef %call, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_enabled, align 2, !range !168
  %9 = shl nuw i8 %8, 7
  %shl = zext i8 %9 to i32
  %map.i = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 4
  %conv.i = zext i16 %13 to i32
  %add.i = add nuw nsw i32 %conv.i, 70
  %call.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add.i, i32 noundef %shl) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17, i32 noundef 70) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pmic_mpp_write_mode_ctl(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %pad) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %function = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 12
  %0 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %function, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb7
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %input_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 4
  %3 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %input_enabled, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %sw.bb.if.else_crit_edge, label %land.lhs.true

sw.bb.if.else_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb
  %output_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 3
  %5 = ptrtoint ptr %output_enabled to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %output_enabled, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb.if.else_crit_edge
  %. = phi i32 [ 64, %land.lhs.true.if.else_crit_edge ], [ 80, %sw.bb.if.else_crit_edge ]
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %input_enabled8 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 4
  %7 = ptrtoint ptr %input_enabled8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %input_enabled8, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool9.not = icmp eq i8 %8, 0
  br i1 %tobool9.not, label %sw.bb7.if.else14_crit_edge, label %land.lhs.true10

sw.bb7.if.else14_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14

land.lhs.true10:                                  ; preds = %sw.bb7
  %output_enabled11 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 3
  %9 = ptrtoint ptr %output_enabled11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %output_enabled11, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  br i1 %tobool12.not, label %land.lhs.true10.if.else14_crit_edge, label %land.lhs.true10.sw.epilog_crit_edge

land.lhs.true10.sw.epilog_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true10.if.else14_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true10.if.else14_crit_edge, %sw.bb7.if.else14_crit_edge
  %.46 = phi i32 [ 0, %land.lhs.true10.if.else14_crit_edge ], [ 16, %sw.bb7.if.else14_crit_edge ]
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else14, %land.lhs.true10.sw.epilog_crit_edge, %if.else, %land.lhs.true.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %mode.0 = phi i32 [ 48, %land.lhs.true.sw.epilog_crit_edge ], [ %., %if.else ], [ 32, %land.lhs.true10.sw.epilog_crit_edge ], [ %.46, %if.else14 ], [ 96, %entry.sw.epilog_crit_edge ]
  %dtest = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 14
  %11 = ptrtoint ptr %dtest to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dtest, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool22.not = icmp eq i32 %12, 0
  br i1 %tobool22.not, label %if.else25, label %if.then23

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %sub = shl i32 %12, 1
  %phi.bo = add i32 %sub, 6
  br label %if.end30

if.else25:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %paired = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 5
  %13 = ptrtoint ptr %paired to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %paired, align 2, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool26.not = icmp eq i8 %14, 0
  %.47 = select i1 %tobool26.not, i32 0, i32 2
  br label %if.end30

if.end30:                                         ; preds = %if.else25, %if.then23
  %sel.0 = phi i32 [ %phi.bo, %if.then23 ], [ %.47, %if.else25 ]
  %out_value = getelementptr inbounds %struct.pmic_mpp_pad, ptr %pad, i32 0, i32 2
  %15 = ptrtoint ptr %out_value to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %out_value, align 1, !range !168
  %17 = zext i8 %16 to i32
  %or = or i32 %sel.0, %mode.0
  %or34 = or i32 %or, %17
  %map.i = getelementptr inbounds %struct.pmic_mpp_state, ptr %state, i32 0, i32 1
  %18 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map.i, align 4
  %20 = ptrtoint ptr %pad to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pad, align 4
  %conv.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv.i, 64
  %call.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef %add.i, i32 noundef %or34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end30.pmic_mpp_write.exit_crit_edge

if.end30.pmic_mpp_write.exit_crit_edge:           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %pmic_mpp_write.exit

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef 64) #15
  br label %pmic_mpp_write.exit

pmic_mpp_write.exit:                              ; preds = %do.end.i, %if.end30.pmic_mpp_write.exit_crit_edge
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_config_get(ptr nocapture noundef readonly %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %pin, i32 2
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %trunc = trunc i32 %1 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb1
    i8 2, label %sw.bb6
    i8 21, label %sw.bb9
    i8 12, label %sw.bb10
    i8 17, label %sw.bb14
    i8 -126, label %sw.bb16
    i8 -128, label %sw.bb17
    i8 -125, label %sw.bb18
    i8 9, label %sw.bb22
    i8 -127, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %pullup = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 11
  %9 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pullup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %10)
  %cmp.not = icmp eq i32 %10, 3
  br i1 %cmp.not, label %sw.bb.sw.epilog25_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.sw.epilog25_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog25

sw.bb1:                                           ; preds = %entry
  %pullup2 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 11
  %11 = ptrtoint ptr %pullup2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pullup2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %12)
  %13 = icmp ult i32 %12, 3
  br i1 %13, label %switch.lookup, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %is_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_enabled, align 2, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %sw.bb6.sw.epilog25_crit_edge, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6.sw.epilog25_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog25

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %power_source = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 8
  %16 = ptrtoint ptr %power_source to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %power_source, align 4
  br label %sw.epilog25

sw.bb10:                                          ; preds = %entry
  %input_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 4
  %18 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %input_enabled, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp eq i8 %19, 0
  br i1 %tobool11.not, label %sw.bb10.cleanup_crit_edge, label %sw.bb10.sw.epilog25_crit_edge

sw.bb10.sw.epilog25_crit_edge:                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog25

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %out_value = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 2
  %20 = ptrtoint ptr %out_value to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %out_value, align 1, !range !168
  %22 = zext i8 %21 to i32
  br label %sw.epilog25

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dtest = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 14
  %23 = ptrtoint ptr %dtest to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dtest, align 4
  br label %sw.epilog25

sw.bb17:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %amux_input = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 9
  %25 = ptrtoint ptr %amux_input to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %amux_input, align 4
  br label %sw.epilog25

sw.bb18:                                          ; preds = %entry
  %paired = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 5
  %27 = ptrtoint ptr %paired to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %paired, align 2, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool19.not = icmp eq i8 %28, 0
  br i1 %tobool19.not, label %sw.bb18.cleanup_crit_edge, label %sw.bb18.sw.epilog25_crit_edge

sw.bb18.sw.epilog25_crit_edge:                    ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog25

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %drive_strength = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 13
  %29 = ptrtoint ptr %drive_strength to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %drive_strength, align 4
  br label %sw.epilog25

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %aout_level = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 10
  %31 = ptrtoint ptr %aout_level to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %aout_level, align 4
  br label %sw.epilog25

switch.lookup:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.pmic_mpp_config_get, i32 0, i32 %12
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %switch.lookup, %sw.bb23, %sw.bb22, %sw.bb18.sw.epilog25_crit_edge, %sw.bb17, %sw.bb16, %sw.bb14, %sw.bb10.sw.epilog25_crit_edge, %sw.bb9, %sw.bb6.sw.epilog25_crit_edge, %sw.bb.sw.epilog25_crit_edge
  %arg.0 = phi i32 [ %32, %sw.bb23 ], [ %30, %sw.bb22 ], [ %26, %sw.bb17 ], [ %24, %sw.bb16 ], [ %22, %sw.bb14 ], [ %17, %sw.bb9 ], [ 1, %sw.bb.sw.epilog25_crit_edge ], [ 1, %sw.bb6.sw.epilog25_crit_edge ], [ 1, %sw.bb10.sw.epilog25_crit_edge ], [ 1, %sw.bb18.sw.epilog25_crit_edge ], [ %switch.load, %switch.lookup ]
  %shl.i = shl i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %34 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog25, %sw.bb18.cleanup_crit_edge, %sw.bb10.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog25 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.bb6.cleanup_crit_edge ], [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %sw.bb18.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_config_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %nconfs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #12
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
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
  %is_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %is_enabled, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nconfs)
  %cmp176.not = icmp eq i32 %nconfs, 0
  br i1 %cmp176.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %paired = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 5
  %aout_level = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 10
  %amux_input = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 9
  %drive_strength = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 13
  %dtest = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 14
  %output_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 3
  %out_value = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 2
  %input_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 4
  %num_sources = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 7
  %power_source = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 8
  %pullup11 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %configs, i32 %i.0177
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  %shr.i = lshr i32 %8, 8
  %trunc = trunc i32 %8 to i8
  %9 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 5, label %sw.bb5
    i8 2, label %sw.bb12
    i8 21, label %sw.bb14
    i8 12, label %sw.bb16
    i8 17, label %sw.bb18
    i8 -126, label %sw.bb21
    i8 9, label %sw.bb22
    i8 -128, label %sw.bb23
    i8 -127, label %sw.bb27
    i8 -125, label %sw.bb28
  ]

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %pullup11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %pullup11, align 4
  br label %for.inc

sw.bb5:                                           ; preds = %for.body
  %11 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %shr.i, label %sw.bb5.cleanup_crit_edge [
    i32 600, label %sw.bb6
    i32 10000, label %sw.bb8
    i32 30000, label %sw.bb10
  ]

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb6:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %pullup11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %pullup11, align 4
  br label %for.inc

sw.bb8:                                           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %pullup11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %pullup11, align 4
  br label %for.inc

sw.bb10:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %pullup11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %pullup11, align 4
  br label %for.inc

sw.bb12:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %is_enabled, align 2
  br label %for.inc

sw.bb14:                                          ; preds = %for.body
  %16 = ptrtoint ptr %num_sources to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_sources, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %17)
  %cmp15.not = icmp ult i32 %shr.i, %17
  br i1 %cmp15.not, label %if.end, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %power_source to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shr.i, ptr %power_source, align 4
  br label %for.inc

sw.bb16:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %tobool = icmp ugt i32 %8, 255
  %frombool = zext i1 %tobool to i8
  %19 = ptrtoint ptr %input_enabled to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %input_enabled, align 1
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %output_enabled to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %output_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %tobool19 = icmp ugt i32 %8, 255
  %frombool20 = zext i1 %tobool19 to i8
  %21 = ptrtoint ptr %out_value to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %frombool20, ptr %out_value, align 1
  br label %for.inc

sw.bb21:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dtest to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %shr.i, ptr %dtest, align 4
  br label %for.inc

sw.bb22:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %23 = ptrtoint ptr %drive_strength to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i, ptr %drive_strength, align 4
  br label %for.inc

sw.bb23:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 1791, i32 %8)
  %cmp24 = icmp ugt i32 %8, 1791
  br i1 %cmp24, label %sw.bb23.cleanup_crit_edge, label %if.end26

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %amux_input to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i, ptr %amux_input, align 4
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %aout_level to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shr.i, ptr %aout_level, align 4
  br label %for.inc

sw.bb28:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %8)
  %tobool29 = icmp ugt i32 %8, 255
  %frombool31 = zext i1 %tobool29 to i8
  %26 = ptrtoint ptr %paired to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %frombool31, ptr %paired, align 2
  br label %for.inc

for.inc:                                          ; preds = %sw.bb28, %sw.bb27, %if.end26, %sw.bb22, %sw.bb21, %sw.bb18, %sw.bb16, %if.end, %sw.bb12, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb
  %inc = add nuw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, %nconfs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %power_source34 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %power_source34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %power_source34, align 4
  %map.i = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 1
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i, align 4
  %31 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %5, align 4
  %conv.i = zext i16 %32 to i32
  %add.i = add nuw nsw i32 %conv.i, 65
  %call.i = tail call i32 @regmap_write(ptr noundef %30, i32 noundef %add.i, i32 noundef %28) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.end.cleanup.sink.split_crit_edge, label %if.end38

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end38:                                         ; preds = %for.end
  %has_pullup = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %has_pullup to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_pullup, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool39.not = icmp eq i8 %34, 0
  br i1 %tobool39.not, label %if.end38.if.end47_crit_edge, label %if.then40

if.end38.if.end47_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then40:                                        ; preds = %if.end38
  %pullup41 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 11
  %35 = ptrtoint ptr %pullup41 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pullup41, align 4
  %37 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %map.i, align 4
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %5, align 4
  %conv.i142 = zext i16 %40 to i32
  %add.i143 = add nuw nsw i32 %conv.i142, 66
  %call.i144 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %add.i143, i32 noundef %36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %cmp.i145 = icmp slt i32 %call.i144, 0
  br i1 %cmp.i145, label %if.then40.cleanup.sink.split_crit_edge, label %if.then40.if.end47_crit_edge

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end47

if.then40.cleanup.sink.split_crit_edge:           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end47:                                         ; preds = %if.then40.if.end47_crit_edge, %if.end38.if.end47_crit_edge
  %amux_input48 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 9
  %41 = ptrtoint ptr %amux_input48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %amux_input48, align 4
  %and = and i32 %42, 7
  %43 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %map.i, align 4
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %5, align 4
  %conv.i149 = zext i16 %46 to i32
  %add.i150 = add nuw nsw i32 %conv.i149, 74
  %call.i151 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef %add.i150, i32 noundef %and) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %cmp.i152 = icmp slt i32 %call.i151, 0
  br i1 %cmp.i152, label %if.end47.cleanup.sink.split_crit_edge, label %if.end52

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end52:                                         ; preds = %if.end47
  %aout_level53 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 10
  %47 = ptrtoint ptr %aout_level53 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %aout_level53, align 4
  %49 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %map.i, align 4
  %51 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %5, align 4
  %conv.i156 = zext i16 %52 to i32
  %add.i157 = add nuw nsw i32 %conv.i156, 72
  %call.i158 = tail call i32 @regmap_write(ptr noundef %50, i32 noundef %add.i157, i32 noundef %48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %cmp.i159 = icmp slt i32 %call.i158, 0
  br i1 %cmp.i159, label %if.end52.cleanup.sink.split_crit_edge, label %if.end57

if.end52.cleanup.sink.split_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end57:                                         ; preds = %if.end52
  %call58 = tail call fastcc i32 @pmic_mpp_write_mode_ctl(ptr noundef %call, ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.end57.cleanup_crit_edge, label %if.end61

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end61:                                         ; preds = %if.end57
  %drive_strength62 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 13
  %53 = ptrtoint ptr %drive_strength62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %drive_strength62, align 4
  %55 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %map.i, align 4
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %5, align 4
  %conv.i163 = zext i16 %58 to i32
  %add.i164 = add nuw nsw i32 %conv.i163, 76
  %call.i165 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef %add.i164, i32 noundef %54) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i165)
  %cmp.i166 = icmp slt i32 %call.i165, 0
  br i1 %cmp.i166, label %if.end61.cleanup.sink.split_crit_edge, label %if.end66

if.end61.cleanup.sink.split_crit_edge:            ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end66:                                         ; preds = %if.end61
  %59 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %is_enabled, align 2, !range !168
  %61 = shl nuw i8 %60, 7
  %shl69 = zext i8 %61 to i32
  %62 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %map.i, align 4
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %5, align 4
  %conv.i170 = zext i16 %65 to i32
  %add.i171 = add nuw nsw i32 %conv.i170, 70
  %call.i172 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef %add.i171, i32 noundef %shl69) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i172)
  %cmp.i173 = icmp slt i32 %call.i172, 0
  br i1 %cmp.i173, label %if.end66.cleanup.sink.split_crit_edge, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end66.cleanup.sink.split_crit_edge:            ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end66.cleanup.sink.split_crit_edge, %if.end61.cleanup.sink.split_crit_edge, %if.end52.cleanup.sink.split_crit_edge, %if.end47.cleanup.sink.split_crit_edge, %if.then40.cleanup.sink.split_crit_edge, %for.end.cleanup.sink.split_crit_edge
  %.sink178 = phi i32 [ 65, %for.end.cleanup.sink.split_crit_edge ], [ 66, %if.then40.cleanup.sink.split_crit_edge ], [ 74, %if.end47.cleanup.sink.split_crit_edge ], [ 72, %if.end52.cleanup.sink.split_crit_edge ], [ 76, %if.end61.cleanup.sink.split_crit_edge ], [ 70, %if.end66.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %for.end.cleanup.sink.split_crit_edge ], [ %call.i144, %if.then40.cleanup.sink.split_crit_edge ], [ %call.i151, %if.end47.cleanup.sink.split_crit_edge ], [ %call.i158, %if.end52.cleanup.sink.split_crit_edge ], [ %call.i165, %if.end61.cleanup.sink.split_crit_edge ], [ %call.i172, %if.end66.cleanup.sink.split_crit_edge ]
  %66 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.17, i32 noundef %.sink178) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end66.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end57.cleanup_crit_edge ], [ %call.i172, %if.end66.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb14.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_mpp_config_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #12
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 1
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
  %add = add i32 %pin, 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, i32 noundef %add) #12
  %is_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_enabled, align 2, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.24) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %input_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %input_enabled, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not = icmp eq i8 %9, 0
  br i1 %tobool1.not, label %if.else.if.end6_crit_edge, label %if.then2

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end6

if.then2:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !165
  %map.i = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %5, align 4
  %conv.i = zext i16 %14 to i32
  %add.i = add nuw nsw i32 %conv.i, 16
  %call.i = call i32 @regmap_read(ptr noundef %12, i32 noundef %add.i, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pmic_mpp_read.exit.thread, label %pmic_mpp_read.exit

pmic_mpp_read.exit.thread:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %cleanup

pmic_mpp_read.exit:                               ; preds = %if.then2
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %pmic_mpp_read.exit.cleanup_crit_edge, label %if.end

pmic_mpp_read.exit.cleanup_crit_edge:             ; preds = %pmic_mpp_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pmic_mpp_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %out_value = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 2
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = ptrtoint ptr %out_value to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %out_value, align 1
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.else.if.end6_crit_edge
  %output_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 3
  %22 = ptrtoint ptr %output_enabled to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %output_enabled, align 4, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool7.not = icmp eq i8 %23, 0
  %cond = select i1 %tobool7.not, ptr @.str.27, ptr @.str.26
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond) #12
  %function = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 12
  %24 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %function, align 4
  %arrayidx8 = getelementptr [3 x ptr], ptr @pmic_mpp_functions, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx8, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.28, ptr noundef %27) #12
  %power_source = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 8
  %28 = ptrtoint ptr %power_source to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %power_source, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.29, i32 noundef %29) #12
  %aout_level = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 10
  %30 = ptrtoint ptr %aout_level to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %aout_level, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.30, i32 noundef %31) #12
  %has_pullup = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 6
  %32 = ptrtoint ptr %has_pullup to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_pullup, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool9.not = icmp eq i8 %33, 0
  br i1 %tobool9.not, label %if.end6.if.end12_crit_edge, label %if.then10

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #14
  %pullup = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 11
  %34 = ptrtoint ptr %pullup to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pullup, align 4
  %arrayidx11 = getelementptr [4 x ptr], ptr @pmic_mpp_config_dbg_show.biases, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx11, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.31, ptr noundef %37) #12
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %out_value13 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 2
  %38 = ptrtoint ptr %out_value13 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %out_value13, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool14.not = icmp eq i8 %39, 0
  %cond15 = select i1 %tobool14.not, ptr @.str.33, ptr @.str.32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull %cond15) #12
  %dtest = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 14
  %40 = ptrtoint ptr %dtest to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dtest, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool16.not = icmp eq i32 %41, 0
  br i1 %tobool16.not, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %41) #12
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  %paired = getelementptr inbounds %struct.pmic_mpp_pad, ptr %5, i32 0, i32 5
  %42 = ptrtoint ptr %paired to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %paired, align 2, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool20.not = icmp eq i8 %43, 0
  br i1 %tobool20.not, label %if.end19.cleanup_crit_edge, label %if.then21

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.35) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.end19.cleanup_crit_edge, %pmic_mpp_read.exit.cleanup_crit_edge, %pmic_mpp_read.exit.thread, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_direction_input(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #12
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 268, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @pmic_mpp_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_direction_output(ptr noundef %chip, i32 noundef %pin, i32 noundef %val) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #12
  %shl.i = shl i32 %val, 8
  %or.i = or i32 %shl.i, 17
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or.i, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @pmic_mpp_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #12
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_mpp_get(ptr noundef %chip, i32 noundef %pin) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  %ctrl = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl, align 4
  %desc = getelementptr inbounds %struct.pinctrl_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %pins = getelementptr inbounds %struct.pinctrl_desc, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  %drv_data = getelementptr %struct.pinctrl_pin_desc, ptr %5, i32 %pin, i32 2
  %6 = ptrtoint ptr %drv_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drv_data, align 4
  %input_enabled = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %input_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %input_enabled, align 1, !range !168
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #12
  %10 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i, align 4, !annotation !165
  %map.i = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %7, align 4
  %conv.i = zext i16 %14 to i32
  %add.i = add nuw nsw i32 %conv.i, 16
  %call.i = call i32 @regmap_read(ptr noundef %12, i32 noundef %add.i, ptr noundef nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %pmic_mpp_read.exit.thread, label %pmic_mpp_read.exit

pmic_mpp_read.exit.thread:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.36, i32 noundef 16) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  br label %cleanup

pmic_mpp_read.exit:                               ; preds = %if.then
  %17 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp slt i32 %18, 0
  br i1 %cmp, label %pmic_mpp_read.exit.cleanup_crit_edge, label %if.end

pmic_mpp_read.exit.cleanup_crit_edge:             ; preds = %pmic_mpp_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %pmic_mpp_read.exit
  call void @__sanitizer_cov_trace_pc() #14
  %out_value = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 2
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = ptrtoint ptr %out_value to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %out_value, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry.if.end4_crit_edge
  %out_value5 = getelementptr inbounds %struct.pmic_mpp_pad, ptr %7, i32 0, i32 2
  %22 = ptrtoint ptr %out_value5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %out_value5, align 1, !range !168
  %24 = zext i8 %23 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %pmic_mpp_read.exit.cleanup_crit_edge, %pmic_mpp_read.exit.thread
  %retval.0 = phi i32 [ %24, %if.end4 ], [ %18, %pmic_mpp_read.exit.cleanup_crit_edge ], [ %call.i, %pmic_mpp_read.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_mpp_set(ptr noundef %chip, i32 noundef %pin, i32 noundef %value) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #12
  %shl.i = shl i32 %value, 8
  %or.i = or i32 %shl.i, 17
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or.i, ptr %config, align 4
  %ctrl = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ctrl, align 4
  %call2 = call i32 @pmic_mpp_config_set(ptr noundef %2, i32 noundef %pin, ptr noundef nonnull %config, i32 noundef 1)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_mpp_dbg_show(ptr noundef %s, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #12
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp7.not = icmp eq i16 %1, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ctrl = getelementptr inbounds %struct.pmic_mpp_state, ptr %call, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.08 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl, align 4
  tail call void @pmic_mpp_config_dbg_show(ptr noundef %3, ptr noundef %s, i32 noundef %i.08)
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.62) #12
  %inc = add nuw nsw i32 %i.08, 1
  %4 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_mpp_of_xlate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %gpio_desc, ptr noundef writeonly %flags) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %0 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ult i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %flags, null
  br i1 %tobool.not, label %if.end.if.end2_crit_edge, label %if.then1

if.end.if.end2_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end2

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
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
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
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
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_pinctrl_spmi_mpp__223_986_pmic_mpp_driver_init6, !1, !"__initcall__kmod_pinctrl_spmi_mpp__223_986_pmic_mpp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 986, i32 1}
!2 = !{ptr @__exitcall_pmic_mpp_driver_exit, !1, !"__exitcall_pmic_mpp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 988, i32 1}
!5 = !{ptr @__UNIQUE_ID_description225, !6, !"__UNIQUE_ID_description225", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 989, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias226, !8, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 990, i32 1}
!9 = !{ptr @__UNIQUE_ID_file227, !10, !"__UNIQUE_ID_file227", i1 false, i1 false}
!10 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 991, i32 1}
!11 = !{ptr @__UNIQUE_ID_license228, !10, !"__UNIQUE_ID_license228", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 979, i32 14}
!14 = !{ptr @pmic_mpp_driver, !15, !"pmic_mpp_driver", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 977, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 837, i32 43}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 839, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pmic_mpp_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pmic_mpp_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 916, i32 20}
!28 = !{ptr @pmic_mpp_probe.lock_key, !29, !"lock_key", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 935, i32 8}
!30 = !{ptr @pmic_mpp_probe.request_key, !29, !"request_key", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 937, i32 3}
!33 = !{ptr @pmic_mpp_probe._entry.8, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @pmic_mpp_probe._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 943, i32 3}
!37 = !{ptr @pmic_mpp_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @pmic_mpp_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @pmic_mpp_pinctrl_ops, !40, !"pmic_mpp_pinctrl_ops", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 224, i32 33}
!41 = !{ptr @pmic_mpp_pinmux_ops, !42, !"pmic_mpp_pinmux_ops", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 321, i32 32}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 172, i32 2}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 172, i32 13}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 172, i32 23}
!49 = !{ptr @pmic_mpp_functions, !50, !"pmic_mpp_functions", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 171, i32 26}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 198, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @pmic_mpp_write._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @pmic_mpp_write._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @pmic_mpp_pinconf_ops, !57, !"pmic_mpp_pinconf_ops", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 554, i32 33}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 520, i32 3}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 520, i32 14}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 520, i32 24}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 520, i32 34}
!66 = !{ptr @pmic_mpp_config_dbg_show.biases, !67, !"biases", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 519, i32 27}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 525, i32 16}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 528, i32 15}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 540, i32 17}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 540, i32 48}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 540, i32 56}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 541, i32 17}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 542, i32 17}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 543, i32 17}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 545, i32 18}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 546, i32 43}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 546, i32 52}
!90 = !{ptr @.str.34, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 548, i32 18}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 550, i32 16}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 183, i32 3}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @pmic_mpp_read._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @pmic_mpp_read._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 148, i32 3}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 149, i32 3}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 150, i32 3}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 151, i32 3}
!107 = !{ptr @pmic_mpp_bindings, !108, !"pmic_mpp_bindings", i1 false, i1 false}
!108 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 147, i32 44}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 156, i32 2}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 157, i32 2}
!113 = !{ptr @.str.44, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 158, i32 2}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 159, i32 2}
!117 = !{ptr @pmic_conf_items, !118, !"pmic_conf_items", i1 false, i1 false}
!118 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 155, i32 37}
!119 = !{ptr @.str.46, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 2}
!121 = !{ptr @.str.47, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 10}
!123 = !{ptr @.str.48, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 18}
!125 = !{ptr @.str.49, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 26}
!127 = !{ptr @.str.50, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 34}
!129 = !{ptr @.str.51, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 42}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 50}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 164, i32 58}
!135 = !{ptr @pmic_mpp_groups, !136, !"pmic_mpp_groups", i1 false, i1 false}
!136 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 163, i32 26}
!137 = !{ptr @.str.54, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 657, i32 3}
!139 = !{ptr @.str.55, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @pmic_mpp_populate._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @pmic_mpp_populate._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.57, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 678, i32 3}
!144 = !{ptr @pmic_mpp_populate._entry.56, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @pmic_mpp_populate._entry_ptr.58, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.60, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 729, i32 3}
!148 = !{ptr @pmic_mpp_populate._entry.59, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @pmic_mpp_populate._entry_ptr.61, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @pmic_mpp_gpio_template, !151, !"pmic_mpp_gpio_template", i1 false, i1 false}
!151 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 635, i32 31}
!152 = !{ptr @.str.62, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 631, i32 15}
!154 = !{ptr @pmic_mpp_of_match, !155, !"pmic_mpp_of_match", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/qcom/pinctrl-spmi-mpp.c", i32 962, i32 34}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"auto-init"}
!166 = !{!"branch_weights", i32 1, i32 2000}
!167 = !{i64 2153924648, i64 2153925152, i64 2153924685, i64 2153924741, i64 2153924775, i64 2153924799, i64 2153924840, i64 2153924861, i64 2153924889, i64 2153924923}
!168 = !{i8 0, i8 2}
