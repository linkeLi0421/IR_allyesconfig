; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-st.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-st.c"
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
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.st_pctl_data = type { i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.st_pinctrl = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.st_gpio_bank = type { %struct.gpio_chip, %struct.pinctrl_gpio_range, ptr, %struct.st_pio_control, i32, %struct.spinlock }
%struct.pinctrl_gpio_range = type { %struct.list_head, ptr, i32, i32, i32, i32, ptr, ptr }
%struct.st_pio_control = type { i32, ptr, ptr, ptr, ptr, %union.anon.70 }
%union.anon.70 = type { %struct.st_retime_dedicated }
%struct.st_retime_dedicated = type { [8 x ptr] }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.st_pmx_func = type { ptr, ptr, i32 }
%struct.st_pctl_group = type { ptr, ptr, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.property = type { ptr, i32, ptr, ptr, i32, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.st_pinconf = type { i32, ptr, i32, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.68 }
%union.anon.68 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_st__223_1719_st_pctl_init3 = internal global ptr @st_pctl_init, section ".initcall3.init", align 4
@st_pctl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @st_pctl_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @st_pctl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"st-pinctrl\00", [21 x i8] zeroinitializer }, align 32
@st_pctl_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-sbc-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-front-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-rear-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-flash-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @stih407_flashdata }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@st_pctl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"device node not found.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"st_pctl_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/pinctrl/pinctrl-st.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@st_pctl_probe._entry_ptr = internal global ptr @st_pctl_probe._entry, section ".printk_index", align 4
@st_pctlops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @st_pctl_get_groups_count, ptr @st_pctl_get_group_name, ptr @st_pctl_get_group_pins, ptr null, ptr @st_pctl_dt_node_to_map, ptr @st_pctl_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@st_pmxops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @st_pmx_get_funcs_count, ptr @st_pmx_get_fname, ptr @st_pmx_get_groups, ptr @st_pmx_set_mux, ptr null, ptr null, ptr @st_pmx_set_gpio_direction, i8 1 }, [56 x i8] zeroinitializer }, align 32
@st_confops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @st_pinconf_get, ptr @st_pinconf_set, ptr null, ptr null, ptr @st_pinconf_dbg_show, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed pinctrl registration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"you need at least one gpio bank\0A\00", [63 x i8] zeroinitializer }, align 32
@st_pctl_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 1587, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nbanks = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"st_pctl_probe_dt\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@st_pctl_probe_dt._entry_ptr = internal global ptr @st_pctl_probe_dt._entry, section ".printk_index", align 4
@st_pctl_probe_dt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.3, i32 1588, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nfunctions = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@st_pctl_probe_dt._entry_ptr.13 = internal global ptr @st_pctl_probe_dt._entry.11, section ".printk_index", align 4
@st_pctl_probe_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.3, i32 1589, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ngroups = %d\0A\00", [18 x i8] zeroinitializer }, align 32
@st_pctl_probe_dt._entry_ptr.16 = internal global ptr @st_pctl_probe_dt._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"st,syscfg\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No syscfg phandle specified\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"irqmux\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@st_pctl_probe_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.3, i32 1655, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No functions found.\0A\00", [43 x i8] zeroinitializer }, align 32
@st_pctl_probe_dt._entry_ptr.23 = internal global ptr @st_pctl_probe_dt._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@st_gpio_template = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr @st_gpio_get_direction, ptr @st_gpio_direction_input, ptr @st_gpio_direction_output, ptr @st_gpio_get, ptr null, ptr @st_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 8, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@st_gpiolib_register_bank.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&bank->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"st,bank-name\00", [19 x i8] zeroinitializer }, align 32
@st_gpiolib_register_bank._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 1532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid IRQ for %pOF bank\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"st_gpiolib_register_bank\00", [39 x i8] zeroinitializer }, align 32
@st_gpiolib_register_bank._entry_ptr = internal global ptr @st_gpiolib_register_bank._entry, section ".printk_index", align 4
@st_gpiolib_register_bank._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.3, i32 1537, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no irqmux for %pOF bank\0A\00", [39 x i8] zeroinitializer }, align 32
@st_gpiolib_register_bank._entry_ptr.31 = internal global ptr @st_gpiolib_register_bank._entry.29, section ".printk_index", align 4
@st_gpio_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.36, ptr null, ptr null, ptr null, ptr @st_gpio_irq_mask, ptr null, ptr @st_gpio_irq_mask, ptr null, ptr @st_gpio_irq_unmask, ptr null, ptr null, ptr null, ptr @st_gpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @st_gpio_irq_request_resources, ptr @st_gpio_irq_release_resources, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 16 }, [56 x i8] zeroinitializer }, align 32
@st_gpiolib_register_bank.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@st_gpiolib_register_bank.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to add gpiochip(%d)!\0A\00", [35 x i8] zeroinitializer }, align 32
@st_gpiolib_register_bank._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.28, ptr @.str.3, i32 1558, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s bank added.\0A\00", [16 x i8] zeroinitializer }, align 32
@st_gpiolib_register_bank._entry_ptr.35 = internal global ptr @st_gpiolib_register_bank._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"GPIO\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"st,retime-pin-mask\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No groups defined\0A\00", [45 x i8] zeroinitializer }, align 32
@st_pctl_parse_functions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.3, i32 1275, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Function[%d\09 name:%s,\09groups:%d]\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_pctl_parse_functions\00", [40 x i8] zeroinitializer }, align 32
@st_pctl_parse_functions._entry_ptr = internal global ptr @st_pctl_parse_functions._entry, section ".printk_index", align 4
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"st,pins\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@st_pctl_dt_parse_groups._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 1192, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Invalid st,pins in %pOFn node\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_pctl_dt_parse_groups\00", [40 x i8] zeroinitializer }, align 32
@st_pctl_dt_parse_groups._entry_ptr = internal global ptr @st_pctl_dt_parse_groups._entry, section ".printk_index", align 4
@st_pctl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unable to find group for node %pOFn\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"st_pctl_dt_node_to_map\00", [41 x i8] zeroinitializer }, align 32
@st_pctl_dt_node_to_map._entry_ptr = internal global ptr @st_pctl_dt_node_to_map._entry, section ".printk_index", align 4
@st_pctl_dt_node_to_map._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 856, ptr @.str.10, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"maps: function %s group %s num %d\0A\00", [61 x i8] zeroinitializer }, align 32
@st_pctl_dt_node_to_map._entry_ptr.49 = internal global ptr @st_pctl_dt_node_to_map._entry.47, section ".printk_index", align 4
@st_pinconf_bit_to_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.3, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014Delay not found in/out delay list\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_pinconf_bit_to_delay\00", [40 x i8] zeroinitializer }, align 32
@st_pinconf_bit_to_delay._entry_ptr = internal global ptr @st_pinconf_bit_to_delay._entry, section ".printk_index", align 4
@st_pinconf_delay_to_bit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.3, i32 476, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Attempt to set delay %d, closest available %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"st_pinconf_delay_to_bit\00", [40 x i8] zeroinitializer }, align 32
@st_pinconf_delay_to_bit._entry_ptr = internal global ptr @st_pinconf_delay_to_bit._entry, section ".printk_index", align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Alt Fn %u\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"[OE:%d,PU:%ld,OD:%ld]\09%s\0A\09\09[retime:%ld,invclk:%ld,clknotdat:%ld,de:%ld,rt-clk:%ld,rt-delay:%ld]\00", [32 x i8] zeroinitializer }, align 32
@stih407_data = internal constant { %struct.st_pctl_data, [56 x i8] } { %struct.st_pctl_data { i32 2, ptr @stih407_delays, i32 14, ptr @stih407_delays, i32 14, i32 0, i32 40, i32 50, i32 60, i32 100 }, [56 x i8] zeroinitializer }, align 32
@stih407_flashdata = internal constant { %struct.st_pctl_data, [56 x i8] } { %struct.st_pctl_data { i32 0, ptr @stih407_delays, i32 14, ptr @stih407_delays, i32 14, i32 0, i32 -1, i32 -1, i32 60, i32 100 }, [56 x i8] zeroinitializer }, align 32
@stih407_delays = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 300, i32 500, i32 750, i32 1000, i32 1250, i32 1500, i32 1750, i32 2000, i32 2250, i32 2500, i32 2750, i32 3000, i32 3250], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.59 = private unnamed_addr constant [15 x i8] c"st_pctl_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1707, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1709, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c"st_pctl_of_match\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1563, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1673, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"st_pctlops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 866, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"st_pmxops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 933, i32 32 }
@___asan_gen_.92 = private unnamed_addr constant [11 x i8] c"st_confops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1032, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1699, i32 50 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1585, i32 38 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1587, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1588, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1589, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1600, i32 53 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1602, i32 52 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1608, i32 67 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1625, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1655, i32 5 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1481, i32 37 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"st_gpio_template\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1453, i32 31 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1497, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1499, i32 30 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1532, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1537, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"st_gpio_irqchip\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1464, i32 24 }
@___asan_gen_.176 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1555, i32 9 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1557, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1558, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1465, i32 12 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1159, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1259, i32 38 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1275, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1180, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1186, i32 25 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1192, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 824, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 855, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 498, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 475, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1012, i32 19 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 1017, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant [13 x i8] c"stih407_data\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 340, i32 35 }
@___asan_gen_.266 = private unnamed_addr constant [18 x i8] c"stih407_flashdata\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 349, i32 34 }
@___asan_gen_.269 = private unnamed_addr constant [15 x i8] c"stih407_delays\00", align 1
@___asan_gen_.270 = private constant [32 x i8] c"../drivers/pinctrl/pinctrl-st.c\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.270, i32 337, i32 27 }
@llvm.compiler.used = appending global [86 x ptr] [ptr @__initcall__kmod_pinctrl_st__223_1719_st_pctl_init3, ptr @st_gpiolib_register_bank._entry, ptr @st_gpiolib_register_bank._entry.29, ptr @st_gpiolib_register_bank._entry.33, ptr @st_gpiolib_register_bank._entry_ptr, ptr @st_gpiolib_register_bank._entry_ptr.31, ptr @st_gpiolib_register_bank._entry_ptr.35, ptr @st_pctl_dt_node_to_map._entry, ptr @st_pctl_dt_node_to_map._entry.47, ptr @st_pctl_dt_node_to_map._entry_ptr, ptr @st_pctl_dt_node_to_map._entry_ptr.49, ptr @st_pctl_dt_parse_groups._entry, ptr @st_pctl_dt_parse_groups._entry_ptr, ptr @st_pctl_parse_functions._entry, ptr @st_pctl_parse_functions._entry_ptr, ptr @st_pctl_probe._entry, ptr @st_pctl_probe._entry_ptr, ptr @st_pctl_probe_dt._entry, ptr @st_pctl_probe_dt._entry.11, ptr @st_pctl_probe_dt._entry.14, ptr @st_pctl_probe_dt._entry.21, ptr @st_pctl_probe_dt._entry_ptr, ptr @st_pctl_probe_dt._entry_ptr.13, ptr @st_pctl_probe_dt._entry_ptr.16, ptr @st_pctl_probe_dt._entry_ptr.23, ptr @st_pinconf_bit_to_delay._entry, ptr @st_pinconf_bit_to_delay._entry_ptr, ptr @st_pinconf_delay_to_bit._entry, ptr @st_pinconf_delay_to_bit._entry_ptr, ptr @st_pctl_driver, ptr @.str, ptr @st_pctl_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @st_pctlops, ptr @st_pmxops, ptr @st_confops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @st_gpio_template, ptr @st_gpiolib_register_bank.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @st_gpio_irqchip, ptr @st_gpiolib_register_bank.lock_key, ptr @st_gpiolib_register_bank.request_key, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @stih407_data, ptr @stih407_flashdata, ptr @stih407_delays], section "llvm.metadata"
@0 = internal global [71 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctlops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pmxops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_confops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_probe_dt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_probe_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_probe_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpio_template to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpiolib_register_bank.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpiolib_register_bank._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpiolib_register_bank._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpio_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpiolib_register_bank.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpiolib_register_bank.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_gpiolib_register_bank._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_parse_functions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_dt_parse_groups._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pctl_dt_node_to_map._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pinconf_bit_to_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pinconf_delay_to_bit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_data to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_flashdata to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stih407_delays to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pctl_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @st_pctl_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pctl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res.i.i = alloca %struct.resource, align 4
  %irq_res.i.i = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #9
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call.i57 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #9
  %tobool6.not = icmp eq ptr %call.i57, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %call.i57 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i57, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i57, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #9
  %cmp.not12.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not12.i.i, label %if.end8.st_pctl_dt_child_count.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.end8.st_pctl_dt_child_count.exit.i_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_child_count.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.end8
  %nbanks.i.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 3
  %nfunctions.i.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 5
  %ngroups.i.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.013.i.i = phi ptr [ %call.i.i, %for.body.lr.ph.i.i ], [ %call4.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call.i.i.i = tail call ptr @of_find_property(ptr noundef nonnull %child.013.i.i, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %tobool.i.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.i.not.i.i, label %if.else.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.else.i.i:                                      ; preds = %for.body.i.i
  %6 = ptrtoint ptr %nfunctions.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nfunctions.i.i, align 4
  %inc2.i.i = add i32 %7, 1
  store i32 %inc2.i.i, ptr %nfunctions.i.i, align 4
  %call.i11.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.013.i.i, ptr noundef null) #9
  %cmp.not5.i.i.i = icmp eq ptr %call.i11.i.i, null
  br i1 %cmp.not5.i.i.i, label %if.else.i.i.for.inc.i.i_crit_edge, label %if.else.i.i.for.body.i.i.i_crit_edge

if.else.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.else.i.i
  br label %for.body.i.i.i

if.else.i.i.for.inc.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.else.i.i.for.body.i.i.i_crit_edge
  %num.07.i.i.i = phi i32 [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %child.06.i.i.i = phi ptr [ %call1.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ], [ %call.i11.i.i, %if.else.i.i.for.body.i.i.i_crit_edge ]
  %inc.i.i.i = add i32 %num.07.i.i.i, 1
  %call1.i.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %child.013.i.i, ptr noundef nonnull %child.06.i.i.i) #9
  %cmp.not.i.i.i = icmp eq ptr %call1.i.i.i, null
  br i1 %cmp.not.i.i.i, label %for.body.i.i.i.for.inc.i.i_crit_edge, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.body.i.i.i.for.inc.i.i_crit_edge:             ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i.i.for.inc.i.i_crit_edge, %if.else.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %nbanks.sink17.i.i = phi ptr [ %nbanks.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %ngroups.i.i, %if.else.i.i.for.inc.i.i_crit_edge ], [ %ngroups.i.i, %for.body.i.i.i.for.inc.i.i_crit_edge ]
  %.sink16.i.i = phi i32 [ 1, %for.body.i.i.for.inc.i.i_crit_edge ], [ 0, %if.else.i.i.for.inc.i.i_crit_edge ], [ %inc.i.i.i, %for.body.i.i.i.for.inc.i.i_crit_edge ]
  %8 = ptrtoint ptr %nbanks.sink17.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbanks.sink17.i.i, align 4
  %inc.i.i = add i32 %9, %.sink16.i.i
  store i32 %inc.i.i, ptr %nbanks.sink17.i.i, align 4
  %call4.i.i = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %child.013.i.i) #9
  %cmp.not.i.i = icmp eq ptr %call4.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.st_pctl_dt_child_count.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.st_pctl_dt_child_count.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_child_count.exit.i

st_pctl_dt_child_count.exit.i:                    ; preds = %for.inc.i.i.st_pctl_dt_child_count.exit.i_crit_edge, %if.end8.st_pctl_dt_child_count.exit.i_crit_edge
  %nbanks.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 3
  %10 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbanks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.end.i

if.then.i:                                        ; preds = %st_pctl_dt_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i58 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef -22, ptr noundef nonnull @.str.7) #9
  br label %st_pctl_probe_dt.exit

do.end.i:                                         ; preds = %st_pctl_dt_child_count.exit.i
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %11) #12
  %nfunctions.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 5
  %12 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nfunctions.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %13) #12
  %ngroups.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 7
  %14 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ngroups.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %15) #12
  %16 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nfunctions.i, align 4
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 12) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %do.end.i.devm_kcalloc.exit.i_crit_edge, label %if.end.i.i.i, !prof !139

do.end.i.devm_kcalloc.exit.i_crit_edge:           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_kcalloc.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %20 = extractvalue { i32, i1 } %18, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %20, i32 noundef 3520) #9
  br label %devm_kcalloc.exit.i

devm_kcalloc.exit.i:                              ; preds = %if.end.i.i.i, %do.end.i.devm_kcalloc.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %call5.i.i.i, %if.end.i.i.i ], [ null, %do.end.i.devm_kcalloc.exit.i_crit_edge ]
  %functions.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 4
  %21 = ptrtoint ptr %functions.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %retval.0.i.i.i, ptr %functions.i, align 4
  %22 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ngroups.i, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 16) #9
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %devm_kcalloc.exit.i.devm_kcalloc.exit172.i_crit_edge, label %if.end.i.i170.i, !prof !139

devm_kcalloc.exit.i.devm_kcalloc.exit172.i_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_kcalloc.exit172.i

if.end.i.i170.i:                                  ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = extractvalue { i32, i1 } %24, 0
  %call5.i.i169.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %26, i32 noundef 3520) #9
  br label %devm_kcalloc.exit172.i

devm_kcalloc.exit172.i:                           ; preds = %if.end.i.i170.i, %devm_kcalloc.exit.i.devm_kcalloc.exit172.i_crit_edge
  %retval.0.i.i171.i = phi ptr [ %call5.i.i169.i, %if.end.i.i170.i ], [ null, %devm_kcalloc.exit.i.devm_kcalloc.exit172.i_crit_edge ]
  %groups.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 6
  %27 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %retval.0.i.i171.i, ptr %groups.i, align 4
  %28 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nbanks.i, align 4
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 488) #9
  %31 = extractvalue { i32, i1 } %30, 1
  br i1 %31, label %devm_kcalloc.exit172.i.devm_kcalloc.exit176.i_crit_edge, label %if.end.i.i174.i, !prof !139

devm_kcalloc.exit172.i.devm_kcalloc.exit176.i_crit_edge: ; preds = %devm_kcalloc.exit172.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_kcalloc.exit176.i

if.end.i.i174.i:                                  ; preds = %devm_kcalloc.exit172.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = extractvalue { i32, i1 } %30, 0
  %call5.i.i173.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %32, i32 noundef 3520) #9
  br label %devm_kcalloc.exit176.i

devm_kcalloc.exit176.i:                           ; preds = %if.end.i.i174.i, %devm_kcalloc.exit172.i.devm_kcalloc.exit176.i_crit_edge
  %retval.0.i.i175.i = phi ptr [ %call5.i.i173.i, %if.end.i.i174.i ], [ null, %devm_kcalloc.exit172.i.devm_kcalloc.exit176.i_crit_edge ]
  %banks.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 2
  %33 = ptrtoint ptr %banks.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %retval.0.i.i175.i, ptr %banks.i, align 4
  %34 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %functions.i, align 4
  %tobool16.not.i = icmp eq ptr %35, null
  br i1 %tobool16.not.i, label %devm_kcalloc.exit176.i.cleanup_crit_edge, label %lor.lhs.false.i

devm_kcalloc.exit176.i.cleanup_crit_edge:         ; preds = %devm_kcalloc.exit176.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %devm_kcalloc.exit176.i
  %36 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %groups.i, align 4
  %tobool18.not.i = icmp eq ptr %37, null
  %tobool21.not.i = icmp eq ptr %retval.0.i.i175.i, null
  %or.cond.i = select i1 %tobool18.not.i, i1 true, i1 %tobool21.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end23.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.i:                                       ; preds = %lor.lhs.false.i
  %call24.i = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %5, ptr noundef nonnull @.str.17) #9
  %regmap.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 8
  %38 = ptrtoint ptr %regmap.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call24.i, ptr %regmap.i, align 4
  %cmp.i.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.i, label %if.end31.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %call24.i to i32
  %call30.i = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %39, ptr noundef nonnull @.str.18) #9
  br label %st_pctl_probe_dt.exit

if.end31.i:                                       ; preds = %if.end23.i
  %call32.i = tail call ptr @of_match_node(ptr noundef nonnull @st_pctl_of_match, ptr noundef %5) #9
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call32.i, i32 0, i32 3
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data.i, align 4
  %data33.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 9
  %42 = ptrtoint ptr %data33.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %data33.i, align 4
  %call34.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp.i = icmp sgt i32 %call34.i, 0
  br i1 %cmp.i, label %if.then35.i, label %if.end31.i.if.end43.i_crit_edge

if.end31.i.if.end43.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

if.then35.i:                                      ; preds = %if.end31.i
  %call36.i = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #9
  %irqmux_base.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 10
  %43 = ptrtoint ptr %irqmux_base.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call36.i, ptr %irqmux_base.i, align 4
  %cmp.i177.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i177.i, label %if.then39.i, label %if.end42.i

if.then39.i:                                      ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %call36.i to i32
  br label %st_pctl_probe_dt.exit

if.end42.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call34.i, ptr noundef nonnull @st_gpio_irqmux_handler, ptr noundef %call.i57) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %if.end42.i, %if.end31.i.if.end43.i_crit_edge
  %45 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nbanks.i, align 4
  %mul.i = shl i32 %46, 3
  %npins.i = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 2
  %47 = ptrtoint ptr %npins.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %mul.i, ptr %npins.i, align 4
  %48 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul.i, i32 12) #9
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %if.end43.i.cleanup_crit_edge, label %devm_kcalloc.exit181.i, !prof !139

if.end43.i.cleanup_crit_edge:                     ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit181.i:                           ; preds = %if.end43.i
  %50 = extractvalue { i32, i1 } %48, 0
  %call5.i.i178.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %50, i32 noundef 3520) #9
  %tobool47.not.i = icmp eq ptr %call5.i.i178.i, null
  br i1 %tobool47.not.i, label %devm_kcalloc.exit181.i.cleanup_crit_edge, label %if.end49.i

devm_kcalloc.exit181.i.cleanup_crit_edge:         ; preds = %devm_kcalloc.exit181.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49.i:                                       ; preds = %devm_kcalloc.exit181.i
  %pins.i = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 1
  %51 = ptrtoint ptr %pins.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call5.i.i178.i, ptr %pins.i, align 4
  %call50.i = tail call ptr @of_get_next_child(ptr noundef %5, ptr noundef null) #9
  %cmp51.not280.i = icmp eq ptr %call50.i, null
  br i1 %cmp51.not280.i, label %if.end49.i.if.end13_crit_edge, label %for.body.lr.ph.i

if.end49.i.if.end13_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

for.body.lr.ph.i:                                 ; preds = %if.end49.i
  %irqmux_base.i.i = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc84.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.0290.i = phi ptr [ %call50.i, %for.body.lr.ph.i ], [ %call85.i, %for.inc84.i.for.body.i_crit_edge ]
  %pdesc.0288.i = phi ptr [ %call5.i.i178.i, %for.body.lr.ph.i ], [ %pdesc.3.i, %for.inc84.i.for.body.i_crit_edge ]
  %bank.0284.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %bank.2.i, %for.inc84.i.for.body.i_crit_edge ]
  %i.0283.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %i.1.i, %for.inc84.i.for.body.i_crit_edge ]
  %grp_index.0281.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %grp_index.4.i, %for.inc84.i.for.body.i_crit_edge ]
  %call.i182.i = call ptr @of_find_property(ptr noundef nonnull %child.0290.i, ptr noundef nonnull @.str.20, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i182.i, null
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then53.i

if.then53.i:                                      ; preds = %for.body.i
  %52 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %banks.i, align 4
  %arrayidx.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i
  %54 = ptrtoint ptr %call.i57 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %call.i57, align 4
  %call.i183.i = call i32 @of_alias_get_id(ptr noundef nonnull %child.0290.i, ptr noundef nonnull @.str.24) #9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i) #9
  %56 = call ptr @memset(ptr %res.i.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %irq_res.i.i) #9
  %57 = call ptr @memset(ptr %irq_res.i.i, i32 255, i32 32)
  %call3.i.i = call i32 @of_address_to_resource(ptr noundef nonnull %child.0290.i, i32 noundef 0, ptr noundef nonnull %res.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then53.i.st_gpiolib_register_bank.exit.thread.i_crit_edge

if.then53.i.st_gpiolib_register_bank.exit.thread.i_crit_edge: ; preds = %if.then53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_gpiolib_register_bank.exit.thread.i

if.end.i.i:                                       ; preds = %if.then53.i
  %call4.i184.i = call ptr @devm_ioremap_resource(ptr noundef %55, ptr noundef nonnull %res.i.i) #9
  %base.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 2
  %58 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call4.i184.i, ptr %base.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call4.i184.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then7.i.i, label %if.end10.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %call4.i184.i to i32
  br label %st_gpiolib_register_bank.exit.i

if.end10.i.i:                                     ; preds = %if.end.i.i
  %60 = call ptr @memcpy(ptr %arrayidx.i.i, ptr @st_gpio_template, i32 348)
  %mul.i.i = shl i32 %call.i183.i, 3
  %base12.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i.i, i32 0, i32 19
  %61 = ptrtoint ptr %base12.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul.i.i, ptr %base12.i.i, align 4
  %ngpio.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i.i, i32 0, i32 20
  %62 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 8, ptr %ngpio.i.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i.i, i32 0, i32 39
  %63 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %child.0290.i, ptr %of_node.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i.i, i32 0, i32 2
  %64 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %55, ptr %parent.i.i, align 4
  %lock.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 5
  call void @__raw_spin_lock_init(ptr noundef %lock.i.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @st_gpiolib_register_bank.__key, i16 noundef signext 3) #9
  %name.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 1, i32 1
  %call17.i.i = call i32 @of_property_read_string(ptr noundef nonnull %child.0290.i, ptr noundef nonnull @.str.26, ptr noundef %name.i.i) #9
  %65 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name.i.i, align 4
  %67 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %arrayidx.i.i, align 4
  %id.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 1, i32 2
  %68 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call.i183.i, ptr %id.i.i, align 4
  %base22.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 1, i32 3
  %69 = ptrtoint ptr %base22.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %mul.i.i, ptr %base22.i.i, align 4
  %pin_base.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 1, i32 4
  %70 = ptrtoint ptr %pin_base.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul.i.i, ptr %pin_base.i.i, align 4
  %71 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %ngpio.i.i, align 4
  %conv.i.i = zext i16 %72 to i32
  %npins.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 1, i32 5
  %73 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %conv.i.i, ptr %npins.i.i, align 4
  %gc.i.i = getelementptr %struct.st_gpio_bank, ptr %53, i32 %bank.0284.i, i32 1, i32 7
  %74 = ptrtoint ptr %gc.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx.i.i, ptr %gc.i.i, align 4
  %call26.i.i = call i32 @of_irq_to_resource(ptr noundef nonnull %child.0290.i, i32 noundef 0, ptr noundef nonnull %irq_res.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %cmp.i185.i = icmp sgt i32 %call26.i.i, 0
  br i1 %cmp.i185.i, label %if.then28.i.i, label %if.end10.i.i.skip_irq.i.i_crit_edge

if.end10.i.i.skip_irq.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_irq.i.i

if.then28.i.i:                                    ; preds = %if.end10.i.i
  %75 = ptrtoint ptr %irq_res.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %irq_res.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp29.i.i = icmp slt i32 %76, 1
  br i1 %cmp29.i.i, label %do.end34.i.i, label %if.end35.i.i

do.end34.i.i:                                     ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.27, ptr noundef nonnull %child.0290.i) #12
  br label %skip_irq.i.i

if.end35.i.i:                                     ; preds = %if.then28.i.i
  %77 = ptrtoint ptr %irqmux_base.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %irqmux_base.i.i, align 4
  %tobool36.not.i.i = icmp eq ptr %78, null
  br i1 %tobool36.not.i.i, label %do.end40.i.i, label %if.end41.i.i

do.end40.i.i:                                     ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.30, ptr noundef nonnull %child.0290.i) #12
  br label %skip_irq.i.i

if.end41.i.i:                                     ; preds = %if.end35.i.i
  %irq.i.i = getelementptr inbounds %struct.gpio_chip, ptr %arrayidx.i.i, i32 0, i32 37
  %79 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @st_gpio_irqchip, ptr %irq.i.i, align 4
  %parent_handler.i.i = getelementptr inbounds %struct.gpio_irq_chip, ptr %irq.i.i, i32 0, i32 13
  %80 = ptrtoint ptr %parent_handler.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @st_gpio_irq_handler, ptr %parent_handler.i.i, align 4
  %num_parents.i.i = getelementptr inbounds %struct.gpio_irq_chip, ptr %irq.i.i, i32 0, i32 15
  %81 = ptrtoint ptr %num_parents.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %num_parents.i.i, align 4
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %55, i32 noundef 4, i32 noundef 3520) #9
  %parents.i.i = getelementptr inbounds %struct.gpio_irq_chip, ptr %irq.i.i, i32 0, i32 16
  %82 = ptrtoint ptr %parents.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call5.i.i.i.i, ptr %parents.i.i, align 4
  %tobool45.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool45.not.i.i, label %if.end41.i.i.st_gpiolib_register_bank.exit.thread.i_crit_edge, label %if.end47.i.i

if.end41.i.i.st_gpiolib_register_bank.exit.thread.i_crit_edge: ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_gpiolib_register_bank.exit.thread.i

if.end47.i.i:                                     ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %call5.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %76, ptr %call5.i.i.i.i, align 4
  %default_type.i.i = getelementptr inbounds %struct.gpio_irq_chip, ptr %irq.i.i, i32 0, i32 10
  %84 = ptrtoint ptr %default_type.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %default_type.i.i, align 4
  %handler.i.i = getelementptr inbounds %struct.gpio_irq_chip, ptr %irq.i.i, i32 0, i32 9
  %85 = ptrtoint ptr %handler.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @handle_simple_irq, ptr %handler.i.i, align 4
  br label %skip_irq.i.i

skip_irq.i.i:                                     ; preds = %if.end47.i.i, %do.end40.i.i, %do.end34.i.i, %if.end10.i.i.skip_irq.i.i_crit_edge
  %call53.i.i = call i32 @gpiochip_add_data_with_key(ptr noundef %arrayidx.i.i, ptr noundef %arrayidx.i.i, ptr noundef nonnull @st_gpiolib_register_bank.lock_key, ptr noundef nonnull @st_gpiolib_register_bank.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.i)
  %tobool54.not.i.i = icmp eq i32 %call53.i.i, 0
  br i1 %tobool54.not.i.i, label %st_gpiolib_register_bank.exit.thread212.i, label %if.then55.i.i

if.then55.i.i:                                    ; preds = %skip_irq.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call56.i.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %55, i32 noundef %call53.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i183.i) #9
  br label %st_gpiolib_register_bank.exit.i

st_gpiolib_register_bank.exit.thread212.i:        ; preds = %skip_irq.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %name.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %55, ptr noundef nonnull @.str.34, ptr noundef %87) #12
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irq_res.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #9
  br label %if.end57.i

st_gpiolib_register_bank.exit.thread.i:           ; preds = %if.end41.i.i.st_gpiolib_register_bank.exit.thread.i_crit_edge, %if.then53.i.st_gpiolib_register_bank.exit.thread.i_crit_edge
  %retval.1.i.ph.i = phi i32 [ -12, %if.end41.i.i.st_gpiolib_register_bank.exit.thread.i_crit_edge ], [ -19, %if.then53.i.st_gpiolib_register_bank.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irq_res.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #9
  br label %if.then56.i

st_gpiolib_register_bank.exit.i:                  ; preds = %if.then55.i.i, %if.then7.i.i
  %retval.1.i.i = phi i32 [ %59, %if.then7.i.i ], [ %call56.i.i, %if.then55.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %irq_res.i.i) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.1.i.i)
  %tobool55.not.i = icmp eq i32 %retval.1.i.i, 0
  br i1 %tobool55.not.i, label %st_gpiolib_register_bank.exit.i.if.end57.i_crit_edge, label %st_gpiolib_register_bank.exit.i.if.then56.i_crit_edge

st_gpiolib_register_bank.exit.i.if.then56.i_crit_edge: ; preds = %st_gpiolib_register_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then56.i

st_gpiolib_register_bank.exit.i.if.end57.i_crit_edge: ; preds = %st_gpiolib_register_bank.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

if.then56.i:                                      ; preds = %st_gpiolib_register_bank.exit.i.if.then56.i_crit_edge, %st_gpiolib_register_bank.exit.thread.i
  %retval.1.i211.i = phi i32 [ %retval.1.i.ph.i, %st_gpiolib_register_bank.exit.thread.i ], [ %retval.1.i.i, %st_gpiolib_register_bank.exit.i.if.then56.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.0290.i) #9
  br label %cleanup

if.end57.i:                                       ; preds = %st_gpiolib_register_bank.exit.i.if.end57.i_crit_edge, %st_gpiolib_register_bank.exit.thread212.i
  %88 = ptrtoint ptr %banks.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %banks.i, align 4
  %pin_base.i = getelementptr %struct.st_gpio_bank, ptr %89, i32 %bank.0284.i, i32 1, i32 4
  %90 = ptrtoint ptr %pin_base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pin_base.i, align 4
  %name.i = getelementptr %struct.st_gpio_bank, ptr %89, i32 %bank.0284.i, i32 1, i32 1
  %92 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %name.i, align 4
  %call62.i = call ptr @devm_kasprintf_strarray(ptr noundef %dev1, ptr noundef %93, i32 noundef 8) #9
  %cmp.i186.i = icmp ugt ptr %call62.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186.i, label %if.then64.i, label %for.body69.preheader.i

for.body69.preheader.i:                           ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %pdesc.0288.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %91, ptr %pdesc.0288.i, align 4
  %95 = ptrtoint ptr %call62.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %call62.i, align 4
  %name71.i = getelementptr inbounds %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 0, i32 1
  %97 = ptrtoint ptr %name71.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %96, ptr %name71.i, align 4
  %incdec.ptr.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 1
  %inc72.i = add i32 %91, 1
  %98 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %inc72.i, ptr %incdec.ptr.i, align 4
  %arrayidx70.1.i = getelementptr ptr, ptr %call62.i, i32 1
  %99 = ptrtoint ptr %arrayidx70.1.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx70.1.i, align 4
  %name71.1.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 1, i32 1
  %101 = ptrtoint ptr %name71.1.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %100, ptr %name71.1.i, align 4
  %incdec.ptr.1.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 2
  %inc72.1.i = add i32 %91, 2
  %102 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %inc72.1.i, ptr %incdec.ptr.1.i, align 4
  %arrayidx70.2.i = getelementptr ptr, ptr %call62.i, i32 2
  %103 = ptrtoint ptr %arrayidx70.2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx70.2.i, align 4
  %name71.2.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 2, i32 1
  %105 = ptrtoint ptr %name71.2.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %104, ptr %name71.2.i, align 4
  %incdec.ptr.2.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 3
  %inc72.2.i = add i32 %91, 3
  %106 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %inc72.2.i, ptr %incdec.ptr.2.i, align 4
  %arrayidx70.3.i = getelementptr ptr, ptr %call62.i, i32 3
  %107 = ptrtoint ptr %arrayidx70.3.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %arrayidx70.3.i, align 4
  %name71.3.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 3, i32 1
  %109 = ptrtoint ptr %name71.3.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %name71.3.i, align 4
  %incdec.ptr.3.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 4
  %inc72.3.i = add i32 %91, 4
  %110 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %inc72.3.i, ptr %incdec.ptr.3.i, align 4
  %arrayidx70.4.i = getelementptr ptr, ptr %call62.i, i32 4
  %111 = ptrtoint ptr %arrayidx70.4.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx70.4.i, align 4
  %name71.4.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 4, i32 1
  %113 = ptrtoint ptr %name71.4.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %name71.4.i, align 4
  %incdec.ptr.4.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 5
  %inc72.4.i = add i32 %91, 5
  %114 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %inc72.4.i, ptr %incdec.ptr.4.i, align 4
  %arrayidx70.5.i = getelementptr ptr, ptr %call62.i, i32 5
  %115 = ptrtoint ptr %arrayidx70.5.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx70.5.i, align 4
  %name71.5.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 5, i32 1
  %117 = ptrtoint ptr %name71.5.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %name71.5.i, align 4
  %incdec.ptr.5.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 6
  %inc72.5.i = add i32 %91, 6
  %118 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %inc72.5.i, ptr %incdec.ptr.5.i, align 4
  %arrayidx70.6.i = getelementptr ptr, ptr %call62.i, i32 6
  %119 = ptrtoint ptr %arrayidx70.6.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx70.6.i, align 4
  %name71.6.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 6, i32 1
  %121 = ptrtoint ptr %name71.6.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %name71.6.i, align 4
  %incdec.ptr.6.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 7
  %inc72.6.i = add i32 %91, 7
  %122 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %inc72.6.i, ptr %incdec.ptr.6.i, align 4
  %arrayidx70.7.i = getelementptr ptr, ptr %call62.i, i32 7
  %123 = ptrtoint ptr %arrayidx70.7.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %arrayidx70.7.i, align 4
  %name71.7.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 7, i32 1
  %125 = ptrtoint ptr %name71.7.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %124, ptr %name71.7.i, align 4
  %incdec.ptr.7.i = getelementptr %struct.pinctrl_pin_desc, ptr %pdesc.0288.i, i32 8
  call fastcc void @st_parse_syscfgs(ptr noundef %call.i57, i32 noundef %bank.0284.i, ptr noundef nonnull %child.0290.i) #9
  %inc73.i = add i32 %bank.0284.i, 1
  br label %for.inc84.i

if.then64.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %child.0290.i) #9
  %126 = ptrtoint ptr %call62.i to i32
  br label %st_pctl_probe_dt.exit

if.else.i:                                        ; preds = %for.body.i
  %inc75.i = add i32 %i.0283.i, 1
  %127 = ptrtoint ptr %call.i57 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %call.i57, align 4
  %129 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %functions.i, align 4
  %arrayidx.i187.i = getelementptr %struct.st_pmx_func, ptr %130, i32 %i.0283.i
  %131 = ptrtoint ptr %child.0290.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %child.0290.i, align 4
  %133 = ptrtoint ptr %arrayidx.i187.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %132, ptr %arrayidx.i187.i, align 4
  %call.i.i188.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0290.i, ptr noundef null) #9
  %cmp.not5.i.i189.i = icmp eq ptr %call.i.i188.i, null
  br i1 %cmp.not5.i.i189.i, label %of_get_child_count.exit.thread.i.i, label %if.else.i.for.body.i.i195.i_crit_edge

if.else.i.for.body.i.i195.i_crit_edge:            ; preds = %if.else.i
  br label %for.body.i.i195.i

of_get_child_count.exit.thread.i.i:               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %ngroups58.i.i = getelementptr %struct.st_pmx_func, ptr %130, i32 %i.0283.i, i32 2
  %134 = ptrtoint ptr %ngroups58.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %ngroups58.i.i, align 4
  br label %st_pctl_parse_functions.exit.i

for.body.i.i195.i:                                ; preds = %for.body.i.i195.i.for.body.i.i195.i_crit_edge, %if.else.i.for.body.i.i195.i_crit_edge
  %num.07.i.i190.i = phi i32 [ %inc.i.i192.i, %for.body.i.i195.i.for.body.i.i195.i_crit_edge ], [ 0, %if.else.i.for.body.i.i195.i_crit_edge ]
  %child.06.i.i191.i = phi ptr [ %call1.i.i193.i, %for.body.i.i195.i.for.body.i.i195.i_crit_edge ], [ %call.i.i188.i, %if.else.i.for.body.i.i195.i_crit_edge ]
  %inc.i.i192.i = add i32 %num.07.i.i190.i, 1
  %call1.i.i193.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0290.i, ptr noundef nonnull %child.06.i.i191.i) #9
  %cmp.not.i.i194.i = icmp eq ptr %call1.i.i193.i, null
  br i1 %cmp.not.i.i194.i, label %of_get_child_count.exit.i.i, label %for.body.i.i195.i.for.body.i.i195.i_crit_edge

for.body.i.i195.i.for.body.i.i195.i_crit_edge:    ; preds = %for.body.i.i195.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i195.i

of_get_child_count.exit.i.i:                      ; preds = %for.body.i.i195.i
  %ngroups.i196.i = getelementptr %struct.st_pmx_func, ptr %130, i32 %i.0283.i, i32 2
  %135 = ptrtoint ptr %ngroups.i196.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %inc.i.i192.i, ptr %ngroups.i196.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i.i192.i)
  %cmp.i197.i = icmp eq i32 %inc.i.i192.i, 0
  br i1 %cmp.i197.i, label %of_get_child_count.exit.i.i.st_pctl_parse_functions.exit.i_crit_edge, label %if.end.i199.i

of_get_child_count.exit.i.i.st_pctl_parse_functions.exit.i_crit_edge: ; preds = %of_get_child_count.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_parse_functions.exit.i

if.end.i199.i:                                    ; preds = %of_get_child_count.exit.i.i
  %136 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i.i192.i, i32 4) #9
  %137 = extractvalue { i32, i1 } %136, 1
  br i1 %137, label %devm_kcalloc.exit.thread.i.i, label %devm_kcalloc.exit.i.i, !prof !139

devm_kcalloc.exit.thread.i.i:                     ; preds = %if.end.i199.i
  call void @__sanitizer_cov_trace_pc() #11
  %groups61.i.i = getelementptr %struct.st_pmx_func, ptr %130, i32 %i.0283.i, i32 1
  %138 = ptrtoint ptr %groups61.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr null, ptr %groups61.i.i, align 4
  br label %do.end81.i

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i199.i
  %139 = extractvalue { i32, i1 } %136, 0
  %call5.i.i.i200.i = call noalias ptr @devm_kmalloc(ptr noundef %128, i32 noundef %139, i32 noundef 3520) #9
  %groups.i.i = getelementptr %struct.st_pmx_func, ptr %130, i32 %i.0283.i, i32 1
  %140 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call5.i.i.i200.i, ptr %groups.i.i, align 4
  %tobool.not.i201.i = icmp eq ptr %call5.i.i.i200.i, null
  br i1 %tobool.not.i201.i, label %devm_kcalloc.exit.i.i.do.end81.i_crit_edge, label %if.end9.i.i

devm_kcalloc.exit.i.i.do.end81.i_crit_edge:       ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81.i

if.end9.i.i:                                      ; preds = %devm_kcalloc.exit.i.i
  %call10.i.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0290.i, ptr noundef null) #9
  %cmp11.not86.i.i = icmp eq ptr %call10.i.i, null
  br i1 %cmp11.not86.i.i, label %if.end9.i.i.st_pctl_parse_functions.exit.thread223.i_crit_edge, label %if.end9.i.i.for.body.i203.i_crit_edge

if.end9.i.i.for.body.i203.i_crit_edge:            ; preds = %if.end9.i.i
  br label %for.body.i203.i

if.end9.i.i.st_pctl_parse_functions.exit.thread223.i_crit_edge: ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_parse_functions.exit.thread223.i

for.body.i203.i:                                  ; preds = %for.inc.i206.i.for.body.i203.i_crit_edge, %if.end9.i.i.for.body.i203.i_crit_edge
  %grp_index.1.i = phi i32 [ %add.i.i, %for.inc.i206.i.for.body.i203.i_crit_edge ], [ %grp_index.0281.i, %if.end9.i.i.for.body.i203.i_crit_edge ]
  %i.088.i.i = phi i32 [ %inc.i205.i, %for.inc.i206.i.for.body.i203.i_crit_edge ], [ 0, %if.end9.i.i.for.body.i203.i_crit_edge ]
  %child.087.i.i = phi ptr [ %call21.i.i, %for.inc.i206.i.for.body.i203.i_crit_edge ], [ %call10.i.i, %if.end9.i.i.for.body.i203.i_crit_edge ]
  %141 = ptrtoint ptr %child.087.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %child.087.i.i, align 4
  %143 = ptrtoint ptr %groups.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %groups.i.i, align 4
  %arrayidx14.i.i = getelementptr ptr, ptr %144, i32 %i.088.i.i
  %145 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %142, ptr %arrayidx14.i.i, align 4
  %146 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %groups.i, align 4
  %arrayidx16.i.i = getelementptr %struct.st_pctl_group, ptr %147, i32 %grp_index.1.i
  %add.i.i = add i32 %grp_index.1.i, 1
  %148 = ptrtoint ptr %call.i57 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %call.i57, align 4
  %call.i53.i.i = call ptr @of_get_child_by_name(ptr noundef nonnull %child.087.i.i, ptr noundef nonnull @.str.41) #9
  %tobool.not.i.i.i = icmp eq ptr %call.i53.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i203.i.if.then19.i.i_crit_edge, label %if.end.i.i204.i

for.body.i203.i.if.then19.i.i_crit_edge:          ; preds = %for.body.i203.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then19.i.i

if.end.i.i204.i:                                  ; preds = %for.body.i203.i
  %properties.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i53.i.i, i32 0, i32 4
  %150 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %pp.013.i.i.i = load ptr, ptr %properties.i.i.i, align 4
  %cmp.not14.i.i.i = icmp eq ptr %pp.013.i.i.i, null
  br i1 %cmp.not14.i.i.i, label %if.end.i.i204.i.for.end.i.i.i_crit_edge, label %if.end.i.i204.i.for.body.i54.i.i_crit_edge

if.end.i.i204.i.for.body.i54.i.i_crit_edge:       ; preds = %if.end.i.i204.i
  br label %for.body.i54.i.i

if.end.i.i204.i.for.end.i.i.i_crit_edge:          ; preds = %if.end.i.i204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.body.i54.i.i:                                 ; preds = %for.inc.i.i.i.for.body.i54.i.i_crit_edge, %if.end.i.i204.i.for.body.i54.i.i_crit_edge
  %pp.016.i.i.i = phi ptr [ %pp.0.i.i.i, %for.inc.i.i.i.for.body.i54.i.i_crit_edge ], [ %pp.013.i.i.i, %if.end.i.i204.i.for.body.i54.i.i_crit_edge ]
  %npins.015.i.i.i = phi i32 [ %npins.1.i.i.i, %for.inc.i.i.i.for.body.i54.i.i_crit_edge ], [ 0, %if.end.i.i204.i.for.body.i54.i.i_crit_edge ]
  %151 = ptrtoint ptr %pp.016.i.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %pp.016.i.i.i, align 4
  %call2.i.i.i = call i32 @strcmp(ptr noundef %152, ptr noundef nonnull dereferenceable(5) @.str.42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call2.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %for.body.i54.i.i.for.inc.i.i.i_crit_edge, label %if.end5.i.i.i

for.body.i54.i.i.for.inc.i.i.i_crit_edge:         ; preds = %for.body.i54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i.i

if.end5.i.i.i:                                    ; preds = %for.body.i54.i.i
  %length.i.i.i = getelementptr inbounds %struct.property, ptr %pp.016.i.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %length.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %length.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %154)
  %cmp6.i.i.i = icmp ugt i32 %154, 15
  br i1 %cmp6.i.i.i, label %if.then7.i.i.i, label %do.end.i.i.i

if.then7.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i55.i.i = add i32 %npins.015.i.i.i, 1
  br label %for.inc.i.i.i

do.end.i.i.i:                                     ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull %child.087.i.i) #12
  br label %st_pctl_dt_parse_groups.exit.thread66.i.i

for.inc.i.i.i:                                    ; preds = %if.then7.i.i.i, %for.body.i54.i.i.for.inc.i.i.i_crit_edge
  %npins.1.i.i.i = phi i32 [ %inc.i55.i.i, %if.then7.i.i.i ], [ %npins.015.i.i.i, %for.body.i54.i.i.for.inc.i.i.i_crit_edge ]
  %next.i.i.i = getelementptr inbounds %struct.property, ptr %pp.016.i.i.i, i32 0, i32 3
  %155 = ptrtoint ptr %next.i.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %pp.0.i.i.i = load ptr, ptr %next.i.i.i, align 4
  %cmp.not.i56.i.i = icmp eq ptr %pp.0.i.i.i, null
  br i1 %cmp.not.i56.i.i, label %for.inc.i.i.i.for.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i54.i.i_crit_edge

for.inc.i.i.i.for.body.i54.i.i_crit_edge:         ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i54.i.i

for.inc.i.i.i.for.end.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i.i

for.end.i.i.i:                                    ; preds = %for.inc.i.i.i.for.end.i.i.i_crit_edge, %if.end.i.i204.i.for.end.i.i.i_crit_edge
  %npins.0.lcssa.i.i.i = phi i32 [ 0, %if.end.i.i204.i.for.end.i.i.i_crit_edge ], [ %npins.1.i.i.i, %for.inc.i.i.i.for.end.i.i.i_crit_edge ]
  %npins10.i.i.i = getelementptr %struct.st_pctl_group, ptr %147, i32 %grp_index.1.i, i32 2
  %156 = ptrtoint ptr %npins10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %npins.0.lcssa.i.i.i, ptr %npins10.i.i.i, align 4
  %157 = ptrtoint ptr %child.087.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %child.087.i.i, align 4
  %159 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %158, ptr %arrayidx16.i.i, align 4
  %160 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %npins.0.lcssa.i.i.i, i32 4) #9
  %161 = extractvalue { i32, i1 } %160, 1
  br i1 %161, label %for.end.i.i.i.devm_kcalloc.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i, !prof !139

for.end.i.i.i.devm_kcalloc.exit.i.i.i_crit_edge:  ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_kcalloc.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %162 = extractvalue { i32, i1 } %160, 0
  %call5.i.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %149, i32 noundef %162, i32 noundef 3520) #9
  br label %devm_kcalloc.exit.i.i.i

devm_kcalloc.exit.i.i.i:                          ; preds = %if.end.i.i.i.i.i, %for.end.i.i.i.devm_kcalloc.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %call5.i.i.i.i.i, %if.end.i.i.i.i.i ], [ null, %for.end.i.i.i.devm_kcalloc.exit.i.i.i_crit_edge ]
  %pins14.i.i.i = getelementptr %struct.st_pctl_group, ptr %147, i32 %grp_index.1.i, i32 1
  %163 = ptrtoint ptr %pins14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %retval.0.i.i.i.i.i, ptr %pins14.i.i.i, align 4
  %164 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %npins.0.lcssa.i.i.i, i32 16) #9
  %165 = extractvalue { i32, i1 } %164, 1
  br i1 %165, label %devm_kcalloc.exit6.thread.i.i.i, label %devm_kcalloc.exit6.i.i.i, !prof !139

devm_kcalloc.exit6.thread.i.i.i:                  ; preds = %devm_kcalloc.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %pin_conf8.i.i.i = getelementptr %struct.st_pctl_group, ptr %147, i32 %grp_index.1.i, i32 3
  %166 = ptrtoint ptr %pin_conf8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %pin_conf8.i.i.i, align 4
  br label %st_pctl_dt_parse_groups.exit.thread66.i.i

devm_kcalloc.exit6.i.i.i:                         ; preds = %devm_kcalloc.exit.i.i.i
  %167 = extractvalue { i32, i1 } %164, 0
  %call5.i.i3.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %149, i32 noundef %167, i32 noundef 3520) #9
  %pin_conf.i.i.i = getelementptr %struct.st_pctl_group, ptr %147, i32 %grp_index.1.i, i32 3
  %168 = ptrtoint ptr %pin_conf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call5.i.i3.i.i.i, ptr %pin_conf.i.i.i, align 4
  %169 = ptrtoint ptr %pins14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %pins14.i.i.i, align 4
  %tobool17.not.i.i.i = icmp eq ptr %170, null
  %tobool19.not.i.i.i = icmp eq ptr %call5.i.i3.i.i.i, null
  %or.cond.i.i.i = select i1 %tobool17.not.i.i.i, i1 true, i1 %tobool19.not.i.i.i
  br i1 %or.cond.i.i.i, label %devm_kcalloc.exit6.i.i.i.st_pctl_dt_parse_groups.exit.thread66.i.i_crit_edge, label %for.cond23.preheader.i.i.i

devm_kcalloc.exit6.i.i.i.st_pctl_dt_parse_groups.exit.thread66.i.i_crit_edge: ; preds = %devm_kcalloc.exit6.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_parse_groups.exit.thread66.i.i

for.cond23.preheader.i.i.i:                       ; preds = %devm_kcalloc.exit6.i.i.i
  %171 = ptrtoint ptr %properties.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %pp.117.i.i.i = load ptr, ptr %properties.i.i.i, align 4
  %cmp24.not18.i.i.i = icmp eq ptr %pp.117.i.i.i, null
  br i1 %cmp24.not18.i.i.i, label %for.cond23.preheader.i.i.i.for.inc.i206.i_crit_edge, label %for.cond23.preheader.i.i.i.for.body25.i.i.i_crit_edge

for.cond23.preheader.i.i.i.for.body25.i.i.i_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  br label %for.body25.i.i.i

for.cond23.preheader.i.i.i.for.inc.i206.i_crit_edge: ; preds = %for.cond23.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i206.i

for.body25.i.i.i:                                 ; preds = %for.inc68.i.i.i.for.body25.i.i.i_crit_edge, %for.cond23.preheader.i.i.i.for.body25.i.i.i_crit_edge
  %pp.120.i.i.i = phi ptr [ %pp.1.i.i.i, %for.inc68.i.i.i.for.body25.i.i.i_crit_edge ], [ %pp.117.i.i.i, %for.cond23.preheader.i.i.i.for.body25.i.i.i_crit_edge ]
  %i.019.i.i.i = phi i32 [ %i.1.i.i.i, %for.inc68.i.i.i.for.body25.i.i.i_crit_edge ], [ 0, %for.cond23.preheader.i.i.i.for.body25.i.i.i_crit_edge ]
  %172 = ptrtoint ptr %pp.120.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pp.120.i.i.i, align 4
  %call27.i.i.i = call i32 @strcmp(ptr noundef %173, ptr noundef nonnull dereferenceable(5) @.str.42) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.i.i)
  %tobool28.not.i.i.i = icmp eq i32 %call27.i.i.i, 0
  br i1 %tobool28.not.i.i.i, label %for.body25.i.i.i.for.inc68.i.i.i_crit_edge, label %if.end30.i.i.i

for.body25.i.i.i.for.inc68.i.i.i_crit_edge:       ; preds = %for.body25.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc68.i.i.i

if.end30.i.i.i:                                   ; preds = %for.body25.i.i.i
  %length31.i.i.i = getelementptr inbounds %struct.property, ptr %pp.120.i.i.i, i32 0, i32 1
  %174 = ptrtoint ptr %length31.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %length31.i.i.i, align 4
  %value.i.i.i = getelementptr inbounds %struct.property, ptr %pp.120.i.i.i, i32 0, i32 2
  %176 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %value.i.i.i, align 4
  %178 = ptrtoint ptr %pin_conf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %pin_conf.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.st_pinconf, ptr %179, i32 %i.019.i.i.i
  %incdec.ptr35.i.i.i = getelementptr i32, ptr %177, i32 2
  %call.i.i.i.i = call i32 @of_get_named_gpio_flags(ptr noundef nonnull %call.i53.i.i, ptr noundef %173, i32 noundef 0, ptr noundef null) #9
  %180 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %call.i.i.i.i, ptr %arrayidx.i.i.i, align 4
  %181 = ptrtoint ptr %pp.120.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %pp.120.i.i.i, align 4
  %name40.i.i.i = getelementptr %struct.st_pinconf, ptr %179, i32 %i.019.i.i.i, i32 1
  %183 = ptrtoint ptr %name40.i.i.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr %182, ptr %name40.i.i.i, align 4
  %184 = ptrtoint ptr %pins14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pins14.i.i.i, align 4
  %arrayidx43.i.i.i = getelementptr i32, ptr %185, i32 %i.019.i.i.i
  %186 = ptrtoint ptr %arrayidx43.i.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %call.i.i.i.i, ptr %arrayidx43.i.i.i, align 4
  %incdec.ptr44.i.i.i = getelementptr i32, ptr %177, i32 3
  %187 = ptrtoint ptr %incdec.ptr35.i.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %incdec.ptr35.i.i.i, align 4
  %altfunc.i.i.i = getelementptr %struct.st_pinconf, ptr %179, i32 %i.019.i.i.i, i32 3
  %189 = ptrtoint ptr %altfunc.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %188, ptr %altfunc.i.i.i, align 4
  %config.i.i.i = getelementptr %struct.st_pinconf, ptr %179, i32 %i.019.i.i.i, i32 2
  %190 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %config.i.i.i, align 4
  %191 = ptrtoint ptr %incdec.ptr44.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %incdec.ptr44.i.i.i, align 4
  store i32 %192, ptr %config.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %175)
  %cmp49.i.i.i = icmp ugt i32 %175, 23
  br i1 %cmp49.i.i.i, label %if.then50.i.i.i, label %if.end30.i.i.i.if.end66.i.i.i_crit_edge

if.end30.i.i.i.if.end66.i.i.i_crit_edge:          ; preds = %if.end30.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

if.then50.i.i.i:                                  ; preds = %if.end30.i.i.i
  %incdec.ptr46.i.i.i = getelementptr i32, ptr %177, i32 4
  %incdec.ptr51.i.i.i = getelementptr i32, ptr %177, i32 5
  %193 = ptrtoint ptr %incdec.ptr46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %incdec.ptr46.i.i.i, align 4
  %or54.i.i.i = or i32 %194, %192
  %195 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %or54.i.i.i, ptr %config.i.i.i, align 4
  %196 = ptrtoint ptr %incdec.ptr51.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %incdec.ptr51.i.i.i, align 4
  %or58.i.i.i = or i32 %197, %or54.i.i.i
  store i32 %or58.i.i.i, ptr %config.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %175)
  %cmp59.i.i.i = icmp ugt i32 %175, 27
  br i1 %cmp59.i.i.i, label %if.then60.i.i.i, label %if.then50.i.i.i.if.end66.i.i.i_crit_edge

if.then50.i.i.i.if.end66.i.i.i_crit_edge:         ; preds = %if.then50.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66.i.i.i

if.then60.i.i.i:                                  ; preds = %if.then50.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr55.i.i.i = getelementptr i32, ptr %177, i32 6
  %198 = ptrtoint ptr %incdec.ptr55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %incdec.ptr55.i.i.i, align 4
  %or64.i.i.i = or i32 %199, %or58.i.i.i
  %200 = ptrtoint ptr %config.i.i.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %or64.i.i.i, ptr %config.i.i.i, align 4
  br label %if.end66.i.i.i

if.end66.i.i.i:                                   ; preds = %if.then60.i.i.i, %if.then50.i.i.i.if.end66.i.i.i_crit_edge, %if.end30.i.i.i.if.end66.i.i.i_crit_edge
  %inc67.i.i.i = add i32 %i.019.i.i.i, 1
  br label %for.inc68.i.i.i

for.inc68.i.i.i:                                  ; preds = %if.end66.i.i.i, %for.body25.i.i.i.for.inc68.i.i.i_crit_edge
  %i.1.i.i.i = phi i32 [ %inc67.i.i.i, %if.end66.i.i.i ], [ %i.019.i.i.i, %for.body25.i.i.i.for.inc68.i.i.i_crit_edge ]
  %next69.i.i.i = getelementptr inbounds %struct.property, ptr %pp.120.i.i.i, i32 0, i32 3
  %201 = ptrtoint ptr %next69.i.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %pp.1.i.i.i = load ptr, ptr %next69.i.i.i, align 4
  %cmp24.not.i.i.i = icmp eq ptr %pp.1.i.i.i, null
  br i1 %cmp24.not.i.i.i, label %for.inc68.i.i.i.for.inc.i206.i_crit_edge, label %for.inc68.i.i.i.for.body25.i.i.i_crit_edge

for.inc68.i.i.i.for.body25.i.i.i_crit_edge:       ; preds = %for.inc68.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25.i.i.i

for.inc68.i.i.i.for.inc.i206.i_crit_edge:         ; preds = %for.inc68.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i206.i

st_pctl_dt_parse_groups.exit.thread66.i.i:        ; preds = %devm_kcalloc.exit6.i.i.i.st_pctl_dt_parse_groups.exit.thread66.i.i_crit_edge, %devm_kcalloc.exit6.thread.i.i.i, %do.end.i.i.i
  %ret.0.i.ph.i.i = phi i32 [ -12, %devm_kcalloc.exit6.thread.i.i.i ], [ -22, %do.end.i.i.i ], [ -12, %devm_kcalloc.exit6.i.i.i.st_pctl_dt_parse_groups.exit.thread66.i.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i53.i.i) #9
  br label %if.then19.i.i

if.then19.i.i:                                    ; preds = %st_pctl_dt_parse_groups.exit.thread66.i.i, %for.body.i203.i.if.then19.i.i_crit_edge
  %retval.0.i65.i.i = phi i32 [ %ret.0.i.ph.i.i, %st_pctl_dt_parse_groups.exit.thread66.i.i ], [ -61, %for.body.i203.i.if.then19.i.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %child.087.i.i) #9
  br label %do.end81.i

for.inc.i206.i:                                   ; preds = %for.inc68.i.i.i.for.inc.i206.i_crit_edge, %for.cond23.preheader.i.i.i.for.inc.i206.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i53.i.i) #9
  %inc.i205.i = add i32 %i.088.i.i, 1
  %call21.i.i = call ptr @of_get_next_child(ptr noundef nonnull %child.0290.i, ptr noundef nonnull %child.087.i.i) #9
  %cmp11.not.i.i = icmp eq ptr %call21.i.i, null
  br i1 %cmp11.not.i.i, label %for.inc.i206.i.st_pctl_parse_functions.exit.thread223.i_crit_edge, label %for.inc.i206.i.for.body.i203.i_crit_edge

for.inc.i206.i.for.body.i203.i_crit_edge:         ; preds = %for.inc.i206.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i203.i

for.inc.i206.i.st_pctl_parse_functions.exit.thread223.i_crit_edge: ; preds = %for.inc.i206.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_parse_functions.exit.thread223.i

st_pctl_parse_functions.exit.thread223.i:         ; preds = %for.inc.i206.i.st_pctl_parse_functions.exit.thread223.i_crit_edge, %if.end9.i.i.st_pctl_parse_functions.exit.thread223.i_crit_edge
  %grp_index.2.i = phi i32 [ %grp_index.0281.i, %if.end9.i.i.st_pctl_parse_functions.exit.thread223.i_crit_edge ], [ %add.i.i, %for.inc.i206.i.st_pctl_parse_functions.exit.thread223.i_crit_edge ]
  %202 = ptrtoint ptr %arrayidx.i187.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %arrayidx.i187.i, align 4
  %204 = ptrtoint ptr %ngroups.i196.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %ngroups.i196.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %128, ptr noundef nonnull @.str.39, i32 noundef %i.0283.i, ptr noundef %203, i32 noundef %205) #12
  br label %for.inc84.i

st_pctl_parse_functions.exit.i:                   ; preds = %of_get_child_count.exit.i.i.st_pctl_parse_functions.exit.i_crit_edge, %of_get_child_count.exit.thread.i.i
  %call4.i198.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %128, i32 noundef -22, ptr noundef nonnull @.str.38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i198.i)
  %tobool77.not.i = icmp eq i32 %call4.i198.i, 0
  br i1 %tobool77.not.i, label %st_pctl_parse_functions.exit.i.for.inc84.i_crit_edge, label %st_pctl_parse_functions.exit.i.do.end81.i_crit_edge

st_pctl_parse_functions.exit.i.do.end81.i_crit_edge: ; preds = %st_pctl_parse_functions.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81.i

st_pctl_parse_functions.exit.i.for.inc84.i_crit_edge: ; preds = %st_pctl_parse_functions.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc84.i

do.end81.i:                                       ; preds = %st_pctl_parse_functions.exit.i.do.end81.i_crit_edge, %if.then19.i.i, %devm_kcalloc.exit.i.i.do.end81.i_crit_edge, %devm_kcalloc.exit.thread.i.i
  %retval.0.i222.i = phi i32 [ -12, %devm_kcalloc.exit.thread.i.i ], [ %retval.0.i65.i.i, %if.then19.i.i ], [ -12, %devm_kcalloc.exit.i.i.do.end81.i_crit_edge ], [ %call4.i198.i, %st_pctl_parse_functions.exit.i.do.end81.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #12
  call void @of_node_put(ptr noundef nonnull %child.0290.i) #9
  br label %cleanup

for.inc84.i:                                      ; preds = %st_pctl_parse_functions.exit.i.for.inc84.i_crit_edge, %st_pctl_parse_functions.exit.thread223.i, %for.body69.preheader.i
  %grp_index.4.i = phi i32 [ %grp_index.0281.i, %for.body69.preheader.i ], [ %grp_index.0281.i, %st_pctl_parse_functions.exit.i.for.inc84.i_crit_edge ], [ %grp_index.2.i, %st_pctl_parse_functions.exit.thread223.i ]
  %i.1.i = phi i32 [ %i.0283.i, %for.body69.preheader.i ], [ %inc75.i, %st_pctl_parse_functions.exit.i.for.inc84.i_crit_edge ], [ %inc75.i, %st_pctl_parse_functions.exit.thread223.i ]
  %bank.2.i = phi i32 [ %inc73.i, %for.body69.preheader.i ], [ %bank.0284.i, %st_pctl_parse_functions.exit.i.for.inc84.i_crit_edge ], [ %bank.0284.i, %st_pctl_parse_functions.exit.thread223.i ]
  %pdesc.3.i = phi ptr [ %incdec.ptr.7.i, %for.body69.preheader.i ], [ %pdesc.0288.i, %st_pctl_parse_functions.exit.i.for.inc84.i_crit_edge ], [ %pdesc.0288.i, %st_pctl_parse_functions.exit.thread223.i ]
  %call85.i = call ptr @of_get_next_child(ptr noundef %5, ptr noundef nonnull %child.0290.i) #9
  %cmp51.not.i = icmp eq ptr %call85.i, null
  br i1 %cmp51.not.i, label %for.inc84.i.if.end13_crit_edge, label %for.inc84.i.for.body.i_crit_edge

for.inc84.i.for.body.i_crit_edge:                 ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc84.i.if.end13_crit_edge:                   ; preds = %for.inc84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

st_pctl_probe_dt.exit:                            ; preds = %if.then64.i, %if.then39.i, %if.then27.i, %if.then.i
  %retval.3.i = phi i32 [ %call30.i, %if.then27.i ], [ %44, %if.then39.i ], [ %call.i58, %if.then.i ], [ %126, %if.then64.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.3.i)
  %tobool11.not = icmp eq i32 %retval.3.i, 0
  br i1 %tobool11.not, label %st_pctl_probe_dt.exit.if.end13_crit_edge, label %st_pctl_probe_dt.exit.cleanup_crit_edge

st_pctl_probe_dt.exit.cleanup_crit_edge:          ; preds = %st_pctl_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

st_pctl_probe_dt.exit.if.end13_crit_edge:         ; preds = %st_pctl_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %st_pctl_probe_dt.exit.if.end13_crit_edge, %for.inc84.i.if.end13_crit_edge, %if.end49.i.if.end13_crit_edge
  %owner = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 6
  %206 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %owner, align 4
  %pctlops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 3
  %207 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr @st_pctlops, ptr %pctlops, align 4
  %pmxops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 4
  %208 = ptrtoint ptr %pmxops to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr @st_pmxops, ptr %pmxops, align 4
  %confops = getelementptr inbounds %struct.pinctrl_desc, ptr %call.i, i32 0, i32 5
  %209 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %209)
  store ptr @st_confops, ptr %confops, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %210 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i59 = icmp eq ptr %211, null
  br i1 %tobool.not.i59, label %if.end.i, label %if.end13.dev_name.exit_crit_edge

if.end13.dev_name.exit_crit_edge:                 ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %212 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end13.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %213, %if.end.i ], [ %211, %if.end13.dev_name.exit_crit_edge ]
  %214 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %retval.0.i, ptr %call.i, align 4
  %call15 = call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i57) #9
  %pctl = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 1
  %215 = ptrtoint ptr %pctl to i32
  call void @__asan_store4_noabort(i32 %215)
  store ptr %call15, ptr %pctl, align 4
  %cmp.i60 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60, label %if.then18, label %for.cond.preheader

for.cond.preheader:                               ; preds = %dev_name.exit
  %216 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %nbanks.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp117 = icmp sgt i32 %217, 0
  br i1 %cmp117, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %banks = getelementptr inbounds %struct.st_pinctrl, ptr %call.i57, i32 0, i32 2
  br label %for.body

if.then18:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %218 = ptrtoint ptr %call15 to i32
  %call21 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %218, ptr noundef nonnull @.str.6) #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0118 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %219 = ptrtoint ptr %pctl to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %pctl, align 4
  %221 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %banks, align 4
  %range = getelementptr %struct.st_gpio_bank, ptr %222, i32 %i.0118, i32 1
  call void @pinctrl_add_gpio_range(ptr noundef %220, ptr noundef %range) #9
  %inc = add nuw nsw i32 %i.0118, 1
  %223 = ptrtoint ptr %nbanks.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %nbanks.i, align 4
  %cmp = icmp slt i32 %inc, %224
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.then18, %for.cond.preheader.cleanup_crit_edge, %st_pctl_probe_dt.exit.cleanup_crit_edge, %do.end81.i, %if.then56.i, %devm_kcalloc.exit181.i.cleanup_crit_edge, %if.end43.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %devm_kcalloc.exit176.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call21, %if.then18 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %retval.3.i, %st_pctl_probe_dt.exit.cleanup_crit_edge ], [ %retval.1.i211.i, %if.then56.i ], [ -12, %if.end43.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit181.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit176.i.cleanup_crit_edge ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ], [ %retval.0.i222.i, %do.end81.i ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_add_gpio_range(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_gpio_irqmux_handler(ptr noundef %desc) #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  %irqmux_base = getelementptr inbounds %struct.st_pinctrl, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %irqmux_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irqmux_base, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !140
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !141
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %status, align 4
  %nbanks = getelementptr inbounds %struct.st_pinctrl, ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nbanks, align 4
  %call4 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %18, i32 noundef 0) #9
  %19 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbanks, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4, i32 %20)
  %cmp22 = icmp slt i32 %call4, %20
  br i1 %cmp22, label %for.body.lr.ph, label %chained_irq_enter.exit.for.end_crit_edge

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %banks = getelementptr inbounds %struct.st_pinctrl, ptr %3, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %n.023 = phi i32 [ %call4, %for.body.lr.ph ], [ %call7, %for.body.for.body_crit_edge ]
  %21 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %banks, align 4
  %arrayidx = getelementptr %struct.st_gpio_bank, ptr %22, i32 %n.023
  call fastcc void @__gpio_irq_handler(ptr noundef %arrayidx)
  %23 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbanks, align 4
  %add = add nsw i32 %n.023, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %24, i32 noundef %add) #9
  %25 = ptrtoint ptr %nbanks to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nbanks, align 4
  %cmp = icmp slt i32 %call7, %26
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
  %tobool.not.i19 = icmp eq ptr %28, null
  br i1 %tobool.not.i19, label %if.else.i20, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i20:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %29 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i20, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %30, %if.else.i20 ], [ %28, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kasprintf_strarray(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_parse_syscfgs(ptr nocapture noundef readonly %info, i32 noundef %bank, ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.st_pinctrl, ptr %info, i32 0, i32 9
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %div = sdiv i32 %bank, 4
  %2 = mul i32 %div, 4
  %rem.decomposed = sub i32 %bank, %2
  %mul = shl nsw i32 %rem.decomposed, 3
  %sub = or i32 %mul, 7
  %banks = getelementptr inbounds %struct.st_pinctrl, ptr %info, i32 0, i32 2
  %3 = ptrtoint ptr %banks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %banks, align 4
  %pc2 = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %regmap4 = getelementptr inbounds %struct.st_pinctrl, ptr %info, i32 0, i32 8
  %7 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap4, align 4
  %alt = getelementptr inbounds %struct.st_pctl_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %alt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp slt i32 %10, 0
  br i1 %cmp.i, label %entry.st_pc_get_value.exit_crit_edge, label %if.end.i

entry.st_pc_get_value.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pc_get_value.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %10, %bank
  %mul.i = shl i32 %add.i, 2
  %.fca.0.insert.i = insertvalue [5 x i32] poison, i32 %mul.i, 0
  %.fca.1.insert.i = insertvalue [5 x i32] %.fca.0.insert.i, i32 0, 1
  %.fca.2.insert.i = insertvalue [5 x i32] %.fca.1.insert.i, i32 31, 2
  %.fca.3.insert.i = insertvalue [5 x i32] %.fca.2.insert.i, i32 0, 3
  %.fca.4.insert.i = insertvalue [5 x i32] %.fca.3.insert.i, i32 0, 4
  %call.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %6, ptr noundef %8, [5 x i32] %.fca.4.insert.i) #9
  br label %st_pc_get_value.exit

st_pc_get_value.exit:                             ; preds = %if.end.i, %entry.st_pc_get_value.exit_crit_edge
  %retval.0.i = phi ptr [ %call.i, %if.end.i ], [ null, %entry.st_pc_get_value.exit_crit_edge ]
  %alt5 = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 1
  %11 = ptrtoint ptr %alt5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i, ptr %alt5, align 4
  %oe = getelementptr inbounds %struct.st_pctl_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %oe, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i47 = icmp slt i32 %13, 0
  br i1 %cmp.i47, label %st_pc_get_value.exit.st_pc_get_value.exit58_crit_edge, label %if.end.i56

st_pc_get_value.exit.st_pc_get_value.exit58_crit_edge: ; preds = %st_pc_get_value.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pc_get_value.exit58

if.end.i56:                                       ; preds = %st_pc_get_value.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.i48 = add i32 %13, %div
  %mul.i49 = shl i32 %add.i48, 2
  %.fca.0.insert.i50 = insertvalue [5 x i32] poison, i32 %mul.i49, 0
  %.fca.1.insert.i51 = insertvalue [5 x i32] %.fca.0.insert.i50, i32 %mul, 1
  %.fca.2.insert.i52 = insertvalue [5 x i32] %.fca.1.insert.i51, i32 %sub, 2
  %.fca.3.insert.i53 = insertvalue [5 x i32] %.fca.2.insert.i52, i32 0, 3
  %.fca.4.insert.i54 = insertvalue [5 x i32] %.fca.3.insert.i53, i32 0, 4
  %call.i55 = tail call ptr @devm_regmap_field_alloc(ptr noundef %6, ptr noundef %8, [5 x i32] %.fca.4.insert.i54) #9
  br label %st_pc_get_value.exit58

st_pc_get_value.exit58:                           ; preds = %if.end.i56, %st_pc_get_value.exit.st_pc_get_value.exit58_crit_edge
  %retval.0.i57 = phi ptr [ %call.i55, %if.end.i56 ], [ null, %st_pc_get_value.exit.st_pc_get_value.exit58_crit_edge ]
  %oe7 = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 2
  %14 = ptrtoint ptr %oe7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i57, ptr %oe7, align 4
  %pu = getelementptr inbounds %struct.st_pctl_data, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %pu to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i59 = icmp slt i32 %16, 0
  br i1 %cmp.i59, label %st_pc_get_value.exit58.st_pc_get_value.exit70_crit_edge, label %if.end.i68

st_pc_get_value.exit58.st_pc_get_value.exit70_crit_edge: ; preds = %st_pc_get_value.exit58
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pc_get_value.exit70

if.end.i68:                                       ; preds = %st_pc_get_value.exit58
  call void @__sanitizer_cov_trace_pc() #11
  %add.i60 = add i32 %16, %div
  %mul.i61 = shl i32 %add.i60, 2
  %.fca.0.insert.i62 = insertvalue [5 x i32] poison, i32 %mul.i61, 0
  %.fca.1.insert.i63 = insertvalue [5 x i32] %.fca.0.insert.i62, i32 %mul, 1
  %.fca.2.insert.i64 = insertvalue [5 x i32] %.fca.1.insert.i63, i32 %sub, 2
  %.fca.3.insert.i65 = insertvalue [5 x i32] %.fca.2.insert.i64, i32 0, 3
  %.fca.4.insert.i66 = insertvalue [5 x i32] %.fca.3.insert.i65, i32 0, 4
  %call.i67 = tail call ptr @devm_regmap_field_alloc(ptr noundef %6, ptr noundef %8, [5 x i32] %.fca.4.insert.i66) #9
  br label %st_pc_get_value.exit70

st_pc_get_value.exit70:                           ; preds = %if.end.i68, %st_pc_get_value.exit58.st_pc_get_value.exit70_crit_edge
  %retval.0.i69 = phi ptr [ %call.i67, %if.end.i68 ], [ null, %st_pc_get_value.exit58.st_pc_get_value.exit70_crit_edge ]
  %pu10 = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 3
  %17 = ptrtoint ptr %pu10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i69, ptr %pu10, align 4
  %od = getelementptr inbounds %struct.st_pctl_data, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %od, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i71 = icmp slt i32 %19, 0
  br i1 %cmp.i71, label %st_pc_get_value.exit70.st_pc_get_value.exit82_crit_edge, label %if.end.i80

st_pc_get_value.exit70.st_pc_get_value.exit82_crit_edge: ; preds = %st_pc_get_value.exit70
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pc_get_value.exit82

if.end.i80:                                       ; preds = %st_pc_get_value.exit70
  call void @__sanitizer_cov_trace_pc() #11
  %add.i72 = add i32 %19, %div
  %mul.i73 = shl i32 %add.i72, 2
  %.fca.0.insert.i74 = insertvalue [5 x i32] poison, i32 %mul.i73, 0
  %.fca.1.insert.i75 = insertvalue [5 x i32] %.fca.0.insert.i74, i32 %mul, 1
  %.fca.2.insert.i76 = insertvalue [5 x i32] %.fca.1.insert.i75, i32 %sub, 2
  %.fca.3.insert.i77 = insertvalue [5 x i32] %.fca.2.insert.i76, i32 0, 3
  %.fca.4.insert.i78 = insertvalue [5 x i32] %.fca.3.insert.i77, i32 0, 4
  %call.i79 = tail call ptr @devm_regmap_field_alloc(ptr noundef %6, ptr noundef %8, [5 x i32] %.fca.4.insert.i78) #9
  br label %st_pc_get_value.exit82

st_pc_get_value.exit82:                           ; preds = %if.end.i80, %st_pc_get_value.exit70.st_pc_get_value.exit82_crit_edge
  %retval.0.i81 = phi ptr [ %call.i79, %if.end.i80 ], [ null, %st_pc_get_value.exit70.st_pc_get_value.exit82_crit_edge ]
  %od13 = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 4
  %20 = ptrtoint ptr %od13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %retval.0.i81, ptr %od13, align 4
  %21 = ptrtoint ptr %pc2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 255, ptr %pc2, align 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.37, ptr noundef %pc2, i32 noundef 1, i32 noundef 0) #9
  %22 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data1, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %st_pc_get_value.exit82.st_pctl_dt_setup_retime.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
  ]

st_pc_get_value.exit82.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %st_pc_get_value.exit82
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

if.then.i:                                        ; preds = %st_pc_get_value.exit82
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %info, align 4
  %29 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap4, align 4
  %rt.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 9
  %31 = ptrtoint ptr %rt.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rt.i.i, align 4
  %mul.i.i = shl i32 %bank, 1
  %add.i.i = add i32 %32, %mul.i.i
  %mul3.i.i = shl i32 %add.i.i, 2
  %rt4.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5
  %add17.i.i = add i32 %mul3.i.i, 4
  %.fca.0.insert108.i.i = insertvalue [5 x i32] poison, i32 %mul3.i.i, 0
  %.fca.1.insert109.i.i = insertvalue [5 x i32] %.fca.0.insert108.i.i, i32 0, 1
  %.fca.2.insert110.i.i = insertvalue [5 x i32] %.fca.1.insert109.i.i, i32 7, 2
  %.fca.3.insert111.i.i = insertvalue [5 x i32] %.fca.2.insert110.i.i, i32 0, 3
  %.fca.4.insert112.i.i = insertvalue [5 x i32] %.fca.3.insert111.i.i, i32 0, 4
  %call.i.i83 = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] %.fca.4.insert112.i.i) #9
  %33 = ptrtoint ptr %rt4.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i.i83, ptr %rt4.i.i, align 4
  %.fca.1.insert104.i.i = insertvalue [5 x i32] %.fca.0.insert108.i.i, i32 16, 1
  %.fca.2.insert105.i.i = insertvalue [5 x i32] %.fca.1.insert104.i.i, i32 23, 2
  %.fca.3.insert106.i.i = insertvalue [5 x i32] %.fca.2.insert105.i.i, i32 0, 3
  %.fca.4.insert107.i.i = insertvalue [5 x i32] %.fca.3.insert106.i.i, i32 0, 4
  %call41.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] %.fca.4.insert107.i.i) #9
  %delay_042.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %delay_042.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call41.i.i, ptr %delay_042.i.i, align 4
  %.fca.1.insert99.i.i = insertvalue [5 x i32] %.fca.0.insert108.i.i, i32 24, 1
  %.fca.2.insert100.i.i = insertvalue [5 x i32] %.fca.1.insert99.i.i, i32 31, 2
  %.fca.3.insert101.i.i = insertvalue [5 x i32] %.fca.2.insert100.i.i, i32 0, 3
  %.fca.4.insert102.i.i = insertvalue [5 x i32] %.fca.3.insert101.i.i, i32 0, 4
  %call43.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] %.fca.4.insert102.i.i) #9
  %delay_144.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %delay_144.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call43.i.i, ptr %delay_144.i.i, align 4
  %.fca.0.insert93.i.i = insertvalue [5 x i32] poison, i32 %add17.i.i, 0
  %.fca.1.insert94.i.i = insertvalue [5 x i32] %.fca.0.insert93.i.i, i32 0, 1
  %.fca.2.insert95.i.i = insertvalue [5 x i32] %.fca.1.insert94.i.i, i32 7, 2
  %.fca.3.insert96.i.i = insertvalue [5 x i32] %.fca.2.insert95.i.i, i32 0, 3
  %.fca.4.insert97.i.i = insertvalue [5 x i32] %.fca.3.insert96.i.i, i32 0, 4
  %call45.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] %.fca.4.insert97.i.i) #9
  %invertclk46.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %invertclk46.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call45.i.i, ptr %invertclk46.i.i, align 4
  %.fca.1.insert89.i.i = insertvalue [5 x i32] %.fca.0.insert93.i.i, i32 8, 1
  %.fca.2.insert90.i.i = insertvalue [5 x i32] %.fca.1.insert89.i.i, i32 15, 2
  %.fca.3.insert91.i.i = insertvalue [5 x i32] %.fca.2.insert90.i.i, i32 0, 3
  %.fca.4.insert92.i.i = insertvalue [5 x i32] %.fca.3.insert91.i.i, i32 0, 4
  %call47.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] %.fca.4.insert92.i.i) #9
  %retime48.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 4
  %37 = ptrtoint ptr %retime48.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call47.i.i, ptr %retime48.i.i, align 4
  %.fca.1.insert84.i.i = insertvalue [5 x i32] %.fca.0.insert93.i.i, i32 16, 1
  %.fca.2.insert85.i.i = insertvalue [5 x i32] %.fca.1.insert84.i.i, i32 23, 2
  %.fca.3.insert86.i.i = insertvalue [5 x i32] %.fca.2.insert85.i.i, i32 0, 3
  %.fca.4.insert87.i.i = insertvalue [5 x i32] %.fca.3.insert86.i.i, i32 0, 4
  %call49.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] %.fca.4.insert87.i.i) #9
  %clknotdata50.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 5
  %38 = ptrtoint ptr %clknotdata50.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call49.i.i, ptr %clknotdata50.i.i, align 4
  %.fca.1.insert.i.i = insertvalue [5 x i32] %.fca.0.insert93.i.i, i32 24, 1
  %.fca.2.insert.i.i = insertvalue [5 x i32] %.fca.1.insert.i.i, i32 31, 2
  %.fca.3.insert.i.i = insertvalue [5 x i32] %.fca.2.insert.i.i, i32 0, 3
  %.fca.4.insert.i.i = insertvalue [5 x i32] %.fca.3.insert.i.i, i32 0, 4
  %call51.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %28, ptr noundef %30, [5 x i32] %.fca.4.insert.i.i) #9
  %double_edge52.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 6
  %39 = ptrtoint ptr %double_edge52.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call51.i.i, ptr %double_edge52.i.i, align 4
  br label %st_pctl_dt_setup_retime.exit

if.then4.i:                                       ; preds = %st_pc_get_value.exit82
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info, align 4
  %42 = ptrtoint ptr %regmap4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap4, align 4
  %rt.i3.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 9
  %44 = ptrtoint ptr %rt.i3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rt.i3.i, align 4
  %mul.i4.i = shl i32 %bank, 3
  %add.i5.i = add i32 %45, %mul.i4.i
  %mul3.i6.i = shl i32 %add.i5.i, 2
  %46 = ptrtoint ptr %pc2 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pc2, align 4
  %and.i.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then4.i.for.inc.i.i_crit_edge, label %if.then.i.i

if.then4.i.for.inc.i.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i:                                      ; preds = %if.then4.i
  %rt4.i7.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5
  %.fca.0.insert.i.i = insertvalue [5 x i32] poison, i32 %mul3.i6.i, 0
  %.fca.1.insert.i8.i = insertvalue [5 x i32] %.fca.0.insert.i.i, i32 0, 1
  %.fca.2.insert.i9.i = insertvalue [5 x i32] %.fca.1.insert.i8.i, i32 31, 2
  %.fca.3.insert.i10.i = insertvalue [5 x i32] %.fca.2.insert.i9.i, i32 0, 3
  %.fca.4.insert.i11.i = insertvalue [5 x i32] %.fca.3.insert.i10.i, i32 0, 4
  %call.i12.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.i11.i) #9
  %48 = ptrtoint ptr %rt4.i7.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i12.i, ptr %rt4.i7.i, align 4
  %cmp.i.i13.i = icmp ugt ptr %call.i12.i, inttoptr (i32 -4096 to ptr)
  %add11.i.i = add i32 %mul3.i6.i, 4
  br i1 %cmp.i.i13.i, label %if.then.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

for.inc.i.i:                                      ; preds = %if.then.i.i.for.inc.i.i_crit_edge, %if.then4.i.for.inc.i.i_crit_edge
  %reg_offset.2.i.i = phi i32 [ %add11.i.i, %if.then.i.i.for.inc.i.i_crit_edge ], [ %mul3.i6.i, %if.then4.i.for.inc.i.i_crit_edge ]
  %and.1.i.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i.i)
  %tobool.not.1.i.i = icmp eq i32 %and.1.i.i, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.then.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

if.then.1.i.i:                                    ; preds = %for.inc.i.i
  %.fca.0.insert.1.i.i = insertvalue [5 x i32] poison, i32 %reg_offset.2.i.i, 0
  %.fca.1.insert.1.i.i = insertvalue [5 x i32] %.fca.0.insert.1.i.i, i32 0, 1
  %.fca.2.insert.1.i.i = insertvalue [5 x i32] %.fca.1.insert.1.i.i, i32 31, 2
  %.fca.3.insert.1.i.i = insertvalue [5 x i32] %.fca.2.insert.1.i.i, i32 0, 3
  %.fca.4.insert.1.i.i = insertvalue [5 x i32] %.fca.3.insert.1.i.i, i32 0, 4
  %call.1.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.1.i.i) #9
  %arrayidx.1.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 1
  %49 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call.1.i.i, ptr %arrayidx.1.i.i, align 4
  %cmp.i.1.i.i = icmp ugt ptr %call.1.i.i, inttoptr (i32 -4096 to ptr)
  %add11.1.i.i = add i32 %reg_offset.2.i.i, 4
  br i1 %cmp.i.1.i.i, label %if.then.1.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.1.i.i.for.inc.1.i.i_crit_edge

if.then.1.i.i.for.inc.1.i.i_crit_edge:            ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i.i

if.then.1.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %if.then.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

for.inc.1.i.i:                                    ; preds = %if.then.1.i.i.for.inc.1.i.i_crit_edge, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %reg_offset.2.1.i.i = phi i32 [ %add11.1.i.i, %if.then.1.i.i.for.inc.1.i.i_crit_edge ], [ %reg_offset.2.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %and.2.i.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i.i)
  %tobool.not.2.i.i = icmp eq i32 %and.2.i.i, 0
  br i1 %tobool.not.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.then.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

if.then.2.i.i:                                    ; preds = %for.inc.1.i.i
  %.fca.0.insert.2.i.i = insertvalue [5 x i32] poison, i32 %reg_offset.2.1.i.i, 0
  %.fca.1.insert.2.i.i = insertvalue [5 x i32] %.fca.0.insert.2.i.i, i32 0, 1
  %.fca.2.insert.2.i.i = insertvalue [5 x i32] %.fca.1.insert.2.i.i, i32 31, 2
  %.fca.3.insert.2.i.i = insertvalue [5 x i32] %.fca.2.insert.2.i.i, i32 0, 3
  %.fca.4.insert.2.i.i = insertvalue [5 x i32] %.fca.3.insert.2.i.i, i32 0, 4
  %call.2.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.2.i.i) #9
  %arrayidx.2.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 2
  %50 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.2.i.i, ptr %arrayidx.2.i.i, align 4
  %cmp.i.2.i.i = icmp ugt ptr %call.2.i.i, inttoptr (i32 -4096 to ptr)
  %add11.2.i.i = add i32 %reg_offset.2.1.i.i, 4
  br i1 %cmp.i.2.i.i, label %if.then.2.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.2.i.i.for.inc.2.i.i_crit_edge

if.then.2.i.i.for.inc.2.i.i_crit_edge:            ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i.i

if.then.2.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %if.then.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

for.inc.2.i.i:                                    ; preds = %if.then.2.i.i.for.inc.2.i.i_crit_edge, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %reg_offset.2.2.i.i = phi i32 [ %add11.2.i.i, %if.then.2.i.i.for.inc.2.i.i_crit_edge ], [ %reg_offset.2.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %and.3.i.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i.i)
  %tobool.not.3.i.i = icmp eq i32 %and.3.i.i, 0
  br i1 %tobool.not.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.then.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i

if.then.3.i.i:                                    ; preds = %for.inc.2.i.i
  %.fca.0.insert.3.i.i = insertvalue [5 x i32] poison, i32 %reg_offset.2.2.i.i, 0
  %.fca.1.insert.3.i.i = insertvalue [5 x i32] %.fca.0.insert.3.i.i, i32 0, 1
  %.fca.2.insert.3.i.i = insertvalue [5 x i32] %.fca.1.insert.3.i.i, i32 31, 2
  %.fca.3.insert.3.i.i = insertvalue [5 x i32] %.fca.2.insert.3.i.i, i32 0, 3
  %.fca.4.insert.3.i.i = insertvalue [5 x i32] %.fca.3.insert.3.i.i, i32 0, 4
  %call.3.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.3.i.i) #9
  %arrayidx.3.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 3
  %51 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.3.i.i, ptr %arrayidx.3.i.i, align 4
  %cmp.i.3.i.i = icmp ugt ptr %call.3.i.i, inttoptr (i32 -4096 to ptr)
  %add11.3.i.i = add i32 %reg_offset.2.2.i.i, 4
  br i1 %cmp.i.3.i.i, label %if.then.3.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.3.i.i.for.inc.3.i.i_crit_edge

if.then.3.i.i.for.inc.3.i.i_crit_edge:            ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i.i

if.then.3.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %if.then.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

for.inc.3.i.i:                                    ; preds = %if.then.3.i.i.for.inc.3.i.i_crit_edge, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %reg_offset.2.3.i.i = phi i32 [ %add11.3.i.i, %if.then.3.i.i.for.inc.3.i.i_crit_edge ], [ %reg_offset.2.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %and.4.i.i = and i32 %47, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i.i)
  %tobool.not.4.i.i = icmp eq i32 %and.4.i.i, 0
  br i1 %tobool.not.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.then.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i.i

if.then.4.i.i:                                    ; preds = %for.inc.3.i.i
  %.fca.0.insert.4.i.i = insertvalue [5 x i32] poison, i32 %reg_offset.2.3.i.i, 0
  %.fca.1.insert.4.i.i = insertvalue [5 x i32] %.fca.0.insert.4.i.i, i32 0, 1
  %.fca.2.insert.4.i.i = insertvalue [5 x i32] %.fca.1.insert.4.i.i, i32 31, 2
  %.fca.3.insert.4.i.i = insertvalue [5 x i32] %.fca.2.insert.4.i.i, i32 0, 3
  %.fca.4.insert.4.i.i = insertvalue [5 x i32] %.fca.3.insert.4.i.i, i32 0, 4
  %call.4.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.4.i.i) #9
  %arrayidx.4.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.4.i.i, ptr %arrayidx.4.i.i, align 4
  %cmp.i.4.i.i = icmp ugt ptr %call.4.i.i, inttoptr (i32 -4096 to ptr)
  %add11.4.i.i = add i32 %reg_offset.2.3.i.i, 4
  br i1 %cmp.i.4.i.i, label %if.then.4.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.4.i.i.for.inc.4.i.i_crit_edge

if.then.4.i.i.for.inc.4.i.i_crit_edge:            ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i.i

if.then.4.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %if.then.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

for.inc.4.i.i:                                    ; preds = %if.then.4.i.i.for.inc.4.i.i_crit_edge, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %reg_offset.2.4.i.i = phi i32 [ %add11.4.i.i, %if.then.4.i.i.for.inc.4.i.i_crit_edge ], [ %reg_offset.2.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %and.5.i.i = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i.i)
  %tobool.not.5.i.i = icmp eq i32 %and.5.i.i, 0
  br i1 %tobool.not.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.then.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i.i

if.then.5.i.i:                                    ; preds = %for.inc.4.i.i
  %.fca.0.insert.5.i.i = insertvalue [5 x i32] poison, i32 %reg_offset.2.4.i.i, 0
  %.fca.1.insert.5.i.i = insertvalue [5 x i32] %.fca.0.insert.5.i.i, i32 0, 1
  %.fca.2.insert.5.i.i = insertvalue [5 x i32] %.fca.1.insert.5.i.i, i32 31, 2
  %.fca.3.insert.5.i.i = insertvalue [5 x i32] %.fca.2.insert.5.i.i, i32 0, 3
  %.fca.4.insert.5.i.i = insertvalue [5 x i32] %.fca.3.insert.5.i.i, i32 0, 4
  %call.5.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.5.i.i) #9
  %arrayidx.5.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 5
  %53 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call.5.i.i, ptr %arrayidx.5.i.i, align 4
  %cmp.i.5.i.i = icmp ugt ptr %call.5.i.i, inttoptr (i32 -4096 to ptr)
  %add11.5.i.i = add i32 %reg_offset.2.4.i.i, 4
  br i1 %cmp.i.5.i.i, label %if.then.5.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.5.i.i.for.inc.5.i.i_crit_edge

if.then.5.i.i.for.inc.5.i.i_crit_edge:            ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.5.i.i

if.then.5.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %if.then.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

for.inc.5.i.i:                                    ; preds = %if.then.5.i.i.for.inc.5.i.i_crit_edge, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %reg_offset.2.5.i.i = phi i32 [ %add11.5.i.i, %if.then.5.i.i.for.inc.5.i.i_crit_edge ], [ %reg_offset.2.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  %and.6.i.i = and i32 %47, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i.i)
  %tobool.not.6.i.i = icmp eq i32 %and.6.i.i, 0
  br i1 %tobool.not.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge, label %if.then.6.i.i

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i.i

if.then.6.i.i:                                    ; preds = %for.inc.5.i.i
  %.fca.0.insert.6.i.i = insertvalue [5 x i32] poison, i32 %reg_offset.2.5.i.i, 0
  %.fca.1.insert.6.i.i = insertvalue [5 x i32] %.fca.0.insert.6.i.i, i32 0, 1
  %.fca.2.insert.6.i.i = insertvalue [5 x i32] %.fca.1.insert.6.i.i, i32 31, 2
  %.fca.3.insert.6.i.i = insertvalue [5 x i32] %.fca.2.insert.6.i.i, i32 0, 3
  %.fca.4.insert.6.i.i = insertvalue [5 x i32] %.fca.3.insert.6.i.i, i32 0, 4
  %call.6.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.6.i.i) #9
  %arrayidx.6.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.6.i.i, ptr %arrayidx.6.i.i, align 4
  %cmp.i.6.i.i = icmp ugt ptr %call.6.i.i, inttoptr (i32 -4096 to ptr)
  %add11.6.i.i = add i32 %reg_offset.2.5.i.i, 4
  br i1 %cmp.i.6.i.i, label %if.then.6.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.6.i.i.for.inc.6.i.i_crit_edge

if.then.6.i.i.for.inc.6.i.i_crit_edge:            ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.6.i.i

if.then.6.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %if.then.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

for.inc.6.i.i:                                    ; preds = %if.then.6.i.i.for.inc.6.i.i_crit_edge, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %reg_offset.2.6.i.i = phi i32 [ %add11.6.i.i, %if.then.6.i.i.for.inc.6.i.i_crit_edge ], [ %reg_offset.2.5.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge ]
  %and.7.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i.i)
  %tobool.not.7.i.i = icmp eq i32 %and.7.i.i, 0
  br i1 %tobool.not.7.i.i, label %for.inc.6.i.i.st_pctl_dt_setup_retime.exit_crit_edge, label %if.then.7.i.i

for.inc.6.i.i.st_pctl_dt_setup_retime.exit_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_dt_setup_retime.exit

if.then.7.i.i:                                    ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %.fca.0.insert.7.i.i = insertvalue [5 x i32] poison, i32 %reg_offset.2.6.i.i, 0
  %.fca.1.insert.7.i.i = insertvalue [5 x i32] %.fca.0.insert.7.i.i, i32 0, 1
  %.fca.2.insert.7.i.i = insertvalue [5 x i32] %.fca.1.insert.7.i.i, i32 31, 2
  %.fca.3.insert.7.i.i = insertvalue [5 x i32] %.fca.2.insert.7.i.i, i32 0, 3
  %.fca.4.insert.7.i.i = insertvalue [5 x i32] %.fca.3.insert.7.i.i, i32 0, 4
  %call.7.i.i = tail call ptr @devm_regmap_field_alloc(ptr noundef %41, ptr noundef %43, [5 x i32] %.fca.4.insert.7.i.i) #9
  %arrayidx.7.i.i = getelementptr %struct.st_gpio_bank, ptr %4, i32 %bank, i32 3, i32 5, i32 0, i32 0, i32 7
  %55 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call.7.i.i, ptr %arrayidx.7.i.i, align 4
  br label %st_pctl_dt_setup_retime.exit

st_pctl_dt_setup_retime.exit:                     ; preds = %if.then.7.i.i, %for.inc.6.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.6.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.5.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.4.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.3.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.2.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.1.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.i.i.st_pctl_dt_setup_retime.exit_crit_edge, %if.then.i, %st_pc_get_value.exit82.st_pctl_dt_setup_retime.exit_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__gpio_irq_handler(ptr noundef %bank) unnamed_addr #2 align 64 {
entry:
  %active_irqs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active_irqs) #9
  %0 = ptrtoint ptr %active_irqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %active_irqs, align 4, !annotation !142
  %lock = getelementptr inbounds %struct.st_gpio_bank, ptr %bank, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %irq_edge_conf = getelementptr inbounds %struct.st_gpio_bank, ptr %bank, i32 0, i32 4
  %1 = ptrtoint ptr %irq_edge_conf to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq_edge_conf, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %base = getelementptr inbounds %struct.st_gpio_bank, ptr %bank, i32 0, i32 2
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %bank, i32 0, i32 37, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 16
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !143
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 80
  %8 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #9, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !144
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %10, i32 96
  %11 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #9, !srcloc !140
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !145
  %12 = xor i32 %8, %5
  %13 = and i32 %11, %12
  %14 = call i32 @llvm.bswap.i32(i32 %13)
  %15 = ptrtoint ptr %active_irqs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %active_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp23 = icmp eq i32 %13, 0
  br i1 %cmp23, label %for.end51, label %if.end

if.end:                                           ; preds = %for.cond
  %call25 = call i32 @_find_next_bit_be(ptr noundef nonnull %active_irqs, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call25)
  %cmp2769 = icmp slt i32 %call25, 32
  br i1 %cmp2769, label %if.end.for.body_crit_edge, label %if.end.for.cond.backedge_crit_edge

if.end.for.cond.backedge_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond.backedge:                                ; preds = %for.inc.for.cond.backedge_crit_edge, %if.end.for.cond.backedge_crit_edge
  br label %for.cond

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %n.070 = phi i32 [ %call50, %for.inc.for.body_crit_edge ], [ %call25, %if.end.for.body_crit_edge ]
  %mul = shl i32 %n.070, 2
  %shr = lshr i32 %2, %mul
  %and29 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not = icmp eq i32 %and29, 0
  br i1 %tobool.not, label %for.body.if.end47_crit_edge, label %if.then30

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then30:                                        ; preds = %for.body
  %call.i = call ptr @gpiochip_get_data(ptr noundef %bank) #9
  %base.i = getelementptr inbounds %struct.st_gpio_bank, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 16
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !140
  %19 = call i32 @llvm.bswap.i32(i32 %18) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %20 = lshr i32 %19, %n.070
  %21 = and i32 %20, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !147
  call void @arm_heavy_mb() #9
  %shl = shl nuw i32 1, %n.070
  %22 = call i32 @llvm.bswap.i32(i32 %shl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool35.not = icmp eq i32 %21, 0
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  %. = select i1 %tobool35.not, i32 88, i32 84
  %add.ptr39 = getelementptr i8, ptr %24, i32 %.
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %22) #9, !srcloc !148
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and29)
  %cmp40.not = icmp ne i32 %and29, 3
  %and42 = and i32 %shr, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %and42, i32 %21)
  %tobool44.not = icmp eq i32 %and42, %21
  %or.cond = select i1 %cmp40.not, i1 %tobool44.not, i1 false
  br i1 %or.cond, label %if.then30.for.inc_crit_edge, label %if.then30.if.end47_crit_edge

if.then30.if.end47_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then30.for.inc_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end47:                                         ; preds = %if.then30.if.end47_crit_edge, %for.body.if.end47_crit_edge
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  %call49 = call i32 @generic_handle_domain_irq(ptr noundef %26, i32 noundef %n.070) #9
  br label %for.inc

for.inc:                                          ; preds = %if.end47, %if.then30.for.inc_crit_edge
  %add = add nsw i32 %n.070, 1
  %call50 = call i32 @_find_next_bit_be(ptr noundef nonnull %active_irqs, i32 noundef 32, i32 noundef %add) #9
  %cmp27 = icmp slt i32 %call50, 32
  br i1 %cmp27, label %for.inc.for.body_crit_edge, label %for.inc.for.cond.backedge_crit_edge

for.inc.for.cond.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.backedge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end51:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active_irqs) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %base = getelementptr inbounds %struct.st_gpio_bank, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !140
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %4 = lshr i32 %3, %offset
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_gpio_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %handler_data.i, align 4
  %call2 = tail call ptr @gpiochip_get_data(ptr noundef %3) #9
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
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
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
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
  tail call fastcc void @__gpio_irq_handler(ptr noundef %call2)
  %12 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i8 = icmp eq ptr %13, null
  br i1 %tobool.not.i8, label %if.else.i9, label %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge

chained_irq_enter.exit.chained_irq_exit.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i9:                                       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i9, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %15, %if.else.i9 ], [ %13, %chained_irq_enter.exit.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %pc = alloca %struct.st_pio_control, align 4
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %pc) #9
  %pc1 = getelementptr inbounds %struct.st_gpio_bank, ptr %call, i32 0, i32 3
  %0 = call ptr @memcpy(ptr %pc, ptr %pc1, i32 52)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #9
  %1 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %config, align 4, !annotation !142
  %alt1.i = getelementptr inbounds %struct.st_pio_control, ptr %pc, i32 0, i32 1
  %2 = ptrtoint ptr %alt1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alt1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !142
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.cond.critedge, label %if.end.i

if.end.i:                                         ; preds = %entry
  %mul.i = shl i32 %offset, 2
  %call.i = call i32 @regmap_field_read(ptr noundef nonnull %3, ptr noundef nonnull %val.i) #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = shl i32 15, %mul.i
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %phi.cmp = icmp eq i32 %8, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br i1 %phi.cmp, label %if.end.i.for.cond.preheader_crit_edge, label %if.then

if.end.i.for.cond.preheader_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader

if.then:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @st_pinconf_get_direction(ptr noundef nonnull %pc, i32 noundef %offset, ptr noundef nonnull %config)
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config, align 4
  %11 = lshr i32 %10, 27
  %.lobit = and i32 %11, 1
  %12 = xor i32 %.lobit, 1
  br label %cleanup

for.cond.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.critedge, %if.end.i.for.cond.preheader_crit_edge
  %base = getelementptr inbounds %struct.st_gpio_bank, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 32
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !140
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %shr8 = lshr i32 %16, %offset
  %and9 = and i32 %shr8, 1
  %17 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base, align 4
  %add.ptr.1 = getelementptr i8, ptr %18, i32 48
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #9, !srcloc !140
  %20 = call i32 @llvm.bswap.i32(i32 %19)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %shr8.1 = lshr i32 %20, %offset
  %and9.1 = shl i32 %shr8.1, 1
  %shl.1 = and i32 %and9.1, 2
  %or.1 = or i32 %shl.1, %and9
  %21 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base, align 4
  %add.ptr.2 = getelementptr i8, ptr %22, i32 64
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #9, !srcloc !140
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !149
  %shr8.2 = lshr i32 %24, %offset
  %and9.2 = shl i32 %shr8.2, 2
  %shl.2 = and i32 %and9.2, 4
  %or.2 = or i32 %shl.2, %or.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %or.2)
  %cmp10 = icmp eq i32 %or.2, 4
  %.26 = zext i1 %cmp10 to i32
  br label %cleanup

cleanup:                                          ; preds = %for.cond.preheader, %if.then
  %retval.0 = phi i32 [ %12, %if.then ], [ %.26, %for.cond.preheader ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #9
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %pc) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gpio_direction_input(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  %call = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %shl3.i = shl nuw i32 1, %offset
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl3.i) #9
  %base4.i = getelementptr inbounds %struct.st_gpio_bank, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base4.i, align 4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #9, !srcloc !148
  br label %__st_gpio_set.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr5.i = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %0) #9, !srcloc !148
  br label %__st_gpio_set.exit

__st_gpio_set.exit:                               ; preds = %do.body1.i, %do.body.i
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base, align 4
  %add = add i32 %4, %offset
  %call1 = tail call i32 @pinctrl_gpio_direction_output(i32 noundef %add) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  tail call void @arm_heavy_mb() #9
  %shl3.i = shl nuw i32 1, %offset
  %0 = tail call i32 @llvm.bswap.i32(i32 %shl3.i) #9
  %base4.i = getelementptr inbounds %struct.st_gpio_bank, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %base4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base4.i, align 4
  br i1 %tobool.not.i, label %do.body1.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %2, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #9, !srcloc !148
  br label %__st_gpio_set.exit

do.body1.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr5.i = getelementptr i8, ptr %2, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %0) #9, !srcloc !148
  br label %__st_gpio_set.exit

__st_gpio_set.exit:                               ; preds = %do.body1.i, %do.body.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @st_pinconf_get_direction(ptr nocapture noundef readonly %pc, i32 noundef %pin, ptr nocapture noundef %config) unnamed_addr #2 align 64 {
entry:
  %oe_value = alloca i32, align 4
  %pu_value = alloca i32, align 4
  %od_value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oe_value) #9
  %0 = ptrtoint ptr %oe_value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %oe_value, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pu_value) #9
  %1 = ptrtoint ptr %pu_value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pu_value, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od_value) #9
  %2 = ptrtoint ptr %od_value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %od_value, align 4, !annotation !142
  %oe = getelementptr inbounds %struct.st_pio_control, ptr %pc, i32 0, i32 2
  %3 = ptrtoint ptr %oe to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oe, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = call i32 @regmap_field_read(ptr noundef nonnull %4, ptr noundef nonnull %oe_value) #9
  %5 = ptrtoint ptr %oe_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %oe_value, align 4
  %shl = shl nuw i32 1, %pin
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then3

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %config, align 4
  %or = or i32 %8, 134217728
  store i32 %or, ptr %config, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %pu = getelementptr inbounds %struct.st_pio_control, ptr %pc, i32 0, i32 3
  %9 = ptrtoint ptr %pu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pu, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end4.if.end15_crit_edge, label %if.then6

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %call8 = call i32 @regmap_field_read(ptr noundef nonnull %10, ptr noundef nonnull %pu_value) #9
  %11 = ptrtoint ptr %pu_value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pu_value, align 4
  %shl9 = shl nuw i32 1, %pin
  %and10 = and i32 %12, %shl9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then6.if.end15_crit_edge, label %if.then12

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %config, align 4
  %or13 = or i32 %14, 67108864
  store i32 %or13, ptr %config, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then6.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %od = getelementptr inbounds %struct.st_pio_control, ptr %pc, i32 0, i32 4
  %15 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %od, align 4
  %tobool16.not = icmp eq ptr %16, null
  br i1 %tobool16.not, label %if.end15.if.end26_crit_edge, label %if.then17

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then17:                                        ; preds = %if.end15
  %call19 = call i32 @regmap_field_read(ptr noundef nonnull %16, ptr noundef nonnull %od_value) #9
  %17 = ptrtoint ptr %od_value to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %od_value, align 4
  %shl20 = shl nuw i32 1, %pin
  %and21 = and i32 %18, %shl20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then17.if.end26_crit_edge, label %if.then23

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %config, align 4
  %or24 = or i32 %20, 33554432
  store i32 %or24, ptr %config, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then17.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od_value) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pu_value) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oe_value) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_input(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_direction_output(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_gpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !150
  tail call void @arm_heavy_mb() #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.st_gpio_bank, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_gpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !151
  tail call void @arm_heavy_mb() #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %4 = tail call i32 @llvm.bswap.i32(i32 %shl)
  %base = getelementptr inbounds %struct.st_gpio_bank, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #9, !srcloc !148
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 4, label %entry.do.body11_crit_edge
    i32 2, label %sw.bb2
    i32 8, label %sw.bb3
    i32 1, label %sw.bb4
    i32 3, label %sw.bb7
  ]

entry.do.body11_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %3, 2
  %shl = shl nuw i32 1, %mul
  br label %do.body11

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body11

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul5 = shl i32 %3, 2
  %shl6 = shl i32 2, %mul5
  br label %do.body11

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %call1) #9
  %base.i = getelementptr inbounds %struct.st_gpio_bank, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !140
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !146
  %9 = lshr i32 %8, %3
  %10 = and i32 %9, 1
  %mul9 = shl i32 %3, 2
  %shl10 = shl i32 3, %mul9
  br label %do.body11

do.body11:                                        ; preds = %sw.bb7, %sw.bb4, %sw.bb3, %sw.bb2, %entry.do.body11_crit_edge
  %pin_edge_conf.0 = phi i32 [ %shl10, %sw.bb7 ], [ %shl6, %sw.bb4 ], [ 0, %sw.bb3 ], [ %shl, %sw.bb2 ], [ 0, %entry.do.body11_crit_edge ]
  %comp.0 = phi i32 [ %10, %sw.bb7 ], [ 1, %sw.bb4 ], [ 1, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %entry.do.body11_crit_edge ]
  %lock = getelementptr inbounds %struct.st_gpio_bank, ptr %call1, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %mul16 = shl i32 %3, 2
  %shl17 = shl i32 15, %mul16
  %neg = xor i32 %shl17, -1
  %irq_edge_conf = getelementptr inbounds %struct.st_gpio_bank, ptr %call1, i32 0, i32 4
  %11 = ptrtoint ptr %irq_edge_conf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq_edge_conf, align 4
  %and = and i32 %12, %neg
  %or = or i32 %and, %pin_edge_conf.0
  store i32 %or, ptr %irq_edge_conf, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  %base = getelementptr inbounds %struct.st_gpio_bank, ptr %call1, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 80
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !140
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !152
  %shl23 = shl nuw i32 1, %3
  %neg24 = xor i32 %shl23, -1
  %and25 = and i32 %16, %neg24
  %shl26 = shl nuw i32 %comp.0, %3
  %or27 = or i32 %and25, %shl26
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !153
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %or27)
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %add.ptr32 = getelementptr i8, ptr %19, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 %17) #9, !srcloc !148
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body11 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_gpio_irq_request_resources(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %add.i = add i32 %5, %3
  %call.i = tail call i32 @pinctrl_gpio_direction_input(i32 noundef %add.i) #9
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %call3 = tail call i32 @gpiochip_lock_as_irq(ptr noundef %1, i32 noundef %7) #9
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_gpio_irq_release_resources(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_unlock_as_irq(ptr noundef %1, i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_lock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_unlock_as_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pctl_get_groups_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %ngroups = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @st_pctl_get_group_name(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %arrayidx = getelementptr %struct.st_pctl_group, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pctl_get_group_pins(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %pins, ptr nocapture noundef writeonly %npins) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %ngroups = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ngroups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %selector)
  %cmp.not = icmp ugt i32 %1, %selector
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %groups = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %pins1 = getelementptr %struct.st_pctl_group, ptr %3, i32 %selector, i32 1
  %4 = ptrtoint ptr %pins1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins1, align 4
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pins, align 4
  %7 = load ptr, ptr %groups, align 4
  %npins4 = getelementptr %struct.st_pctl_group, ptr %7, i32 %selector, i32 2
  %8 = ptrtoint ptr %npins4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %npins4, align 4
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %npins, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pctl_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np, ptr nocapture noundef %map, ptr nocapture noundef writeonly %num_maps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  %ngroups.i = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9.i = icmp sgt i32 %5, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph.i:                                 ; preds = %entry
  %groups.i = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %groups.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %groups.i, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.cond.i.do.end_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.cond.i.do.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.st_pctl_group, ptr %7, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef %3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %st_pctl_find_group_by_name.exit, label %for.cond.i

st_pctl_find_group_by_name.exit:                  ; preds = %for.body.i
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %st_pctl_find_group_by_name.exit.do.end_crit_edge, label %if.end

st_pctl_find_group_by_name.exit.do.end_crit_edge: ; preds = %st_pctl_find_group_by_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %st_pctl_find_group_by_name.exit.do.end_crit_edge, %for.cond.i.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.45, ptr noundef %np) #12
  br label %cleanup

if.end:                                           ; preds = %st_pctl_find_group_by_name.exit
  %npins = getelementptr %struct.st_pctl_group, ptr %7, i32 %i.010.i, i32 2
  %10 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %npins, align 4
  %add = add i32 %11, 1
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 28) #9
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !139

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %14 = extractvalue { i32, i1 } %12, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef %14, i32 noundef 3520) #9
  %tobool4.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool4.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end6

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %devm_kcalloc.exit
  %call7 = tail call ptr @of_get_parent(ptr noundef %np) #9
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devm_kfree(ptr noundef %1, ptr noundef nonnull %call5.i.i) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i, ptr %map, align 4
  %16 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add, ptr %num_maps, align 4
  %type = getelementptr inbounds %struct.pinctrl_map, ptr %call5.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %type, align 4
  %18 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call7, align 4
  %data = getelementptr inbounds %struct.pinctrl_map, ptr %call5.i.i, i32 0, i32 4
  %function = getelementptr inbounds %struct.pinctrl_map, ptr %call5.i.i, i32 0, i32 4, i32 0, i32 1
  %20 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %function, align 4
  %21 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %np, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %data, align 4
  tail call void @of_node_put(ptr noundef nonnull %call7) #9
  %incdec.ptr = getelementptr %struct.pinctrl_map, ptr %call5.i.i, i32 1
  %24 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %npins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp81.not = icmp eq i32 %25, 0
  br i1 %cmp81.not, label %if.end10.do.end30_crit_edge, label %for.body.lr.ph

if.end10.do.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

for.body.lr.ph:                                   ; preds = %if.end10
  %pins = getelementptr %struct.st_pctl_group, ptr %7, i32 %i.010.i, i32 1
  %pin_conf = getelementptr %struct.st_pctl_group, ptr %7, i32 %i.010.i, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.082 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx17 = getelementptr %struct.pinctrl_map, ptr %incdec.ptr, i32 %i.082
  %type18 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx17, i32 0, i32 2
  %26 = ptrtoint ptr %type18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %type18, align 4
  %27 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pins, align 4
  %arrayidx19 = getelementptr i32, ptr %28, i32 %i.082
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx19, align 4
  %call20 = tail call ptr @pin_get_name(ptr noundef %pctldev, i32 noundef %30) #9
  %data22 = getelementptr inbounds %struct.pinctrl_map, ptr %arrayidx17, i32 0, i32 4
  %31 = ptrtoint ptr %data22 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20, ptr %data22, align 4
  %32 = ptrtoint ptr %pin_conf to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pin_conf, align 4
  %config = getelementptr %struct.st_pinconf, ptr %33, i32 %i.082, i32 2
  %configs = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data22, i32 0, i32 1
  %34 = ptrtoint ptr %configs to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %config, ptr %configs, align 4
  %num_configs = getelementptr inbounds %struct.pinctrl_map_configs, ptr %data22, i32 0, i32 2
  %35 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_configs, align 4
  %inc = add nuw i32 %i.082, 1
  %36 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.do.end30_crit_edge

for.body.do.end30_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end30

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end30:                                         ; preds = %for.body.do.end30_crit_edge, %if.end10.do.end30_crit_edge
  %38 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %map, align 4
  %function32 = getelementptr inbounds %struct.pinctrl_map, ptr %39, i32 0, i32 4, i32 0, i32 1
  %40 = ptrtoint ptr %function32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %function32, align 4
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.48, ptr noundef %41, ptr noundef %43, i32 noundef %add) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %if.then9, %devm_kcalloc.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end30 ], [ -22, %if.then9 ], [ -22, %do.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @st_pctl_dt_free_map(ptr nocapture noundef %pctldev, ptr nocapture noundef %map, i32 noundef %num_maps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pin_get_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pmx_get_funcs_count(ptr noundef %pctldev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %nfunctions = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @st_pmx_get_fname(ptr noundef %pctldev, i32 noundef %selector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %functions = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.st_pmx_func, ptr %1, i32 %selector
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pmx_get_groups(ptr noundef %pctldev, i32 noundef %selector, ptr nocapture noundef writeonly %grps, ptr nocapture noundef writeonly %ngrps) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %functions = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups = getelementptr %struct.st_pmx_func, ptr %1, i32 %selector, i32 1
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups, align 4
  %4 = ptrtoint ptr %grps to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %grps, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.st_pmx_func, ptr %5, i32 %selector, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %ngrps to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ngrps, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pmx_set_mux(ptr noundef %pctldev, i32 noundef %fselector, i32 noundef %group) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %groups = getelementptr inbounds %struct.st_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %groups, align 4
  %pin_conf = getelementptr %struct.st_pctl_group, ptr %1, i32 %group, i32 3
  %2 = ptrtoint ptr %pin_conf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_conf, align 4
  %npins17 = getelementptr %struct.st_pctl_group, ptr %1, i32 %group, i32 2
  %4 = ptrtoint ptr %npins17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp18.not = icmp eq i32 %5, 0
  br i1 %cmp18.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %st_pctl_set_function.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %st_pctl_set_function.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.st_pinconf, ptr %3, i32 %i.019
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %call.i = call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %pctldev, i32 noundef %7) #9
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx3, align 4
  %altfunc = getelementptr %struct.st_pinconf, ptr %3, i32 %i.019, i32 3
  %10 = ptrtoint ptr %altfunc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %altfunc, align 4
  %alt1.i = getelementptr i8, ptr %call.i, i32 44
  %12 = ptrtoint ptr %alt1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alt1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %14 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %val.i, align 4, !annotation !142
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.st_pctl_set_function.exit_crit_edge, label %if.end.i

for.body.st_pctl_set_function.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_set_function.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i.i = srem i32 %9, 8
  %mul.i = shl nsw i32 %rem.i.i, 2
  %call2.i = call i32 @regmap_field_read(ptr noundef nonnull %13, ptr noundef nonnull %val.i) #9
  %shl.i = shl i32 15, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  %and.i = and i32 %16, %neg.i
  %shl3.i = shl i32 %11, %mul.i
  %or.i = or i32 %and.i, %shl3.i
  store i32 %or.i, ptr %val.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %13, i32 noundef -1, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %st_pctl_set_function.exit

st_pctl_set_function.exit:                        ; preds = %if.end.i, %for.body.st_pctl_set_function.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %inc = add nuw i32 %i.019, 1
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %groups, align 4
  %npins = getelementptr %struct.st_pctl_group, ptr %18, i32 %group, i32 2
  %19 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %npins, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %st_pctl_set_function.exit.for.body_crit_edge, label %st_pctl_set_function.exit.for.end_crit_edge

st_pctl_set_function.exit.for.end_crit_edge:      ; preds = %st_pctl_set_function.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

st_pctl_set_function.exit.for.body_crit_edge:     ; preds = %st_pctl_set_function.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %st_pctl_set_function.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pmx_set_gpio_direction(ptr nocapture noundef readnone %pctldev, ptr nocapture noundef readonly %range, i32 noundef %gpio, i1 noundef zeroext %input) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %alt1.i = getelementptr i8, ptr %range, i32 44
  %0 = ptrtoint ptr %alt1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alt1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !142
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.st_pctl_set_function.exit_crit_edge, label %if.end.i

entry.st_pctl_set_function.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pctl_set_function.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rem.i.i = srem i32 %gpio, 8
  %mul.i = shl nsw i32 %rem.i.i, 2
  %call2.i = call i32 @regmap_field_read(ptr noundef nonnull %1, ptr noundef nonnull %val.i) #9
  %shl.i = shl i32 15, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  %and.i = and i32 %4, %neg.i
  store i32 %and.i, ptr %val.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %1, i32 noundef -1, i32 noundef %and.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %st_pctl_set_function.exit

st_pctl_set_function.exit:                        ; preds = %if.end.i, %entry.st_pctl_set_function.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  %cond = select i1 %input, i32 4, i32 2
  %rem.i18.i = and i32 %gpio, 7
  %5 = shl nuw i32 16777216, %rem.i18.i
  %base.i = getelementptr i8, ptr %range, i32 36
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %7, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %5) #9, !srcloc !148
  %and.1.i = and i32 %cond, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  br i1 %tobool.not.1.i, label %do.body2.1.i, label %do.body.1.i

do.body.1.i:                                      ; preds = %st_pctl_set_function.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.1.i = getelementptr i8, ptr %9, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.1.i, i32 %5) #9, !srcloc !148
  br label %for.inc.1.i

do.body2.1.i:                                     ; preds = %st_pctl_set_function.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr9.1.i = getelementptr i8, ptr %9, i32 56
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.1.i, i32 %5) #9, !srcloc !148
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %do.body2.1.i, %do.body.1.i
  %and.2.i = and i32 %cond, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9
  call void @arm_heavy_mb() #9
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  br i1 %tobool.not.2.i, label %do.body2.2.i, label %do.body.2.i

do.body.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.2.i = getelementptr i8, ptr %11, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.2.i, i32 %5) #9, !srcloc !148
  br label %st_gpio_direction.exit

do.body2.2.i:                                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr9.2.i = getelementptr i8, ptr %11, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.2.i, i32 %5) #9, !srcloc !148
  br label %st_gpio_direction.exit

st_gpio_direction.exit:                           ; preds = %do.body2.2.i, %do.body.2.i
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pinconf_get(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef %config) #2 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  %delay0.i.i = alloca i32, align 4
  %delay1.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = srem i32 %pin_id, 8
  %call1 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %call.i = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %pctldev, i32 noundef %pin_id) #9
  %pc.i = getelementptr i8, ptr %call.i, i32 40
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %config, align 4
  tail call fastcc void @st_pinconf_get_direction(ptr noundef %pc.i, i32 noundef %rem.i, ptr noundef %config)
  %data.i = getelementptr inbounds %struct.st_pinctrl, ptr %call1, i32 0, i32 9
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %4, label %entry.st_pinconf_get_retime.exit_crit_edge [
    i32 1, label %if.then.i
    i32 2, label %if.then4.i
  ]

entry.st_pinconf_get_retime.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_get_retime.exit

if.then.i:                                        ; preds = %entry
  %rt.i.i = getelementptr i8, ptr %call.i, i32 60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay0.i.i) #9
  %6 = ptrtoint ptr %delay0.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %delay0.i.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delay1.i.i) #9
  %7 = ptrtoint ptr %delay1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %delay1.i.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #9
  %8 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i.i, align 4, !annotation !142
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %config, align 4
  %retime.i.i = getelementptr i8, ptr %call.i, i32 76
  %11 = ptrtoint ptr %retime.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retime.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %12, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %if.then.i.if.end.i.i_crit_edge

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %13 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i.i, align 4
  %shl.i.i = shl nuw nsw i32 1, %rem.i
  %and2.i.i = and i32 %14, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool3.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %config, align 4
  %or.i.i = or i32 %16, 8388608
  store i32 %or.i.i, ptr %config, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.if.end.i.i_crit_edge
  %17 = ptrtoint ptr %rt.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rt.i.i, align 4
  %call4.i.i = call i32 @regmap_field_read(ptr noundef %18, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true6.i.i, label %if.end.i.i.if.end12.i.i_crit_edge

if.end.i.i.if.end12.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

land.lhs.true6.i.i:                               ; preds = %if.end.i.i
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val.i.i, align 4
  %shl7.i.i = shl nuw nsw i32 1, %rem.i
  %and8.i.i = and i32 %20, %shl7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i)
  %tobool9.not.i.i = icmp eq i32 %and8.i.i, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true6.i.i.if.end12.i.i_crit_edge, label %if.then10.i.i

land.lhs.true6.i.i.if.end12.i.i_crit_edge:        ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %config, align 4
  %or11.i.i = or i32 %22, 262144
  store i32 %or11.i.i, ptr %config, align 4
  br label %if.end12.i.i

if.end12.i.i:                                     ; preds = %if.then10.i.i, %land.lhs.true6.i.i.if.end12.i.i_crit_edge, %if.end.i.i.if.end12.i.i_crit_edge
  %clknotdata.i.i = getelementptr i8, ptr %call.i, i32 80
  %23 = ptrtoint ptr %clknotdata.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clknotdata.i.i, align 4
  %call13.i.i = call i32 @regmap_field_read(ptr noundef %24, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %tobool14.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %tobool14.not.i.i, label %land.lhs.true15.i.i, label %if.end12.i.i.if.end21.i.i_crit_edge

if.end12.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i

land.lhs.true15.i.i:                              ; preds = %if.end12.i.i
  %25 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i.i, align 4
  %shl16.i.i = shl nuw nsw i32 1, %rem.i
  %and17.i.i = and i32 %26, %shl16.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i.i)
  %tobool18.not.i.i = icmp eq i32 %and17.i.i, 0
  br i1 %tobool18.not.i.i, label %land.lhs.true15.i.i.if.end21.i.i_crit_edge, label %if.then19.i.i

land.lhs.true15.i.i.if.end21.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i.i

if.then19.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %config, align 4
  %or20.i.i = or i32 %28, 2097152
  store i32 %or20.i.i, ptr %config, align 4
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then19.i.i, %land.lhs.true15.i.i.if.end21.i.i_crit_edge, %if.end12.i.i.if.end21.i.i_crit_edge
  %double_edge.i.i = getelementptr i8, ptr %call.i, i32 84
  %29 = ptrtoint ptr %double_edge.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %double_edge.i.i, align 4
  %call22.i.i = call i32 @regmap_field_read(ptr noundef %30, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %tobool23.not.i.i = icmp eq i32 %call22.i.i, 0
  br i1 %tobool23.not.i.i, label %land.lhs.true24.i.i, label %if.end21.i.i.if.end30.i.i_crit_edge

if.end21.i.i.if.end30.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

land.lhs.true24.i.i:                              ; preds = %if.end21.i.i
  %31 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i.i, align 4
  %shl25.i.i = shl nuw nsw i32 1, %rem.i
  %and26.i.i = and i32 %32, %shl25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true24.i.i.if.end30.i.i_crit_edge, label %if.then28.i.i

land.lhs.true24.i.i.if.end30.i.i_crit_edge:       ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30.i.i

if.then28.i.i:                                    ; preds = %land.lhs.true24.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %config, align 4
  %or29.i.i = or i32 %34, 1048576
  store i32 %or29.i.i, ptr %config, align 4
  br label %if.end30.i.i

if.end30.i.i:                                     ; preds = %if.then28.i.i, %land.lhs.true24.i.i.if.end30.i.i_crit_edge, %if.end21.i.i.if.end30.i.i_crit_edge
  %invertclk.i.i = getelementptr i8, ptr %call.i, i32 72
  %35 = ptrtoint ptr %invertclk.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %invertclk.i.i, align 4
  %call31.i.i = call i32 @regmap_field_read(ptr noundef %36, ptr noundef nonnull %val.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i.i)
  %tobool32.not.i.i = icmp eq i32 %call31.i.i, 0
  br i1 %tobool32.not.i.i, label %land.lhs.true33.i.i, label %if.end30.i.i.if.end39.i.i_crit_edge

if.end30.i.i.if.end39.i.i_crit_edge:              ; preds = %if.end30.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

land.lhs.true33.i.i:                              ; preds = %if.end30.i.i
  %37 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i.i, align 4
  %shl34.i.i = shl nuw nsw i32 1, %rem.i
  %and35.i.i = and i32 %38, %shl34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i.i)
  %tobool36.not.i.i = icmp eq i32 %and35.i.i, 0
  br i1 %tobool36.not.i.i, label %land.lhs.true33.i.i.if.end39.i.i_crit_edge, label %if.then37.i.i

land.lhs.true33.i.i.if.end39.i.i_crit_edge:       ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true33.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %config, align 4
  %or38.i.i = or i32 %40, 4194304
  store i32 %or38.i.i, ptr %config, align 4
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then37.i.i, %land.lhs.true33.i.i.if.end39.i.i_crit_edge, %if.end30.i.i.if.end39.i.i_crit_edge
  %delay_0.i.i = getelementptr i8, ptr %call.i, i32 64
  %41 = ptrtoint ptr %delay_0.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %delay_0.i.i, align 4
  %call40.i.i = call i32 @regmap_field_read(ptr noundef %42, ptr noundef nonnull %delay0.i.i) #9
  %delay_1.i.i = getelementptr i8, ptr %call.i, i32 68
  %43 = ptrtoint ptr %delay_1.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %delay_1.i.i, align 4
  %call41.i.i = call i32 @regmap_field_read(ptr noundef %44, ptr noundef nonnull %delay1.i.i) #9
  %45 = ptrtoint ptr %delay1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %delay1.i.i, align 4
  %47 = lshr i32 %46, %rem.i
  %48 = shl i32 %47, 1
  %shl45.i.i = and i32 %48, 2
  %49 = ptrtoint ptr %delay0.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay0.i.i, align 4
  %51 = lshr i32 %50, %rem.i
  %52 = and i32 %51, 1
  %or50.i.i = or i32 %shl45.i.i, %52
  %53 = and i32 %10, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i = icmp eq i32 %53, 0
  %noutput_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %2, i32 0, i32 4
  %ninput_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %2, i32 0, i32 2
  %num_delay_times.0.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %ninput_delays.i.i.i, ptr %noutput_delays.i.i.i
  %54 = ptrtoint ptr %num_delay_times.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %num_delay_times.0.i.i.i = load i32, ptr %num_delay_times.0.in.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_delay_times.0.i.i.i, i32 %or50.i.i)
  %cmp.i.i.i = icmp ugt i32 %num_delay_times.0.i.i.i, %or50.i.i
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %do.end.i.i.i

if.then1.i.i.i:                                   ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %input_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %2, i32 0, i32 1
  %output_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %2, i32 0, i32 3
  %delay_times.0.in.i.i.i = select i1 %tobool.not.i.i.i, ptr %input_delays.i.i.i, ptr %output_delays.i.i.i
  %55 = ptrtoint ptr %delay_times.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %delay_times.0.i.i.i = load ptr, ptr %delay_times.0.in.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %delay_times.0.i.i.i, i32 %or50.i.i
  %56 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i.i.i, align 4
  %phi.bo.i.i = and i32 %57, 65535
  br label %st_pinconf_get_retime_packed.exit.i

do.end.i.i.i:                                     ; preds = %if.end39.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %st_pinconf_get_retime_packed.exit.i

st_pinconf_get_retime_packed.exit.i:              ; preds = %do.end.i.i.i, %if.then1.i.i.i
  %retval.0.i.i.i = phi i32 [ %phi.bo.i.i, %if.then1.i.i.i ], [ 0, %do.end.i.i.i ]
  %58 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %config, align 4
  %or54.i.i = or i32 %59, %retval.0.i.i.i
  store i32 %or54.i.i, ptr %config, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay1.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delay0.i.i) #9
  br label %st_pinconf_get_retime.exit

if.then4.i:                                       ; preds = %entry
  %shl.i = shl nuw nsw i32 1, %rem.i
  %60 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pc.i, align 4
  %and.i = and i32 %61, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then4.i.st_pinconf_get_retime.exit_crit_edge, label %if.then5.i

if.then4.i.st_pinconf_get_retime.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_get_retime.exit

if.then5.i:                                       ; preds = %if.then4.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #9
  %62 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %value.i.i, align 4, !annotation !142
  %63 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %config, align 4
  %rt.i17.i = getelementptr i8, ptr %call.i, i32 60
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %rt.i17.i, i32 0, i32 %rem.i
  %65 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i18.i = call i32 @regmap_field_read(ptr noundef %66, ptr noundef nonnull %value.i.i) #9
  %67 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %value.i.i, align 4
  %and2.i19.i = shl i32 %68, 18
  %shl.i20.i = and i32 %and2.i19.i, 786432
  %69 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %config, align 4
  %or.i21.i = or i32 %shl.i20.i, %70
  store i32 %or.i21.i, ptr %config, align 4
  %and5.i.i = lshr i32 %68, 3
  %shr6.i.i = and i32 %and5.i.i, 15
  %71 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i, align 4
  %73 = and i32 %64, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i.i22.i = icmp eq i32 %73, 0
  %noutput_delays.i.i23.i = getelementptr inbounds %struct.st_pctl_data, ptr %72, i32 0, i32 4
  %ninput_delays.i.i24.i = getelementptr inbounds %struct.st_pctl_data, ptr %72, i32 0, i32 2
  %num_delay_times.0.in.i.i25.i = select i1 %tobool.not.i.i22.i, ptr %ninput_delays.i.i24.i, ptr %noutput_delays.i.i23.i
  %74 = ptrtoint ptr %num_delay_times.0.in.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %num_delay_times.0.i.i26.i = load i32, ptr %num_delay_times.0.in.i.i25.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %num_delay_times.0.i.i26.i, i32 %shr6.i.i)
  %cmp.i.i27.i = icmp ugt i32 %num_delay_times.0.i.i26.i, %shr6.i.i
  br i1 %cmp.i.i27.i, label %if.then1.i.i34.i, label %do.end.i.i36.i

if.then1.i.i34.i:                                 ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %input_delays.i.i28.i = getelementptr inbounds %struct.st_pctl_data, ptr %72, i32 0, i32 1
  %output_delays.i.i29.i = getelementptr inbounds %struct.st_pctl_data, ptr %72, i32 0, i32 3
  %delay_times.0.in.i.i30.i = select i1 %tobool.not.i.i22.i, ptr %input_delays.i.i28.i, ptr %output_delays.i.i29.i
  %75 = ptrtoint ptr %delay_times.0.in.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %delay_times.0.i.i31.i = load ptr, ptr %delay_times.0.in.i.i30.i, align 4
  %arrayidx.i.i32.i = getelementptr i32, ptr %delay_times.0.i.i31.i, i32 %shr6.i.i
  %76 = ptrtoint ptr %arrayidx.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i32.i, align 4
  %phi.bo.i33.i = and i32 %77, 65535
  br label %st_pinconf_bit_to_delay.exit.i.i

do.end.i.i36.i:                                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #12
  br label %st_pinconf_bit_to_delay.exit.i.i

st_pinconf_bit_to_delay.exit.i.i:                 ; preds = %do.end.i.i36.i, %if.then1.i.i34.i
  %retval.0.i.i37.i = phi i32 [ %phi.bo.i33.i, %if.then1.i.i34.i ], [ 0, %do.end.i.i36.i ]
  %78 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %config, align 4
  %or10.i.i = or i32 %79, %retval.0.i.i37.i
  store i32 %or10.i.i, ptr %config, align 4
  %80 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %value.i.i, align 4
  %and11.i.i = and i32 %81, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i.i)
  %tobool.not.i38.i = icmp eq i32 %and11.i.i, 0
  br i1 %tobool.not.i38.i, label %st_pinconf_bit_to_delay.exit.i.i.if.end.i41.i_crit_edge, label %if.then.i39.i

st_pinconf_bit_to_delay.exit.i.i.if.end.i41.i_crit_edge: ; preds = %st_pinconf_bit_to_delay.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i41.i

if.then.i39.i:                                    ; preds = %st_pinconf_bit_to_delay.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %or12.i.i = or i32 %or10.i.i, 2097152
  %82 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %or12.i.i, ptr %config, align 4
  br label %if.end.i41.i

if.end.i41.i:                                     ; preds = %if.then.i39.i, %st_pinconf_bit_to_delay.exit.i.i.if.end.i41.i_crit_edge
  %and13.i.i = and i32 %81, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool14.not.i40.i = icmp eq i32 %and13.i.i, 0
  br i1 %tobool14.not.i40.i, label %if.end.i41.i.if.end17.i.i_crit_edge, label %if.then15.i.i

if.end.i41.i.if.end17.i.i_crit_edge:              ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i.i

if.then15.i.i:                                    ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %config, align 4
  %or16.i.i = or i32 %84, 1048576
  store i32 %or16.i.i, ptr %config, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then15.i.i, %if.end.i41.i.if.end17.i.i_crit_edge
  %and18.i.i = and i32 %81, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end17.i.i.if.end22.i.i_crit_edge, label %if.then20.i.i

if.end17.i.i.if.end22.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22.i.i

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %config, align 4
  %or21.i.i = or i32 %86, 4194304
  store i32 %or21.i.i, ptr %config, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.then20.i.i, %if.end17.i.i.if.end22.i.i_crit_edge
  %and23.i.i = and i32 %81, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %tobool24.not.i.i = icmp eq i32 %and23.i.i, 0
  br i1 %tobool24.not.i.i, label %if.end22.i.i.st_pinconf_get_retime_dedicated.exit.i_crit_edge, label %if.then25.i.i

if.end22.i.i.st_pinconf_get_retime_dedicated.exit.i_crit_edge: ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_get_retime_dedicated.exit.i

if.then25.i.i:                                    ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %config, align 4
  %or26.i.i = or i32 %88, 8388608
  store i32 %or26.i.i, ptr %config, align 4
  br label %st_pinconf_get_retime_dedicated.exit.i

st_pinconf_get_retime_dedicated.exit.i:           ; preds = %if.then25.i.i, %if.end22.i.i.st_pinconf_get_retime_dedicated.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #9
  br label %st_pinconf_get_retime.exit

st_pinconf_get_retime.exit:                       ; preds = %st_pinconf_get_retime_dedicated.exit.i, %if.then4.i.st_pinconf_get_retime.exit_crit_edge, %st_pinconf_get_retime_packed.exit.i, %entry.st_pinconf_get_retime.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @st_pinconf_set(ptr noundef %pctldev, i32 noundef %pin_id, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  %val.i95.i.i = alloca i32, align 4
  %val.i83.i.i = alloca i32, align 4
  %val.i69.i.i = alloca i32, align 4
  %val.i57.i.i = alloca i32, align 4
  %val.i45.i.i = alloca i32, align 4
  %val.i33.i.i = alloca i32, align 4
  %val.i.i.i = alloca i32, align 4
  %oe_value.i = alloca i32, align 4
  %pu_value.i = alloca i32, align 4
  %od_value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %call.i = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %pctldev, i32 noundef %pin_id) #9
  %pc.i = getelementptr i8, ptr %call.i, i32 40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp19.not = icmp eq i32 %num_configs, 0
  br i1 %cmp19.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %rem.i = srem i32 %pin_id, 8
  %oe.i = getelementptr i8, ptr %call.i, i32 48
  %pu.i = getelementptr i8, ptr %call.i, i32 52
  %od.i = getelementptr i8, ptr %call.i, i32 56
  %shl.i = shl nuw nsw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %data.i = getelementptr inbounds %struct.st_pinctrl, ptr %call1, i32 0, i32 9
  %rt.i44.i = getelementptr i8, ptr %call.i, i32 60
  %arrayidx.i.i = getelementptr [8 x ptr], ptr %rt.i44.i, i32 0, i32 %rem.i
  %clknotdata.i.i = getelementptr i8, ptr %call.i, i32 80
  %double_edge.i.i = getelementptr i8, ptr %call.i, i32 84
  %invertclk.i.i = getelementptr i8, ptr %call.i, i32 72
  %retime.i.i = getelementptr i8, ptr %call.i, i32 76
  %delay_0.i.i = getelementptr i8, ptr %call.i, i32 64
  %delay_1.i.i = getelementptr i8, ptr %call.i, i32 68
  br label %for.body

for.body:                                         ; preds = %st_pinconf_set_retime.exit.for.body_crit_edge, %for.body.lr.ph
  %i.020 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %st_pinconf_set_retime.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.020
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = ptrtoint ptr %oe.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %oe.i, align 4
  %4 = ptrtoint ptr %pu.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pu.i, align 4
  %6 = ptrtoint ptr %od.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %od.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %oe_value.i) #9
  %8 = ptrtoint ptr %oe_value.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %oe_value.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pu_value.i) #9
  %9 = ptrtoint ptr %pu_value.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %pu_value.i, align 4, !annotation !142
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od_value.i) #9
  %10 = ptrtoint ptr %od_value.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %od_value.i, align 4, !annotation !142
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.if.end5.i_crit_edge, label %if.then.i

for.body.if.end5.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i12 = call i32 @regmap_field_read(ptr noundef nonnull %3, ptr noundef nonnull %oe_value.i) #9
  %11 = ptrtoint ptr %oe_value.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %oe_value.i, align 4
  %and.i = and i32 %12, %neg.i
  %and1.i = and i32 %1, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %or.i = or i32 %12, %shl.i
  %spec.select.i = select i1 %tobool2.not.i, i32 %and.i, i32 %or.i
  %13 = ptrtoint ptr %oe_value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %oe_value.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %3, i32 noundef -1, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then.i, %for.body.if.end5.i_crit_edge
  %tobool6.not.i = icmp eq ptr %5, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end17.i_crit_edge, label %if.then7.i

if.end5.i.if.end17.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %call8.i = call i32 @regmap_field_read(ptr noundef nonnull %5, ptr noundef nonnull %pu_value.i) #9
  %14 = ptrtoint ptr %pu_value.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pu_value.i, align 4
  %and10.i = and i32 %15, %neg.i
  %and11.i = and i32 %1, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  %or14.i = or i32 %15, %shl.i
  %spec.select49.i = select i1 %tobool12.not.i, i32 %and10.i, i32 %or14.i
  %16 = ptrtoint ptr %pu_value.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select49.i, ptr %pu_value.i, align 4
  %call.i51.i = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %5, i32 noundef -1, i32 noundef %spec.select49.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then7.i, %if.end5.i.if.end17.i_crit_edge
  %tobool18.not.i = icmp eq ptr %7, null
  br i1 %tobool18.not.i, label %if.end17.i.st_pinconf_set_config.exit_crit_edge, label %if.then19.i

if.end17.i.st_pinconf_set_config.exit_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_set_config.exit

if.then19.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  %call20.i = call i32 @regmap_field_read(ptr noundef nonnull %7, ptr noundef nonnull %od_value.i) #9
  %17 = ptrtoint ptr %od_value.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %od_value.i, align 4
  %and22.i = and i32 %18, %neg.i
  %and23.i = and i32 %1, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  %or26.i = or i32 %18, %shl.i
  %spec.select50.i = select i1 %tobool24.not.i, i32 %and22.i, i32 %or26.i
  %19 = ptrtoint ptr %od_value.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select50.i, ptr %od_value.i, align 4
  %call.i52.i = call i32 @regmap_field_update_bits_base(ptr noundef nonnull %7, i32 noundef -1, i32 noundef %spec.select50.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %st_pinconf_set_config.exit

st_pinconf_set_config.exit:                       ; preds = %if.then19.i, %if.end17.i.st_pinconf_set_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od_value.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pu_value.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %oe_value.i) #9
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %22 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %25, label %st_pinconf_set_config.exit.st_pinconf_set_retime.exit_crit_edge [
    i32 1, label %if.then.i13
    i32 2, label %if.then4.i
  ]

st_pinconf_set_config.exit.st_pinconf_set_retime.exit_crit_edge: ; preds = %st_pinconf_set_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_set_retime.exit

if.then.i13:                                      ; preds = %st_pinconf_set_config.exit
  %27 = ptrtoint ptr %rt.i44.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rt.i44.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %29 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %val.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %val.i.i.i) #9
  %30 = and i32 %21, 786432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i.i = icmp eq i32 %30, 0
  %31 = ptrtoint ptr %val.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val.i.i.i, align 4
  %and.i.i.i = and i32 %32, %neg.i
  %or.i.i.i = or i32 %32, %shl.i
  %storemerge.i.i.i = select i1 %tobool.not.i.i.i, i32 %and.i.i.i, i32 %or.i.i.i
  store i32 %storemerge.i.i.i, ptr %val.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %28, i32 noundef -1, i32 noundef %storemerge.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i.i) #9
  %33 = ptrtoint ptr %clknotdata.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clknotdata.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i33.i.i) #9
  %35 = ptrtoint ptr %val.i33.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %val.i33.i.i, align 4
  %call.i34.i.i = call i32 @regmap_field_read(ptr noundef %34, ptr noundef nonnull %val.i33.i.i) #9
  %36 = and i32 %21, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i35.i.i = icmp eq i32 %36, 0
  %37 = ptrtoint ptr %val.i33.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val.i33.i.i, align 4
  %and.i40.i.i = and i32 %38, %neg.i
  %or.i37.i.i = or i32 %38, %shl.i
  %storemerge.i42.i.i = select i1 %tobool.not.i35.i.i, i32 %and.i40.i.i, i32 %or.i37.i.i
  store i32 %storemerge.i42.i.i, ptr %val.i33.i.i, align 4
  %call.i.i43.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %34, i32 noundef -1, i32 noundef %storemerge.i42.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i33.i.i) #9
  %39 = ptrtoint ptr %double_edge.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %double_edge.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i45.i.i) #9
  %41 = ptrtoint ptr %val.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %val.i45.i.i, align 4
  %call.i46.i.i = call i32 @regmap_field_read(ptr noundef %40, ptr noundef nonnull %val.i45.i.i) #9
  %42 = and i32 %21, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i47.i.i = icmp eq i32 %42, 0
  %43 = ptrtoint ptr %val.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i45.i.i, align 4
  %and.i52.i.i = and i32 %44, %neg.i
  %or.i49.i.i = or i32 %44, %shl.i
  %storemerge.i54.i.i = select i1 %tobool.not.i47.i.i, i32 %and.i52.i.i, i32 %or.i49.i.i
  store i32 %storemerge.i54.i.i, ptr %val.i45.i.i, align 4
  %call.i.i55.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %40, i32 noundef -1, i32 noundef %storemerge.i54.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i45.i.i) #9
  %45 = ptrtoint ptr %invertclk.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %invertclk.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i57.i.i) #9
  %47 = ptrtoint ptr %val.i57.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %val.i57.i.i, align 4
  %call.i58.i.i = call i32 @regmap_field_read(ptr noundef %46, ptr noundef nonnull %val.i57.i.i) #9
  %48 = and i32 %21, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i59.i.i = icmp eq i32 %48, 0
  %49 = ptrtoint ptr %val.i57.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i57.i.i, align 4
  %and.i64.i.i = and i32 %50, %neg.i
  %or.i61.i.i = or i32 %50, %shl.i
  %storemerge.i66.i.i = select i1 %tobool.not.i59.i.i, i32 %and.i64.i.i, i32 %or.i61.i.i
  store i32 %storemerge.i66.i.i, ptr %val.i57.i.i, align 4
  %call.i.i67.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %46, i32 noundef -1, i32 noundef %storemerge.i66.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i57.i.i) #9
  %51 = ptrtoint ptr %retime.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %retime.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i69.i.i) #9
  %53 = ptrtoint ptr %val.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %val.i69.i.i, align 4
  %call.i70.i.i = call i32 @regmap_field_read(ptr noundef %52, ptr noundef nonnull %val.i69.i.i) #9
  %54 = and i32 %21, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i71.i.i = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %val.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val.i69.i.i, align 4
  %and.i76.i.i = and i32 %56, %neg.i
  %or.i73.i.i = or i32 %56, %shl.i
  %storemerge.i78.i.i = select i1 %tobool.not.i71.i.i, i32 %and.i76.i.i, i32 %or.i73.i.i
  store i32 %storemerge.i78.i.i, ptr %val.i69.i.i, align 4
  %call.i.i79.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %52, i32 noundef -1, i32 noundef %storemerge.i78.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i69.i.i) #9
  %and11.i.i = and i32 %21, 65535
  %57 = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i81.i.i = icmp eq i32 %57, 0
  %output_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 3
  %noutput_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 4
  %input_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 1
  %ninput_delays.i.i.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 2
  %num_delay_times.0.in.i.i.i = select i1 %tobool.not.i81.i.i, ptr %ninput_delays.i.i.i, ptr %noutput_delays.i.i.i
  %delay_times.0.in.i.i.i = select i1 %tobool.not.i81.i.i, ptr %input_delays.i.i.i, ptr %output_delays.i.i.i
  %58 = ptrtoint ptr %delay_times.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %delay_times.0.i.i.i = load ptr, ptr %delay_times.0.in.i.i.i, align 4
  %59 = ptrtoint ptr %num_delay_times.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %num_delay_times.0.i.i.i = load i32, ptr %num_delay_times.0.in.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_delay_times.0.i.i.i)
  %cmp34.i.i.i = icmp sgt i32 %num_delay_times.0.i.i.i, 0
  br i1 %cmp34.i.i.i, label %if.then.i13.for.body.i.i.i_crit_edge, label %if.then.i13.do.end.i.i.i_crit_edge

if.then.i13.do.end.i.i.i_crit_edge:               ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

if.then.i13.for.body.i.i.i_crit_edge:             ; preds = %if.then.i13
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.then.i13.for.body.i.i.i_crit_edge
  %closest_divergence.037.i.i.i = phi i32 [ %63, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ -1, %if.then.i13.for.body.i.i.i_crit_edge ]
  %closest_index.036.i.i.i = phi i32 [ %spec.select.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ -1, %if.then.i13.for.body.i.i.i_crit_edge ]
  %i.035.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.then.i13.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i32, ptr %delay_times.0.i.i.i, i32 %i.035.i.i.i
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and11.i.i, i32 %61)
  %cmp3.i.i.i = icmp eq i32 %and11.i.i, %61
  br i1 %cmp3.i.i.i, label %for.body.i.i.i.st_pinconf_delay_to_bit.exit.i.i_crit_edge, label %for.inc.i.i.i

for.body.i.i.i.st_pinconf_delay_to_bit.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_delay_to_bit.exit.i.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %sub.i.i.i = sub i32 %and11.i.i, %61
  %62 = call i32 @llvm.abs.i32(i32 %sub.i.i.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %closest_divergence.037.i.i.i)
  %cmp6.i.i.i = icmp ult i32 %62, %closest_divergence.037.i.i.i
  %63 = call i32 @llvm.umin.i32(i32 %62, i32 %closest_divergence.037.i.i.i) #9
  %spec.select.i.i.i = select i1 %cmp6.i.i.i, i32 %i.035.i.i.i, i32 %closest_index.036.i.i.i
  %inc.i.i.i = add nuw nsw i32 %i.035.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %num_delay_times.0.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.do.end.i.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i.i

for.inc.i.i.i.do.end.i.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %for.inc.i.i.i.do.end.i.i.i_crit_edge, %if.then.i13.do.end.i.i.i_crit_edge
  %closest_index.0.lcssa.i.i.i = phi i32 [ -1, %if.then.i13.do.end.i.i.i_crit_edge ], [ %spec.select.i.i.i, %for.inc.i.i.i.do.end.i.i.i_crit_edge ]
  %arrayidx10.i.i.i = getelementptr i32, ptr %delay_times.0.i.i.i, i32 %closest_index.0.lcssa.i.i.i
  %64 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx10.i.i.i, align 4
  %call.i82.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %and11.i.i, i32 noundef %65) #12
  br label %st_pinconf_delay_to_bit.exit.i.i

st_pinconf_delay_to_bit.exit.i.i:                 ; preds = %do.end.i.i.i, %for.body.i.i.i.st_pinconf_delay_to_bit.exit.i.i_crit_edge
  %retval.2.i.i.i = phi i32 [ %closest_index.0.lcssa.i.i.i, %do.end.i.i.i ], [ %i.035.i.i.i, %for.body.i.i.i.st_pinconf_delay_to_bit.exit.i.i_crit_edge ]
  %66 = ptrtoint ptr %delay_0.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %delay_0.i.i, align 4
  %and12.i.i = and i32 %retval.2.i.i.i, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i83.i.i) #9
  %68 = ptrtoint ptr %val.i83.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %val.i83.i.i, align 4
  %call.i84.i.i = call i32 @regmap_field_read(ptr noundef %67, ptr noundef nonnull %val.i83.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool.not.i85.i.i = icmp eq i32 %and12.i.i, 0
  %69 = ptrtoint ptr %val.i83.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val.i83.i.i, align 4
  %and.i90.i.i = and i32 %70, %neg.i
  %or.i87.i.i = or i32 %70, %shl.i
  %storemerge.i92.i.i = select i1 %tobool.not.i85.i.i, i32 %and.i90.i.i, i32 %or.i87.i.i
  store i32 %storemerge.i92.i.i, ptr %val.i83.i.i, align 4
  %call.i.i93.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %67, i32 noundef -1, i32 noundef %storemerge.i92.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i83.i.i) #9
  %71 = ptrtoint ptr %delay_1.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %delay_1.i.i, align 4
  %and13.i.i = and i32 %retval.2.i.i.i, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i95.i.i) #9
  %73 = ptrtoint ptr %val.i95.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %val.i95.i.i, align 4
  %call.i96.i.i = call i32 @regmap_field_read(ptr noundef %72, ptr noundef nonnull %val.i95.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i.i)
  %tobool.not.i97.i.i = icmp eq i32 %and13.i.i, 0
  %74 = ptrtoint ptr %val.i95.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val.i95.i.i, align 4
  %and.i102.i.i = and i32 %75, %neg.i
  %or.i99.i.i = or i32 %75, %shl.i
  %storemerge.i104.i.i = select i1 %tobool.not.i97.i.i, i32 %and.i102.i.i, i32 %or.i99.i.i
  store i32 %storemerge.i104.i.i, ptr %val.i95.i.i, align 4
  %call.i.i105.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %72, i32 noundef -1, i32 noundef %storemerge.i104.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i95.i.i) #9
  br label %st_pinconf_set_retime.exit

if.then4.i:                                       ; preds = %st_pinconf_set_config.exit
  %76 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %pc.i, align 4
  %and.i15 = and i32 %77, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i15)
  %tobool.not.i16 = icmp eq i32 %and.i15, 0
  br i1 %tobool.not.i16, label %if.then4.i.st_pinconf_set_retime.exit_crit_edge, label %if.then5.i

if.then4.i.st_pinconf_set_retime.exit_crit_edge:  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_set_retime.exit

if.then5.i:                                       ; preds = %if.then4.i
  %and12.i16.i = and i32 %21, 65535
  %78 = and i32 %21, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.not.i.i17.i = icmp eq i32 %78, 0
  %output_delays.i.i18.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 3
  %noutput_delays.i.i19.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 4
  %input_delays.i.i20.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 1
  %ninput_delays.i.i21.i = getelementptr inbounds %struct.st_pctl_data, ptr %23, i32 0, i32 2
  %num_delay_times.0.in.i.i22.i = select i1 %tobool.not.i.i17.i, ptr %ninput_delays.i.i21.i, ptr %noutput_delays.i.i19.i
  %delay_times.0.in.i.i23.i = select i1 %tobool.not.i.i17.i, ptr %input_delays.i.i20.i, ptr %output_delays.i.i18.i
  %79 = ptrtoint ptr %delay_times.0.in.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %delay_times.0.i.i24.i = load ptr, ptr %delay_times.0.in.i.i23.i, align 4
  %80 = ptrtoint ptr %num_delay_times.0.in.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %num_delay_times.0.i.i25.i = load i32, ptr %num_delay_times.0.in.i.i22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_delay_times.0.i.i25.i)
  %cmp34.i.i26.i = icmp sgt i32 %num_delay_times.0.i.i25.i, 0
  br i1 %cmp34.i.i26.i, label %if.then5.i.for.body.i.i32.i_crit_edge, label %if.then5.i.do.end.i.i42.i_crit_edge

if.then5.i.do.end.i.i42.i_crit_edge:              ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i42.i

if.then5.i.for.body.i.i32.i_crit_edge:            ; preds = %if.then5.i
  br label %for.body.i.i32.i

for.body.i.i32.i:                                 ; preds = %for.inc.i.i38.i.for.body.i.i32.i_crit_edge, %if.then5.i.for.body.i.i32.i_crit_edge
  %closest_divergence.037.i.i27.i = phi i32 [ %84, %for.inc.i.i38.i.for.body.i.i32.i_crit_edge ], [ -1, %if.then5.i.for.body.i.i32.i_crit_edge ]
  %closest_index.036.i.i28.i = phi i32 [ %spec.select.i.i35.i, %for.inc.i.i38.i.for.body.i.i32.i_crit_edge ], [ -1, %if.then5.i.for.body.i.i32.i_crit_edge ]
  %i.035.i.i29.i = phi i32 [ %inc.i.i36.i, %for.inc.i.i38.i.for.body.i.i32.i_crit_edge ], [ 0, %if.then5.i.for.body.i.i32.i_crit_edge ]
  %arrayidx.i.i30.i = getelementptr i32, ptr %delay_times.0.i.i24.i, i32 %i.035.i.i29.i
  %81 = ptrtoint ptr %arrayidx.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i.i30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and12.i16.i, i32 %82)
  %cmp3.i.i31.i = icmp eq i32 %and12.i16.i, %82
  br i1 %cmp3.i.i31.i, label %for.body.i.i32.i.st_pinconf_set_retime_dedicated.exit.i_crit_edge, label %for.inc.i.i38.i

for.body.i.i32.i.st_pinconf_set_retime_dedicated.exit.i_crit_edge: ; preds = %for.body.i.i32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %st_pinconf_set_retime_dedicated.exit.i

for.inc.i.i38.i:                                  ; preds = %for.body.i.i32.i
  %sub.i.i33.i = sub i32 %and12.i16.i, %82
  %83 = call i32 @llvm.abs.i32(i32 %sub.i.i33.i, i1 false) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %closest_divergence.037.i.i27.i)
  %cmp6.i.i34.i = icmp ult i32 %83, %closest_divergence.037.i.i27.i
  %84 = call i32 @llvm.umin.i32(i32 %83, i32 %closest_divergence.037.i.i27.i) #9
  %spec.select.i.i35.i = select i1 %cmp6.i.i34.i, i32 %i.035.i.i29.i, i32 %closest_index.036.i.i28.i
  %inc.i.i36.i = add nuw nsw i32 %i.035.i.i29.i, 1
  %exitcond.not.i.i37.i = icmp eq i32 %inc.i.i36.i, %num_delay_times.0.i.i25.i
  br i1 %exitcond.not.i.i37.i, label %for.inc.i.i38.i.do.end.i.i42.i_crit_edge, label %for.inc.i.i38.i.for.body.i.i32.i_crit_edge

for.inc.i.i38.i.for.body.i.i32.i_crit_edge:       ; preds = %for.inc.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i32.i

for.inc.i.i38.i.do.end.i.i42.i_crit_edge:         ; preds = %for.inc.i.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i.i42.i

do.end.i.i42.i:                                   ; preds = %for.inc.i.i38.i.do.end.i.i42.i_crit_edge, %if.then5.i.do.end.i.i42.i_crit_edge
  %closest_index.0.lcssa.i.i39.i = phi i32 [ -1, %if.then5.i.do.end.i.i42.i_crit_edge ], [ %spec.select.i.i35.i, %for.inc.i.i38.i.do.end.i.i42.i_crit_edge ]
  %arrayidx10.i.i40.i = getelementptr i32, ptr %delay_times.0.i.i24.i, i32 %closest_index.0.lcssa.i.i39.i
  %85 = ptrtoint ptr %arrayidx10.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx10.i.i40.i, align 4
  %call.i.i41.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %and12.i16.i, i32 noundef %86) #12
  br label %st_pinconf_set_retime_dedicated.exit.i

st_pinconf_set_retime_dedicated.exit.i:           ; preds = %do.end.i.i42.i, %for.body.i.i32.i.st_pinconf_set_retime_dedicated.exit.i_crit_edge
  %retval.2.i.i43.i = phi i32 [ %closest_index.0.lcssa.i.i39.i, %do.end.i.i42.i ], [ %i.035.i.i29.i, %for.body.i.i32.i.st_pinconf_set_retime_dedicated.exit.i_crit_edge ]
  %shr1.i.i = lshr i32 %21, 18
  %and2.i.i = and i32 %shr1.i.i, 3
  %shl13.i.i = shl i32 %retval.2.i.i43.i, 3
  %or.i.i = or i32 %shl13.i.i, %and2.i.i
  %87 = lshr i32 %21, 20
  %88 = and i32 %87, 128
  %89 = lshr i32 %21, 13
  %shl16.i.i = and i32 %89, 1024
  %90 = lshr i32 %21, 19
  %shl18.i.i = and i32 %90, 4
  %shl20.i.i = and i32 %89, 512
  %91 = lshr i32 %21, 12
  %shl22.i.i = and i32 %91, 256
  %or15.i.i = or i32 %shl18.i.i, %shl16.i.i
  %or17.i.i = or i32 %or15.i.i, %shl20.i.i
  %or19.i.i = or i32 %or17.i.i, %shl22.i.i
  %92 = or i32 %or19.i.i, %88
  %or21.i.i = xor i32 %92, 128
  %or23.i.i = or i32 %or.i.i, %or21.i.i
  %93 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i33.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %94, i32 noundef -1, i32 noundef %or23.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %st_pinconf_set_retime.exit

st_pinconf_set_retime.exit:                       ; preds = %st_pinconf_set_retime_dedicated.exit.i, %if.then4.i.st_pinconf_set_retime.exit_crit_edge, %st_pinconf_delay_to_bit.exit.i.i, %st_pinconf_set_config.exit.st_pinconf_set_retime.exit_crit_edge
  %inc = add nuw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %st_pinconf_set_retime.exit.for.end_crit_edge, label %st_pinconf_set_retime.exit.for.body_crit_edge

st_pinconf_set_retime.exit.for.body_crit_edge:    ; preds = %st_pinconf_set_retime.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

st_pinconf_set_retime.exit.for.end_crit_edge:     ; preds = %st_pinconf_set_retime.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %st_pinconf_set_retime.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @st_pinconf_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %pin_id) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %config = alloca i32, align 4
  %f = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !142
  %rem.i = srem i32 %pin_id, 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %f) #9
  %mutex = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 14
  %1 = call ptr @memset(ptr %f, i32 255, i32 16)
  tail call void @mutex_unlock(ptr noundef %mutex) #9
  %call.i = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %pctldev, i32 noundef %pin_id) #9
  %call2 = call i32 @st_pinconf_get(ptr noundef %pctldev, i32 noundef %pin_id, ptr noundef nonnull %config)
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #9
  %alt1.i = getelementptr i8, ptr %call.i, i32 44
  %2 = ptrtoint ptr %alt1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alt1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !142
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %st_pctl_get_pin_function.exit.thread, label %st_pctl_get_pin_function.exit

st_pctl_get_pin_function.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.else

st_pctl_get_pin_function.exit:                    ; preds = %entry
  %mul.i = shl nsw i32 %rem.i, 2
  %call.i32 = call i32 @regmap_field_read(ptr noundef nonnull %3, ptr noundef nonnull %val.i) #9
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %shr.i = lshr i32 %6, %mul.i
  %and.i = and i32 %shr.i, 15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %st_pctl_get_pin_function.exit.if.else_crit_edge, label %if.then

st_pctl_get_pin_function.exit.if.else_crit_edge:  ; preds = %st_pctl_get_pin_function.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %st_pctl_get_pin_function.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %f, i32 noundef 10, ptr noundef nonnull @.str.54, i32 noundef %and.i)
  br label %if.end

if.else:                                          ; preds = %st_pctl_get_pin_function.exit.if.else_crit_edge, %st_pctl_get_pin_function.exit.thread
  %7 = call ptr @memcpy(ptr %f, ptr @.str.36, i32 5)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %add.ptr = getelementptr i8, ptr %call.i, i32 -348
  %call8 = call i32 @st_gpio_get_direction(ptr noundef %add.ptr, i32 noundef %rem.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp eq i32 %call8, 0
  %conv = zext i1 %cmp to i32
  %8 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %config, align 4
  %shr = lshr i32 %9, 26
  %and = and i32 %shr, 1
  %shr9 = lshr i32 %9, 25
  %and10 = and i32 %shr9, 1
  %shr12 = lshr i32 %9, 23
  %and13 = and i32 %shr12, 1
  %shr14 = lshr i32 %9, 22
  %and15 = and i32 %shr14, 1
  %shr16 = lshr i32 %9, 21
  %and17 = and i32 %shr16, 1
  %shr18 = lshr i32 %9, 20
  %and19 = and i32 %shr18, 1
  %shr20 = lshr i32 %9, 18
  %and21 = and i32 %shr20, 3
  %and23 = and i32 %9, 65535
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %conv, i32 noundef %and, i32 noundef %and10, ptr noundef nonnull %f, i32 noundef %and13, i32 noundef %and15, i32 noundef %and17, i32 noundef %and19, i32 noundef %and21, i32 noundef %and23) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %f) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 71)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !46, !48, !49, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !65, !67, !68, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @__initcall__kmod_pinctrl_st__223_1719_st_pctl_init3, !1, !"__initcall__kmod_pinctrl_st__223_1719_st_pctl_init3", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1719, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1709, i32 11}
!4 = !{ptr @st_pctl_driver, !5, !"st_pctl_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1707, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1673, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @st_pctl_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @st_pctl_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1699, i32 50}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1585, i32 38}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1587, i32 2}
!20 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @st_pctl_probe_dt._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @st_pctl_probe_dt._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1588, i32 2}
!26 = !{ptr @st_pctl_probe_dt._entry.11, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @st_pctl_probe_dt._entry_ptr.13, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1589, i32 2}
!30 = !{ptr @st_pctl_probe_dt._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @st_pctl_probe_dt._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1600, i32 53}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1602, i32 52}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1608, i32 67}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1625, i32 36}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1655, i32 5}
!42 = !{ptr @st_pctl_probe_dt._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @st_pctl_probe_dt._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1481, i32 37}
!46 = !{ptr @st_gpiolib_register_bank.__key, !47, !"__key", i1 false, i1 false}
!47 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1497, i32 2}
!48 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1499, i32 30}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1532, i32 4}
!53 = !{ptr @.str.28, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @st_gpiolib_register_bank._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @st_gpiolib_register_bank._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1537, i32 4}
!58 = !{ptr @st_gpiolib_register_bank._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @st_gpiolib_register_bank._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @st_gpiolib_register_bank.lock_key, !61, !"lock_key", i1 false, i1 false}
!61 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1555, i32 9}
!62 = !{ptr @st_gpiolib_register_bank.request_key, !61, !"request_key", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1557, i32 34}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1558, i32 2}
!67 = !{ptr @st_gpiolib_register_bank._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @st_gpiolib_register_bank._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @st_gpio_template, !70, !"st_gpio_template", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1453, i32 31}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1465, i32 12}
!73 = !{ptr @st_gpio_irqchip, !74, !"st_gpio_irqchip", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1464, i32 24}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1159, i32 27}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1259, i32 38}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1275, i32 2}
!81 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @st_pctl_parse_functions._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @st_pctl_parse_functions._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1180, i32 34}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1186, i32 25}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1192, i32 4}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @st_pctl_dt_parse_groups._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @st_pctl_dt_parse_groups._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @st_pctlops, !94, !"st_pctlops", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 866, i32 33}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 824, i32 3}
!97 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @st_pctl_dt_node_to_map._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @st_pctl_dt_node_to_map._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 855, i32 2}
!102 = !{ptr @st_pctl_dt_node_to_map._entry.47, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @st_pctl_dt_node_to_map._entry_ptr.49, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @st_pmxops, !105, !"st_pmxops", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 933, i32 32}
!106 = !{ptr @st_confops, !107, !"st_confops", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1032, i32 33}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 498, i32 3}
!110 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @st_pinconf_bit_to_delay._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @st_pinconf_bit_to_delay._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 475, i32 2}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @st_pinconf_delay_to_bit._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @st_pinconf_delay_to_bit._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1012, i32 19}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1017, i32 16}
!122 = !{ptr @st_pctl_of_match, !123, !"st_pctl_of_match", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 1563, i32 34}
!124 = !{ptr @stih407_data, !125, !"stih407_data", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 340, i32 35}
!126 = !{ptr @stih407_delays, !127, !"stih407_delays", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 337, i32 27}
!128 = !{ptr @stih407_flashdata, !129, !"stih407_flashdata", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-st.c", i32 349, i32 34}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{!"branch_weights", i32 1, i32 2000}
!140 = !{i64 4980026}
!141 = !{i64 2154030246}
!142 = !{!"auto-init"}
!143 = !{i64 2154027510}
!144 = !{i64 2154028001}
!145 = !{i64 2154028492}
!146 = !{i64 2154009120}
!147 = !{i64 2154029232}
!148 = !{i64 4979608}
!149 = !{i64 2154009951}
!150 = !{i64 2154023937}
!151 = !{i64 2154024537}
!152 = !{i64 2154026194}
!153 = !{i64 2154026490}
