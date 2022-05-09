; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-stmfx.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-stmfx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
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
%struct.stmfx_pinctrl = type { ptr, ptr, ptr, %struct.pinctrl_desc, %struct.gpio_chip, %struct.irq_chip, %struct.mutex, i32, [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8] }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.69, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.69 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.stmfx = type { ptr, ptr, ptr, i32, ptr, %struct.mutex, i8, i8, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_pinctrl_stmfx__228_841_stmfx_pinctrl_driver_init6 = internal global ptr @stmfx_pinctrl_driver_init, section ".initcall6.init", align 4
@stmfx_pinctrl_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stmfx_pinctrl_probe, ptr @stmfx_pinctrl_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stmfx_pinctrl_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @stmfx_pinctrl_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stmfx_pinctrl_driver_exit = internal global ptr @stmfx_pinctrl_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [52 x i8] c"pinctrl_stmfx.description=STMFX pinctrl/GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [62 x i8] c"pinctrl_stmfx.author=Amelie Delaunay <amelie.delaunay@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [49 x i8] c"pinctrl_stmfx.file=drivers/pinctrl/pinctrl-stmfx\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [29 x i8] c"pinctrl_stmfx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stmfx-pinctrl\00", [18 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stmfx-0300-pinctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @stmfx_pinctrl_suspend, ptr @stmfx_pinctrl_resume, ptr @stmfx_pinctrl_suspend, ptr @stmfx_pinctrl_resume, ptr @stmfx_pinctrl_suspend, ptr @stmfx_pinctrl_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 634, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing required gpio-ranges property\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stmfx_pinctrl_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/pinctrl/pinctrl-stmfx.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry_ptr = internal global ptr @stmfx_pinctrl_probe._entry, section ".printk_index", align 4
@stmfx_pinctrl_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pctl->lock\00", [20 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @stmfx_pinctrl_get_groups_count, ptr @stmfx_pinctrl_get_group_name, ptr @stmfx_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@stmfx_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 0, ptr @stmfx_pinconf_get, ptr @stmfx_pinconf_set, ptr null, ptr null, ptr @stmfx_pinconf_dbg_show, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@stmfx_pins = internal constant { [24 x %struct.pinctrl_pin_desc], [64 x i8] } { [24 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.41, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.42, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.43, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.44, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.45, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.46, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.47, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.48, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.49, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.50, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.51, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.52, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.53, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.54, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.55, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.56, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.57, ptr null }, %struct.pinctrl_pin_desc { i32 17, ptr @.str.58, ptr null }, %struct.pinctrl_pin_desc { i32 18, ptr @.str.59, ptr null }, %struct.pinctrl_pin_desc { i32 19, ptr @.str.60, ptr null }, %struct.pinctrl_pin_desc { i32 20, ptr @.str.61, ptr null }, %struct.pinctrl_pin_desc { i32 21, ptr @.str.62, ptr null }, %struct.pinctrl_pin_desc { i32 22, ptr @.str.63, ptr null }, %struct.pinctrl_pin_desc { i32 23, ptr @.str.64, ptr null }], [64 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 656, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pinctrl registration failed\0A\00", [35 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry_ptr.10 = internal global ptr @stmfx_pinctrl_probe._entry.8, section ".printk_index", align 4
@stmfx_pinctrl_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 662, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pinctrl enable failed\0A\00", [41 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry_ptr.13 = internal global ptr @stmfx_pinctrl_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"stmfx-gpio\00", [21 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stmfx_pinctrl_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@stmfx_pinctrl_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 700, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gpio_chip registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry_ptr.17 = internal global ptr @stmfx_pinctrl_probe._entry.15, section ".printk_index", align 4
@stmfx_pinctrl_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 713, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot request irq%d\0A\00", [42 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry_ptr.20 = internal global ptr @stmfx_pinctrl_probe._entry.18, section ".printk_index", align 4
@stmfx_pinctrl_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 718, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%ld GPIOs available\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_probe._entry_ptr.24 = internal global ptr @stmfx_pinctrl_probe._entry.21, section ".printk_index", align 4
@stmfx_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.4, i32 295, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pin %d is not available\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"stmfx_pinconf_set\00", [46 x i8] zeroinitializer }, align 32
@stmfx_pinconf_set._entry_ptr = internal global ptr @stmfx_pinconf_set._entry, section ".printk_index", align 4
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"output %s \00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"open drain %s internal pull-up \00", [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"with\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"without\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"push pull no pull \00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"input %s \00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"with internal pull-%s \00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"down\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"floating\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio0\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio1\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio2\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio3\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio4\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio5\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio6\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"agpio7\00", [25 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 801, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"registers backup failure\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stmfx_pinctrl_suspend\00", [42 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_suspend._entry_ptr = internal global ptr @stmfx_pinctrl_suspend._entry, section ".printk_index", align 4
@stmfx_pinctrl_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 815, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"registers restoration failure\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stmfx_pinctrl_resume\00", [43 x i8] zeroinitializer }, align 32
@stmfx_pinctrl_resume._entry_ptr = internal global ptr @stmfx_pinctrl_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 3, i64 5, i64 6, i64 8, i64 17]
@__sancov_gen_cov_switch_values.69 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 8, i64 17]
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"stmfx_pinctrl_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 832, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 834, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant [23 x i8] c"stmfx_pinctrl_of_match\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 826, i32 34 }
@___asan_gen_.79 = private unnamed_addr constant [25 x i8] c"stmfx_pinctrl_dev_pm_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 823, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 633, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 634, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 642, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"stmfx_pinctrl_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 412, i32 33 }
@___asan_gen_.112 = private unnamed_addr constant [18 x i8] c"stmfx_pinconf_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 387, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant [11 x i8] c"stmfx_pins\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 53, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 656, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 662, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 667, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 698, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 700, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 713, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 717, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 295, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 371, i32 17 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 371, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 371, i32 46 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 373, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 374, i32 15 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 374, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 376, i32 16 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 378, i32 17 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 380, i32 18 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 381, i32 15 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 381, i32 22 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 383, i32 18 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 383, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 383, i32 45 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 54, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 55, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 56, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 57, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 58, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 59, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 60, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 61, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 62, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 63, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 64, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 65, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 66, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 67, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 68, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 69, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 70, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 71, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 72, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 73, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 74, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 75, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 76, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 77, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 801, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private constant [35 x i8] c"../drivers/pinctrl/pinctrl-stmfx.c\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 815, i32 3 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_stmfx_pinctrl_driver_exit, ptr @__initcall__kmod_pinctrl_stmfx__228_841_stmfx_pinctrl_driver_init6, ptr @stmfx_pinconf_set._entry, ptr @stmfx_pinconf_set._entry_ptr, ptr @stmfx_pinctrl_driver_exit, ptr @stmfx_pinctrl_probe._entry, ptr @stmfx_pinctrl_probe._entry.11, ptr @stmfx_pinctrl_probe._entry.15, ptr @stmfx_pinctrl_probe._entry.18, ptr @stmfx_pinctrl_probe._entry.21, ptr @stmfx_pinctrl_probe._entry.8, ptr @stmfx_pinctrl_probe._entry_ptr, ptr @stmfx_pinctrl_probe._entry_ptr.10, ptr @stmfx_pinctrl_probe._entry_ptr.13, ptr @stmfx_pinctrl_probe._entry_ptr.17, ptr @stmfx_pinctrl_probe._entry_ptr.20, ptr @stmfx_pinctrl_probe._entry_ptr.24, ptr @stmfx_pinctrl_resume._entry, ptr @stmfx_pinctrl_resume._entry_ptr, ptr @stmfx_pinctrl_suspend._entry, ptr @stmfx_pinctrl_suspend._entry_ptr, ptr @stmfx_pinctrl_driver, ptr @.str, ptr @stmfx_pinctrl_of_match, ptr @stmfx_pinctrl_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @stmfx_pinctrl_probe.__key, ptr @.str.7, ptr @stmfx_pinctrl_ops, ptr @stmfx_pinconf_ops, ptr @stmfx_pins, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @stmfx_pinctrl_probe.lock_key, ptr @stmfx_pinctrl_probe.request_key, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pins to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stmfx_pinctrl_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stmfx_pinctrl_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @stmfx_pinctrl_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 660, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %call.i, align 4
  %stmfx6 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %stmfx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %3, ptr %stmfx6, align 4
  %call7 = tail call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp = icmp slt i32 %call12, 1
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %do.body15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body15:                                        ; preds = %if.end11
  %lock = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @stmfx_pinctrl_probe.__key) #7
  %pctl_desc = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %pctl_desc to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str, ptr %pctl_desc, align 4
  %pctlops = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @stmfx_pinctrl_ops, ptr %pctlops, align 4
  %confops = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 3, i32 5
  %15 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @stmfx_pinconf_ops, ptr %confops, align 4
  %pins = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @stmfx_pins, ptr %pins, align 4
  %npins = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %npins to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24, ptr %npins, align 4
  %owner = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 3, i32 6
  %18 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %owner, align 4
  %link_consumers = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 3, i32 10
  %19 = ptrtoint ptr %link_consumers to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %link_consumers, align 4
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %pctl_dev = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 2
  %call26 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %21, ptr noundef %pctl_desc, ptr noundef nonnull %call.i, ptr noundef %pctl_dev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9) #10
  br label %cleanup

if.end33:                                         ; preds = %do.body15
  %24 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pctl_dev, align 4
  %call35 = tail call i32 @pinctrl_enable(ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12) #10
  br label %cleanup

if.end42:                                         ; preds = %if.end33
  %gpio_chip = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4
  %28 = ptrtoint ptr %gpio_chip to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.14, ptr %gpio_chip, align 4
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %parent45 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %parent45 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %parent45, align 4
  %get_direction = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 7
  %32 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @stmfx_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 8
  %33 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @stmfx_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 9
  %34 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @stmfx_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 10
  %35 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @stmfx_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 12
  %36 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @stmfx_gpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 14
  %37 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @gpiochip_generic_config, ptr %set_config, align 4
  %base = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 19
  %38 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %base, align 4
  %39 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %npins, align 4
  %conv = trunc i32 %40 to i16
  %ngpio = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 20
  %41 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv, ptr %ngpio, align 4
  %can_sleep = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 23
  %42 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %can_sleep, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 3
  %43 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %44, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end42.dev_name.exit_crit_edge

if.end42.dev_name.exit_crit_edge:                 ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %30, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end42.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %46, %if.end.i ], [ %44, %if.end42.dev_name.exit_crit_edge ]
  %irq_chip = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5
  %name59 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %name59 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %retval.0.i, ptr %name59, align 4
  %irq_mask = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 7
  %48 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @stmfx_pinctrl_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 9
  %49 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @stmfx_pinctrl_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 13
  %50 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @stmfx_pinctrl_irq_set_type, ptr %irq_set_type, align 4
  %irq_bus_lock = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 15
  %51 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @stmfx_pinctrl_irq_bus_lock, ptr %irq_bus_lock, align 4
  %irq_bus_sync_unlock = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 16
  %52 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @stmfx_pinctrl_irq_bus_sync_unlock, ptr %irq_bus_sync_unlock, align 4
  %irq_request_resources = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 22
  %53 = ptrtoint ptr %irq_request_resources to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @stmfx_gpio_irq_request_resources, ptr %irq_request_resources, align 4
  %irq_release_resources = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 5, i32 23
  %54 = ptrtoint ptr %irq_release_resources to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @stmfx_gpio_irq_release_resources, ptr %irq_release_resources, align 4
  %irq68 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 37
  %55 = ptrtoint ptr %irq68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %irq_chip, ptr %irq68, align 4
  %parent_handler = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 13
  %56 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 15
  %57 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 16
  %58 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 10
  %59 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 9
  %60 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %threaded = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 18
  %61 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %threaded, align 4
  %call72 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %30, ptr noundef %gpio_chip, ptr noundef nonnull %call.i, ptr noundef nonnull @stmfx_pinctrl_probe.lock_key, ptr noundef nonnull @stmfx_pinctrl_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.16) #10
  br label %cleanup

if.end79:                                         ; preds = %dev_name.exit
  %64 = ptrtoint ptr %pctl_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pctl_dev, align 4
  %gpio_valid_mask.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 7
  %66 = ptrtoint ptr %gpio_valid_mask.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 65535, ptr %gpio_valid_mask.i, align 4
  %call.i181 = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %65, i32 noundef 16) #7
  %tobool.not.i182 = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i182, label %if.end79.if.end.i183_crit_edge, label %if.then.i

if.end79.if.end.i183_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i183

if.then.i:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %gpio_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %gpio_valid_mask.i, align 4
  %or3.i = or i32 %68, 983040
  store i32 %or3.i, ptr %gpio_valid_mask.i, align 4
  br label %if.end.i183

if.end.i183:                                      ; preds = %if.then.i, %if.end79.if.end.i183_crit_edge
  %func.0.i = phi i32 [ 3, %if.then.i ], [ 1, %if.end79.if.end.i183_crit_edge ]
  %call4.i = tail call ptr @pinctrl_find_gpio_range_from_pin(ptr noundef %65, i32 noundef 20) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i183.stmfx_pinctrl_gpio_function_enable.exit_crit_edge, label %if.then6.i

if.end.i183.stmfx_pinctrl_gpio_function_enable.exit_crit_edge: ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #9
  br label %stmfx_pinctrl_gpio_function_enable.exit

if.then6.i:                                       ; preds = %if.end.i183
  call void @__sanitizer_cov_trace_pc() #9
  %or7.i = or i32 %func.0.i, 4
  %69 = ptrtoint ptr %gpio_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %gpio_valid_mask.i, align 4
  %or9.i = or i32 %70, 15728640
  store i32 %or9.i, ptr %gpio_valid_mask.i, align 4
  br label %stmfx_pinctrl_gpio_function_enable.exit

stmfx_pinctrl_gpio_function_enable.exit:          ; preds = %if.then6.i, %if.end.i183.stmfx_pinctrl_gpio_function_enable.exit_crit_edge
  %func.1.i = phi i32 [ %or7.i, %if.then6.i ], [ %func.0.i, %if.end.i183.stmfx_pinctrl_gpio_function_enable.exit_crit_edge ]
  %71 = ptrtoint ptr %stmfx6 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %stmfx6, align 4
  %call11.i = tail call i32 @stmfx_function_enable(ptr noundef %72, i32 noundef %func.1.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool81.not = icmp eq i32 %call11.i, 0
  br i1 %tobool81.not, label %if.end83, label %stmfx_pinctrl_gpio_function_enable.exit.cleanup_crit_edge

stmfx_pinctrl_gpio_function_enable.exit.cleanup_crit_edge: ; preds = %stmfx_pinctrl_gpio_function_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %stmfx_pinctrl_gpio_function_enable.exit
  %73 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call.i, align 4
  %75 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name59, align 4
  %call87 = tail call i32 @devm_request_threaded_irq(ptr noundef %74, i32 noundef %call12, ptr noundef null, ptr noundef nonnull @stmfx_pinctrl_irq_thread_fn, i32 noundef 8192, ptr noundef %76, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  br i1 %tobool88.not, label %cond.false.i, label %do.end92

do.end92:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.19, i32 noundef %call12) #10
  br label %cleanup

cond.false.i:                                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %gpio_valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %gpio_valid_mask.i, align 4
  %call.i.i = tail call i32 @__sw_hweight32(i32 noundef %80) #7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.22, i32 noundef %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i, %do.end92, %stmfx_pinctrl_gpio_function_enable.exit.cleanup_crit_edge, %do.end77, %do.end40, %do.end31, %if.end11.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %do.end31 ], [ %call35, %do.end40 ], [ %call72, %do.end77 ], [ %call87, %do.end92 ], [ 0, %cond.false.i ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -6, %if.end11.cleanup_crit_edge ], [ %call11.i, %stmfx_pinctrl_gpio_function_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @stmfx_function_disable(ptr noundef %3, i32 noundef 7) #7
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %div11 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div11, 96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !163
  %stmfx = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stmfx, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem = and i32 %offset, 7
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = xor i32 %6, -1
  %8 = lshr i32 %7, %rem
  %9 = and i32 %8, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %9, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %div3 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div3, 96
  %rem = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %rem
  %stmfx = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmfx, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %div6 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div6, 96
  %rem = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %rem
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %cond.i = select i1 %tobool.not.i, i32 112, i32 108
  %stmfx.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmfx.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map.i, align 4
  %add.i = add nuw nsw i32 %cond.i, %div6
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add.i, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %stmfx = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stmfx, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map, align 4
  %call.i7 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  ret i32 %call.i7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_get(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  %div6 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %div6, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !163
  %stmfx = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stmfx, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rem = and i32 %offset, 7
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 4
  %7 = lshr i32 %6, %rem
  %8 = and i32 %7, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.false ], [ %call1, %entry.cond.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_gpio_set(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %cond = select i1 %tobool.not, i32 112, i32 108
  %rem = and i32 %offset, 7
  %shl = shl nuw nsw i32 1, %rem
  %stmfx = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stmfx, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %map, align 4
  %div4 = lshr i32 %offset, 3
  %add = add nuw nsw i32 %cond, %div4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %add, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_mask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div6 = lshr i32 %3, 3
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %arrayidx = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 8, i32 %div6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv3 = and i8 %5, %7
  store i8 %conv3, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_unmask(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div6 = lshr i32 %3, 3
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %arrayidx = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 8, i32 %div6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %6 = trunc i32 %shl to i8
  %conv3 = or i8 %5, %6
  store i8 %conv3, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %div69 = lshr i32 %3, 3
  %and = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %arrayidx6 = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 10, i32 %div69
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %6 = trunc i32 %shl to i8
  %7 = xor i8 %6, -1
  %conv9 = and i8 %5, %7
  %conv4 = or i8 %5, %6
  %conv9.sink = select i1 %tobool.not, i8 %conv9, i8 %conv4
  %handle_level_irq.sink = select i1 %tobool.not, ptr @handle_level_irq, ptr @handle_edge_irq
  store i8 %conv9.sink, ptr %arrayidx6, align 1
  %common.i.i70 = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %common.i.i70 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i.i70, align 4
  %handle_irq.i71 = getelementptr inbounds %struct.irq_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %handle_irq.i71 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %handle_level_irq.sink, ptr %handle_irq.i71, align 4
  %11 = and i32 %type, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  %arrayidx23 = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 9, i32 %div69
  %13 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx23, align 1
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv26 = and i8 %14, %16
  %conv19 = or i8 %14, %15
  %conv26.sink = select i1 %12, i8 %conv26, i8 %conv19
  store i8 %conv26.sink, ptr %arrayidx23, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp29 = icmp eq i32 %and, 3
  %arrayidx32 = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 11, i32 %div69
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx32, align 1
  %19 = trunc i32 %shl to i8
  %conv35 = or i8 %18, %19
  %conv41 = and i8 %18, %19
  %conv35.sink = select i1 %cmp29, i8 %conv35, i8 %conv41
  store i8 %conv35.sink, ptr %arrayidx32, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_bus_lock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %lock = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_pinctrl_irq_bus_sync_unlock(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div43 = lshr i32 %3, 3
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %arrayidx = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 11, i32 %div43
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %add.i = add nuw nsw i32 %div43, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value.i, align 4, !annotation !163
  %stmfx.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stmfx.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %10, i32 noundef %add.i, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %stmfx_gpio_get.exit, label %stmfx_gpio_get.exit.thread

stmfx_gpio_get.exit.thread:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  br label %if.then6

stmfx_gpio_get.exit:                              ; preds = %if.then
  %11 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  %13 = and i32 %12, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %if.else, label %stmfx_gpio_get.exit.if.then6_crit_edge

stmfx_gpio_get.exit.if.then6_crit_edge:           ; preds = %stmfx_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then6

if.then6:                                         ; preds = %stmfx_gpio_get.exit.if.then6_crit_edge, %stmfx_gpio_get.exit.thread
  %arrayidx7 = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 9, i32 %div43
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %16 = trunc i32 %shl to i8
  %17 = xor i8 %16, -1
  %conv10 = and i8 %15, %17
  store i8 %conv10, ptr %arrayidx7, align 1
  br label %if.end15

if.else:                                          ; preds = %stmfx_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12 = getelementptr %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 9, i32 %div43
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx12, align 1
  %20 = trunc i32 %shl to i8
  %conv14 = or i8 %19, %20
  store i8 %conv14, ptr %arrayidx12, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then6, %entry.if.end15_crit_edge
  %stmfx = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 1
  %21 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stmfx, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map, align 4
  %irq_gpi_evt = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 10
  %call16 = call i32 @regmap_bulk_write(ptr noundef %24, i32 noundef 76, ptr noundef %irq_gpi_evt, i32 noundef 3) #7
  %25 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stmfx, align 4
  %map18 = getelementptr inbounds %struct.stmfx, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %map18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map18, align 4
  %irq_gpi_type19 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 9
  %call21 = call i32 @regmap_bulk_write(ptr noundef %28, i32 noundef 80, ptr noundef %irq_gpi_type19, i32 noundef 3) #7
  %29 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stmfx, align 4
  %map23 = getelementptr inbounds %struct.stmfx, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %map23 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map23, align 4
  %irq_gpi_src = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 8
  %call25 = call i32 @regmap_bulk_write(ptr noundef %32, i32 noundef 72, ptr noundef %irq_gpi_src, i32 noundef 3) #7
  %lock = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call1, i32 0, i32 6
  call void @mutex_unlock(ptr noundef %lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_gpio_irq_request_resources(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %div3.i = lshr i32 %3, 3
  %add.i = add nuw nsw i32 %div3.i, 96
  %rem.i = and i32 %3, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %stmfx.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stmfx.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %call3 = tail call i32 @gpiochip_reqres_irq(ptr noundef %1, i32 noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call.i.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_gpio_irq_release_resources(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @gpiochip_relres_irq(ptr noundef %1, i32 noundef %3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_irq_thread_fn(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  %value.i.i = alloca i32, align 4
  %irq.i = alloca i32, align 4
  %pending = alloca [3 x i8], align 1
  %src = alloca [3 x i8], align 1
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %pending) #7
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %pending, align 1, !annotation !163
  %1 = getelementptr inbounds [3 x i8], ptr %pending, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !163
  %3 = getelementptr inbounds [3 x i8], ptr %pending, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !163
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %src) #7
  %5 = call ptr @memset(ptr %src, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %stmfx = getelementptr inbounds %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stmfx, align 4
  %map = getelementptr inbounds %struct.stmfx, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map, align 4
  %call = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 12, ptr noundef nonnull %pending, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %10 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stmfx, align 4
  %map2 = getelementptr inbounds %struct.stmfx, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %map2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map2, align 4
  %call3 = call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef 72, ptr noundef nonnull %src, i32 noundef 3) #7
  %14 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pending, align 1
  %conv = zext i8 %15 to i32
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 1
  %conv.1 = zext i8 %17 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, 8
  %or.1 = or i32 %shl.1, %conv
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  %conv.2 = zext i8 %19 to i32
  %shl.2 = shl nuw nsw i32 %conv.2, 16
  %or.2 = or i32 %shl.2, %or.1
  %20 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or.2, ptr %status, align 4
  %ngpio = getelementptr inbounds %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 4, i32 20
  %21 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ngpio, align 4
  %conv4 = zext i16 %22 to i32
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %conv4, i32 noundef 0) #7
  %23 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ngpio, align 4
  %conv848 = zext i16 %24 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call5, i32 %conv848)
  %cmp949 = icmp ult i32 %call5, %conv848
  br i1 %cmp949, label %for.body11.lr.ph, label %if.end.for.end18_crit_edge

if.end.for.end18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

for.body11.lr.ph:                                 ; preds = %if.end
  %domain = getelementptr inbounds %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 4, i32 37, i32 1
  %gpio_chip.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 4
  br label %for.body11

for.body11:                                       ; preds = %stmfx_pinctrl_irq_toggle_trigger.exit.for.body11_crit_edge, %for.body11.lr.ph
  %n.050 = phi i32 [ %call5, %for.body11.lr.ph ], [ %call17, %stmfx_pinctrl_irq_toggle_trigger.exit.for.body11_crit_edge ]
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #7
  %27 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %irq.i, align 4, !annotation !163
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %26, i32 noundef %n.050, ptr noundef nonnull %irq.i) #7
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body11.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body11.irq_find_mapping.exit_crit_edge:       ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body11.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %29, %if.then.i ], [ 0, %for.body11.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #7
  call void @handle_nested_irq(i32 noundef %retval.0.i) #7
  %div39.i = lshr i32 %n.050, 3
  %rem.i = and i32 %n.050, 7
  %shl.i = shl nuw nsw i32 1, %rem.i
  %arrayidx.i = getelementptr %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 11, i32 %div39.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %31 to i32
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i44 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i44, label %irq_find_mapping.exit.stmfx_pinctrl_irq_toggle_trigger.exit_crit_edge, label %if.end.i

irq_find_mapping.exit.stmfx_pinctrl_irq_toggle_trigger.exit_crit_edge: ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %stmfx_pinctrl_irq_toggle_trigger.exit

if.end.i:                                         ; preds = %irq_find_mapping.exit
  %call.i.i = call ptr @gpiochip_get_data(ptr noundef %gpio_chip.i) #7
  %add.i.i = add nuw nsw i32 %div39.i, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i.i) #7
  %32 = ptrtoint ptr %value.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %value.i.i, align 4, !annotation !163
  %stmfx.i.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %stmfx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stmfx.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.stmfx, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %36, i32 noundef %add.i.i, ptr noundef nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end3.i, label %stmfx_gpio_get.exit.i

stmfx_gpio_get.exit.i:                            ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i, label %stmfx_gpio_get.exit.i.stmfx_pinctrl_irq_toggle_trigger.exit_crit_edge, label %stmfx_gpio_get.exit.i.if.then5.i_crit_edge

stmfx_gpio_get.exit.i.if.then5.i_crit_edge:       ; preds = %stmfx_gpio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

stmfx_gpio_get.exit.i.stmfx_pinctrl_irq_toggle_trigger.exit_crit_edge: ; preds = %stmfx_gpio_get.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stmfx_pinctrl_irq_toggle_trigger.exit

if.end3.i:                                        ; preds = %if.end.i
  %37 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %value.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i.i) #7
  %39 = and i32 %38, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool4.not.i = icmp eq i32 %39, 0
  br i1 %tobool4.not.i, label %if.else.i, label %if.end3.i.if.then5.i_crit_edge

if.end3.i.if.then5.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then5.i

if.then5.i:                                       ; preds = %if.end3.i.if.then5.i_crit_edge, %stmfx_gpio_get.exit.i.if.then5.i_crit_edge
  %arrayidx6.i = getelementptr %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 9, i32 %div39.i
  %40 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx6.i, align 1
  %42 = trunc i32 %shl.i to i8
  %conv9.i = and i8 %41, %42
  store i8 %conv9.i, ptr %arrayidx6.i, align 1
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12.i = getelementptr %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 9, i32 %div39.i
  %43 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx12.i, align 1
  %45 = trunc i32 %shl.i to i8
  %conv14.i = or i8 %44, %45
  store i8 %conv14.i, ptr %arrayidx12.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i, %if.then5.i
  %.sink47.i = phi i32 [ 0, %if.then5.i ], [ %shl.i, %if.else.i ]
  %46 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %stmfx, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %map.i, align 4
  %add.i = add nuw nsw i32 %div39.i, 80
  %call.i40.i = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef %add.i, i32 noundef %shl.i, i32 noundef %.sink47.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  br label %stmfx_pinctrl_irq_toggle_trigger.exit

stmfx_pinctrl_irq_toggle_trigger.exit:            ; preds = %cleanup.sink.split.i, %stmfx_gpio_get.exit.i.stmfx_pinctrl_irq_toggle_trigger.exit_crit_edge, %irq_find_mapping.exit.stmfx_pinctrl_irq_toggle_trigger.exit_crit_edge
  %50 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %ngpio, align 4
  %conv16 = zext i16 %51 to i32
  %add = add nuw i32 %n.050, 1
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %conv16, i32 noundef %add) #7
  %52 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %ngpio, align 4
  %conv8 = zext i16 %53 to i32
  %cmp9 = icmp ult i32 %call17, %conv8
  br i1 %cmp9, label %stmfx_pinctrl_irq_toggle_trigger.exit.for.body11_crit_edge, label %stmfx_pinctrl_irq_toggle_trigger.exit.for.end18_crit_edge

stmfx_pinctrl_irq_toggle_trigger.exit.for.end18_crit_edge: ; preds = %stmfx_pinctrl_irq_toggle_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end18

stmfx_pinctrl_irq_toggle_trigger.exit.for.body11_crit_edge: ; preds = %stmfx_pinctrl_irq_toggle_trigger.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body11

for.end18:                                        ; preds = %stmfx_pinctrl_irq_toggle_trigger.exit.for.end18_crit_edge, %if.end.for.end18_crit_edge
  %54 = ptrtoint ptr %stmfx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %stmfx, align 4
  %map20 = getelementptr inbounds %struct.stmfx, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %map20 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %map20, align 4
  %irq_gpi_src = getelementptr inbounds %struct.stmfx_pinctrl, ptr %dev_id, i32 0, i32 8
  %call22 = call i32 @regmap_bulk_write(ptr noundef %57, i32 noundef 72, ptr noundef %irq_gpi_src, i32 noundef 3) #7
  br label %cleanup

cleanup:                                          ; preds = %for.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end18 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %src) #7
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %pending) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmfx_pinctrl_get_groups_count(ptr nocapture noundef readnone %pctldev) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @stmfx_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %selector) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @stmfx_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %selector, ptr nocapture noundef readnone %pins, ptr nocapture noundef readnone %num_pins) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %pupd.i = alloca i32, align 4
  %type.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %call2 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %pctldev, i32 noundef %pin) #7
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_chip = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #7
  %div11.i = lshr i32 %pin, 3
  %add.i = add nuw nsw i32 %div11.i, 96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %2 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i, align 4, !annotation !163
  %stmfx.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %stmfx.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %add.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %stmfx_gpio_get_direction.exit.thread, label %stmfx_gpio_get_direction.exit

stmfx_gpio_get_direction.exit.thread:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i = and i32 %pin, 7
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  %9 = xor i32 %8, -1
  %10 = lshr i32 %9, %rem.i
  %11 = and i32 %10, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end5

stmfx_gpio_get_direction.exit:                    ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %stmfx_gpio_get_direction.exit.cleanup_crit_edge, label %stmfx_gpio_get_direction.exit.if.end5_crit_edge

stmfx_gpio_get_direction.exit.if.end5_crit_edge:  ; preds = %stmfx_gpio_get_direction.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

stmfx_gpio_get_direction.exit.cleanup_crit_edge:  ; preds = %stmfx_gpio_get_direction.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %stmfx_gpio_get_direction.exit.if.end5_crit_edge, %stmfx_gpio_get_direction.exit.thread
  %retval.0.i141 = phi i32 [ %11, %stmfx_gpio_get_direction.exit.thread ], [ %call1.i, %stmfx_gpio_get_direction.exit.if.end5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i141)
  %cmp6 = icmp eq i32 %retval.0.i141, 1
  %add.i122 = add nuw nsw i32 %div11.i, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %type.i, align 4, !annotation !163
  %stmfx.i123 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %stmfx.i123 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stmfx.i123, align 4
  %map.i124 = getelementptr inbounds %struct.stmfx, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %map.i124 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i124, align 4
  %call.i125 = call i32 @regmap_read(ptr noundef %16, i32 noundef %add.i122, ptr noundef nonnull %type.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool.not.i126 = icmp eq i32 %call.i125, 0
  br i1 %tobool.not.i126, label %stmfx_pinconf_get_type.exit.thread, label %stmfx_pinconf_get_type.exit

stmfx_pinconf_get_type.exit.thread:               ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i127 = and i32 %pin, 7
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type.i, align 4
  %19 = lshr i32 %18, %rem.i127
  %20 = and i32 %19, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  br label %if.end10

stmfx_pinconf_get_type.exit:                      ; preds = %if.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %cmp8 = icmp slt i32 %call.i125, 0
  br i1 %cmp8, label %stmfx_pinconf_get_type.exit.cleanup_crit_edge, label %stmfx_pinconf_get_type.exit.if.end10_crit_edge

stmfx_pinconf_get_type.exit.if.end10_crit_edge:   ; preds = %stmfx_pinconf_get_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

stmfx_pinconf_get_type.exit.cleanup_crit_edge:    ; preds = %stmfx_pinconf_get_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %stmfx_pinconf_get_type.exit.if.end10_crit_edge, %stmfx_pinconf_get_type.exit.thread
  %retval.0.i129144 = phi i32 [ %20, %stmfx_pinconf_get_type.exit.thread ], [ %call.i125, %stmfx_pinconf_get_type.exit.if.end10_crit_edge ]
  %add.i131 = add nuw nsw i32 %div11.i, 104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pupd.i) #7
  %21 = ptrtoint ptr %pupd.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %pupd.i, align 4, !annotation !163
  %22 = ptrtoint ptr %stmfx.i123 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stmfx.i123, align 4
  %map.i133 = getelementptr inbounds %struct.stmfx, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %map.i133 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map.i133, align 4
  %call.i134 = call i32 @regmap_read(ptr noundef %25, i32 noundef %add.i131, ptr noundef nonnull %pupd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %tobool.not.i135 = icmp eq i32 %call.i134, 0
  br i1 %tobool.not.i135, label %stmfx_pinconf_get_pupd.exit.thread, label %stmfx_pinconf_get_pupd.exit

stmfx_pinconf_get_pupd.exit.thread:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i136 = and i32 %pin, 7
  %26 = ptrtoint ptr %pupd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pupd.i, align 4
  %28 = lshr i32 %27, %rem.i136
  %29 = and i32 %28, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pupd.i) #7
  br label %if.end14

stmfx_pinconf_get_pupd.exit:                      ; preds = %if.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pupd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i134)
  %cmp12 = icmp slt i32 %call.i134, 0
  br i1 %cmp12, label %stmfx_pinconf_get_pupd.exit.cleanup_crit_edge, label %stmfx_pinconf_get_pupd.exit.if.end14_crit_edge

stmfx_pinconf_get_pupd.exit.if.end14_crit_edge:   ; preds = %stmfx_pinconf_get_pupd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

stmfx_pinconf_get_pupd.exit.cleanup_crit_edge:    ; preds = %stmfx_pinconf_get_pupd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %stmfx_pinconf_get_pupd.exit.if.end14_crit_edge, %stmfx_pinconf_get_pupd.exit.thread
  %retval.0.i138147 = phi i32 [ %29, %stmfx_pinconf_get_pupd.exit.thread ], [ %call.i134, %stmfx_pinconf_get_pupd.exit.if.end14_crit_edge ]
  %trunc = trunc i32 %1 to i8
  %30 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end14.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 3, label %sw.bb24
    i8 5, label %sw.bb32
    i8 6, label %sw.bb38
    i8 8, label %sw.bb48
    i8 17, label %sw.bb58
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129144)
  %tobool21.not = icmp eq i32 %retval.0.i129144, 0
  br i1 %cmp6, label %land.lhs.true20.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i138147)
  %tobool17.not = icmp eq i32 %retval.0.i138147, 0
  %or.cond = select i1 %tobool21.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %land.lhs.true.if.then22_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true.if.then22_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

land.lhs.true20.critedge:                         ; preds = %sw.bb
  br i1 %tobool21.not, label %land.lhs.true20.critedge.if.then22_crit_edge, label %land.lhs.true20.critedge.sw.epilog_crit_edge

land.lhs.true20.critedge.sw.epilog_crit_edge:     ; preds = %land.lhs.true20.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

land.lhs.true20.critedge.if.then22_crit_edge:     ; preds = %land.lhs.true20.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %land.lhs.true20.critedge.if.then22_crit_edge, %land.lhs.true.if.then22_crit_edge
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129144)
  %tobool27.not = icmp ne i32 %retval.0.i129144, 0
  %or.cond110.not = select i1 %cmp6, i1 %tobool27.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i138147)
  %tobool29.not = icmp eq i32 %retval.0.i138147, 0
  %or.cond111 = select i1 %or.cond110.not, i1 %tobool29.not, i1 false
  %spec.select = zext i1 %or.cond111 to i32
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129144)
  %tobool33.not = icmp ne i32 %retval.0.i129144, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i138147)
  %tobool35.not = icmp ne i32 %retval.0.i138147, 0
  %or.cond112 = select i1 %tobool33.not, i1 %tobool35.not, i1 false
  %spec.select119 = zext i1 %or.cond112 to i32
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129144)
  %tobool41.not = icmp eq i32 %retval.0.i129144, 0
  %or.cond113 = select i1 %cmp6, i1 true, i1 %tobool41.not
  %or.cond113.not = xor i1 %or.cond113, true
  %or.cond114 = select i1 %cmp6, i1 %tobool41.not, i1 false
  %or.cond120 = select i1 %or.cond113.not, i1 true, i1 %or.cond114
  %spec.select121 = zext i1 %or.cond120 to i32
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %cmp6.not115 = xor i1 %cmp6, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i129144)
  %tobool51.not = icmp eq i32 %retval.0.i129144, 0
  %tobool51.not.not = xor i1 %tobool51.not, true
  %or.cond116.not = select i1 %cmp6, i1 true, i1 %tobool51.not.not
  %or.cond118 = select i1 %cmp6.not115, i1 true, i1 %tobool51.not
  %or.cond148 = select i1 %or.cond116.not, i1 %or.cond118, i1 false
  %not.or.cond148 = xor i1 %or.cond148, true
  %spec.select149 = zext i1 %not.or.cond148 to i32
  br label %sw.epilog

sw.bb58:                                          ; preds = %if.end14
  br i1 %cmp6, label %sw.bb58.cleanup_crit_edge, label %if.end61

sw.bb58.cleanup_crit_edge:                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end61:                                         ; preds = %sw.bb58
  %call63 = call i32 @stmfx_gpio_get(ptr noundef %gpio_chip, i32 noundef %pin)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.end61.cleanup_crit_edge, label %if.end61.sw.epilog_crit_edge

if.end61.sw.epilog_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end61.sw.epilog_crit_edge, %sw.bb48, %sw.bb38, %sw.bb32, %sw.bb24, %if.then22, %land.lhs.true20.critedge.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge
  %arg.0 = phi i32 [ 0, %land.lhs.true20.critedge.sw.epilog_crit_edge ], [ 1, %if.then22 ], [ %call63, %if.end61.sw.epilog_crit_edge ], [ 0, %land.lhs.true.sw.epilog_crit_edge ], [ %spec.select, %sw.bb24 ], [ %spec.select119, %sw.bb32 ], [ %spec.select121, %sw.bb38 ], [ %spec.select149, %sw.bb48 ]
  %shl.i = shl i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %31 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end61.cleanup_crit_edge, %sw.bb58.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %stmfx_pinconf_get_pupd.exit.cleanup_crit_edge, %stmfx_pinconf_get_type.exit.cleanup_crit_edge, %stmfx_gpio_get_direction.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ %call1.i, %stmfx_gpio_get_direction.exit.cleanup_crit_edge ], [ %call.i125, %stmfx_pinconf_get_type.exit.cleanup_crit_edge ], [ %call.i134, %stmfx_pinconf_get_pupd.exit.cleanup_crit_edge ], [ -22, %sw.bb58.cleanup_crit_edge ], [ %call63, %if.end61.cleanup_crit_edge ], [ -524, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call1 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %pctldev, i32 noundef %pin) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %gpio_chip = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 4
  %rem.i103 = and i32 %pin, 7
  %shl.i104 = shl nuw nsw i32 1, %rem.i103
  %stmfx.i105 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp116.not = icmp eq i32 %num_configs, 0
  br i1 %cmp116.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div6.i = lshr i32 %pin, 3
  %add.i110 = add nuw nsw i32 %div6.i, 96
  %add.i108 = add nuw nsw i32 %div6.i, 100
  %add.i101 = add nuw nsw i32 %div6.i, 104
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pinctrl_dev, ptr %pctldev, i32 0, i32 8
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.25, i32 noundef %pin) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0117 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0117
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %3 to i8
  %4 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %trunc, label %for.body.cleanup_crit_edge [
    i8 4, label %for.body.sw.bb_crit_edge
    i8 1, label %for.body.sw.bb_crit_edge126
    i8 8, label %for.body.sw.bb_crit_edge127
    i8 3, label %sw.bb9
    i8 5, label %sw.bb18
    i8 6, label %sw.bb27
    i8 17, label %sw.bb32
  ]

for.body.sw.bb_crit_edge127:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge126:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.sw.bb_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %for.body.sw.bb_crit_edge, %for.body.sw.bb_crit_edge126, %for.body.sw.bb_crit_edge127
  %5 = ptrtoint ptr %stmfx.i105 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stmfx.i105, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add.i108, i32 noundef %shl.i104, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not, label %sw.bb.for.inc_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb9:                                           ; preds = %for.body
  %9 = ptrtoint ptr %stmfx.i105 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stmfx.i105, align 4
  %map.i78 = getelementptr inbounds %struct.stmfx, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %map.i78 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map.i78, align 4
  %call.i.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef %add.i108, i32 noundef %shl.i104, i32 noundef %shl.i104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool11.not = icmp eq i32 %call.i.i81, 0
  br i1 %tobool11.not, label %if.end13, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sw.bb9
  %13 = ptrtoint ptr %stmfx.i105 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stmfx.i105, align 4
  %map.i85 = getelementptr inbounds %struct.stmfx, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %map.i85 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i85, align 4
  %call.i.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef %add.i101, i32 noundef %shl.i104, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %tobool15.not = icmp eq i32 %call.i.i88, 0
  br i1 %tobool15.not, label %if.end13.for.inc_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.for.inc_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb18:                                          ; preds = %for.body
  %17 = ptrtoint ptr %stmfx.i105 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %stmfx.i105, align 4
  %map.i92 = getelementptr inbounds %struct.stmfx, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %map.i92 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i92, align 4
  %call.i.i95 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef %add.i108, i32 noundef %shl.i104, i32 noundef %shl.i104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %tobool20.not = icmp eq i32 %call.i.i95, 0
  br i1 %tobool20.not, label %if.end22, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  %21 = ptrtoint ptr %stmfx.i105 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %stmfx.i105, align 4
  %map.i99 = getelementptr inbounds %struct.stmfx, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %map.i99 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i99, align 4
  %call.i.i102 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %add.i101, i32 noundef %shl.i104, i32 noundef %shl.i104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool24.not = icmp eq i32 %call.i.i102, 0
  br i1 %tobool24.not, label %if.end22.for.inc_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  %25 = ptrtoint ptr %stmfx.i105 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %stmfx.i105, align 4
  %map.i106 = getelementptr inbounds %struct.stmfx, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %map.i106 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %map.i106, align 4
  %call.i.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %add.i108, i32 noundef %shl.i104, i32 noundef %shl.i104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i109)
  %tobool29.not = icmp eq i32 %call.i.i109, 0
  br i1 %tobool29.not, label %sw.bb27.for.inc_crit_edge, label %sw.bb27.cleanup_crit_edge

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb27.for.inc_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb32:                                          ; preds = %for.body
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #7
  %call.i.i113 = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %3)
  %tobool.not.i.i = icmp ult i32 %3, 256
  %cond.i.i = select i1 %tobool.not.i.i, i32 112, i32 108
  %stmfx.i.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i.i113, i32 0, i32 1
  %29 = ptrtoint ptr %stmfx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stmfx.i.i, align 4
  %map.i.i = getelementptr inbounds %struct.stmfx, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i.i, align 4
  %add.i.i = add nuw nsw i32 %cond.i.i, %div6.i
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef %add.i.i, i32 noundef %shl.i104, i32 noundef %shl.i104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %stmfx.i114 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %stmfx.i114 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %stmfx.i114, align 4
  %map.i115 = getelementptr inbounds %struct.stmfx, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %map.i115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %map.i115, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %add.i110, i32 noundef %shl.i104, i32 noundef %shl.i104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool34.not = icmp eq i32 %call.i7.i, 0
  br i1 %tobool34.not, label %sw.bb32.for.inc_crit_edge, label %sw.bb32.cleanup_crit_edge

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb32.for.inc_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %sw.bb32.for.inc_crit_edge, %sw.bb27.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %if.end13.for.inc_crit_edge, %sw.bb.for.inc_crit_edge
  %inc = add nuw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %sw.bb27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call.i.i, %sw.bb.cleanup_crit_edge ], [ %call.i.i81, %sw.bb9.cleanup_crit_edge ], [ %call.i.i88, %if.end13.cleanup_crit_edge ], [ %call.i.i95, %sw.bb18.cleanup_crit_edge ], [ %call.i.i102, %if.end22.cleanup_crit_edge ], [ %call.i.i109, %sw.bb27.cleanup_crit_edge ], [ %call.i7.i, %sw.bb32.cleanup_crit_edge ], [ -524, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stmfx_pinconf_dbg_show(ptr noundef %pctldev, ptr noundef %s, i32 noundef %offset) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %pupd.i = alloca i32, align 4
  %type.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #7
  %call1 = tail call ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef %pctldev, i32 noundef %offset) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_chip = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 4
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #7
  %div11.i = lshr i32 %offset, 3
  %add.i = add nuw nsw i32 %div11.i, 96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !163
  %stmfx.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stmfx.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %add.i, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %stmfx_gpio_get_direction.exit.thread, label %stmfx_gpio_get_direction.exit

stmfx_gpio_get_direction.exit.thread:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i = and i32 %offset, 7
  %5 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i, align 4
  %7 = xor i32 %6, -1
  %8 = lshr i32 %7, %rem.i
  %9 = and i32 %8, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end4

stmfx_gpio_get_direction.exit:                    ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp = icmp slt i32 %call1.i, 0
  br i1 %cmp, label %stmfx_gpio_get_direction.exit.cleanup_crit_edge, label %stmfx_gpio_get_direction.exit.if.end4_crit_edge

stmfx_gpio_get_direction.exit.if.end4_crit_edge:  ; preds = %stmfx_gpio_get_direction.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

stmfx_gpio_get_direction.exit.cleanup_crit_edge:  ; preds = %stmfx_gpio_get_direction.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %stmfx_gpio_get_direction.exit.if.end4_crit_edge, %stmfx_gpio_get_direction.exit.thread
  %retval.0.i90 = phi i32 [ %9, %stmfx_gpio_get_direction.exit.thread ], [ 1, %stmfx_gpio_get_direction.exit.if.end4_crit_edge ]
  %add.i64 = add nuw nsw i32 %div11.i, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type.i) #7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %type.i, align 4, !annotation !163
  %stmfx.i65 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call, i32 0, i32 1
  %11 = ptrtoint ptr %stmfx.i65 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %stmfx.i65, align 4
  %map.i66 = getelementptr inbounds %struct.stmfx, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %map.i66 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map.i66, align 4
  %call.i67 = call i32 @regmap_read(ptr noundef %14, i32 noundef %add.i64, ptr noundef nonnull %type.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %stmfx_pinconf_get_type.exit.thread, label %stmfx_pinconf_get_type.exit

stmfx_pinconf_get_type.exit.thread:               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i69 = and i32 %offset, 7
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  %17 = lshr i32 %16, %rem.i69
  %18 = and i32 %17, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  br label %if.end8

stmfx_pinconf_get_type.exit:                      ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp6 = icmp slt i32 %call.i67, 0
  br i1 %cmp6, label %stmfx_pinconf_get_type.exit.cleanup_crit_edge, label %stmfx_pinconf_get_type.exit.if.end8_crit_edge

stmfx_pinconf_get_type.exit.if.end8_crit_edge:    ; preds = %stmfx_pinconf_get_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

stmfx_pinconf_get_type.exit.cleanup_crit_edge:    ; preds = %stmfx_pinconf_get_type.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %stmfx_pinconf_get_type.exit.if.end8_crit_edge, %stmfx_pinconf_get_type.exit.thread
  %retval.0.i7193 = phi i32 [ %18, %stmfx_pinconf_get_type.exit.thread ], [ %call.i67, %stmfx_pinconf_get_type.exit.if.end8_crit_edge ]
  %add.i73 = add nuw nsw i32 %div11.i, 104
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pupd.i) #7
  %19 = ptrtoint ptr %pupd.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %pupd.i, align 4, !annotation !163
  %20 = ptrtoint ptr %stmfx.i65 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %stmfx.i65, align 4
  %map.i75 = getelementptr inbounds %struct.stmfx, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %map.i75 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i75, align 4
  %call.i76 = call i32 @regmap_read(ptr noundef %23, i32 noundef %add.i73, ptr noundef nonnull %pupd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool.not.i77 = icmp eq i32 %call.i76, 0
  br i1 %tobool.not.i77, label %stmfx_pinconf_get_pupd.exit.thread, label %stmfx_pinconf_get_pupd.exit

stmfx_pinconf_get_pupd.exit.thread:               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i78 = and i32 %offset, 7
  %24 = ptrtoint ptr %pupd.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pupd.i, align 4
  %26 = lshr i32 %25, %rem.i78
  %27 = and i32 %26, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pupd.i) #7
  br label %if.end12

stmfx_pinconf_get_pupd.exit:                      ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pupd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp10 = icmp slt i32 %call.i76, 0
  br i1 %cmp10, label %stmfx_pinconf_get_pupd.exit.cleanup_crit_edge, label %stmfx_pinconf_get_pupd.exit.if.end12_crit_edge

stmfx_pinconf_get_pupd.exit.if.end12_crit_edge:   ; preds = %stmfx_pinconf_get_pupd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

stmfx_pinconf_get_pupd.exit.cleanup_crit_edge:    ; preds = %stmfx_pinconf_get_pupd.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %stmfx_pinconf_get_pupd.exit.if.end12_crit_edge, %stmfx_pinconf_get_pupd.exit.thread
  %retval.0.i8096 = phi i32 [ %27, %stmfx_pinconf_get_pupd.exit.thread ], [ %call.i76, %stmfx_pinconf_get_pupd.exit.if.end12_crit_edge ]
  %call.i81 = call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #7
  %add.i82 = add nuw nsw i32 %div11.i, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %28 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %value.i, align 4, !annotation !163
  %stmfx.i83 = getelementptr inbounds %struct.stmfx_pinctrl, ptr %call.i81, i32 0, i32 1
  %29 = ptrtoint ptr %stmfx.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stmfx.i83, align 4
  %map.i84 = getelementptr inbounds %struct.stmfx, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %map.i84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %map.i84, align 4
  %call1.i85 = call i32 @regmap_read(ptr noundef %32, i32 noundef %add.i82, ptr noundef nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %tobool.not.i86 = icmp eq i32 %call1.i85, 0
  br i1 %tobool.not.i86, label %stmfx_gpio_get.exit.thread, label %stmfx_gpio_get.exit

stmfx_gpio_get.exit.thread:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i87 = and i32 %offset, 7
  %33 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  %35 = shl i32 1, %rem.i87
  %36 = and i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %phi.cmp = icmp eq i32 %36, 0
  %phi.sel = select i1 %phi.cmp, ptr @.str.29, ptr @.str.28
  br label %if.end17

stmfx_gpio_get.exit:                              ; preds = %if.end12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i85)
  %cmp15 = icmp slt i32 %call1.i85, 0
  br i1 %cmp15, label %stmfx_gpio_get.exit.cleanup_crit_edge, label %stmfx_gpio_get.exit.if.end17_crit_edge

stmfx_gpio_get.exit.if.end17_crit_edge:           ; preds = %stmfx_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

stmfx_gpio_get.exit.cleanup_crit_edge:            ; preds = %stmfx_gpio_get.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %stmfx_gpio_get.exit.if.end17_crit_edge, %stmfx_gpio_get.exit.thread
  %cond.i99 = phi ptr [ %phi.sel, %stmfx_gpio_get.exit.thread ], [ @.str.28, %stmfx_gpio_get.exit.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i90)
  %cmp18 = icmp eq i32 %retval.0.i90, 0
  br i1 %cmp18, label %if.then19, label %if.else26

if.then19:                                        ; preds = %if.end17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.27, ptr noundef nonnull %cond.i99) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i7193)
  %tobool21.not = icmp eq i32 %retval.0.i7193, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i8096)
  %tobool23.not = icmp eq i32 %retval.0.i8096, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.32, ptr @.str.31
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.30, ptr noundef nonnull %cond24) #7
  br label %cleanup

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.33) #7
  br label %cleanup

if.else26:                                        ; preds = %if.end17
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond.i99) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i7193)
  %tobool29.not = icmp eq i32 %retval.0.i7193, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i8096)
  %tobool34.not = icmp eq i32 %retval.0.i8096, 0
  br i1 %tobool29.not, label %if.else33, label %if.then30

if.then30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %cond32 = select i1 %tobool34.not, ptr @.str.37, ptr @.str.36
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull %cond32) #7
  br label %cleanup

if.else33:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #9
  %cond35 = select i1 %tobool34.not, ptr @.str.40, ptr @.str.39
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.38, ptr noundef nonnull %cond35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else33, %if.then30, %if.else, %if.then22, %stmfx_gpio_get.exit.cleanup_crit_edge, %stmfx_pinconf_get_pupd.exit.cleanup_crit_edge, %stmfx_pinconf_get_type.exit.cleanup_crit_edge, %stmfx_gpio_get_direction.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin_nolock(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_reqres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_relres_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_find_gpio_range_from_pin(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmfx_function_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmfx_function_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stmfx.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stmfx.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %bkp_gpio_state.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 12
  %call.i = tail call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 16, ptr noundef %bkp_gpio_state.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stmfx.i, align 4
  %map2.i = getelementptr inbounds %struct.stmfx, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %map2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map2.i, align 4
  %bkp_gpio_dir.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 13
  %call3.i = tail call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef 96, ptr noundef %bkp_gpio_dir.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end6.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stmfx.i, align 4
  %map8.i = getelementptr inbounds %struct.stmfx, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %map8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map8.i, align 4
  %bkp_gpio_type.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 14
  %call9.i = tail call i32 @regmap_bulk_read(ptr noundef %13, i32 noundef 100, ptr noundef %bkp_gpio_type.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %stmfx_pinctrl_backup_regs.exit, label %if.end6.i.do.end_crit_edge

if.end6.i.do.end_crit_edge:                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

stmfx_pinctrl_backup_regs.exit:                   ; preds = %if.end6.i
  %14 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stmfx.i, align 4
  %map14.i = getelementptr inbounds %struct.stmfx, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %map14.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map14.i, align 4
  %bkp_gpio_pupd.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 15
  %call15.i = tail call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef 104, ptr noundef %bkp_gpio_pupd.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool.not = icmp eq i32 %call15.i, 0
  br i1 %tobool.not, label %stmfx_pinctrl_backup_regs.exit.cleanup_crit_edge, label %stmfx_pinctrl_backup_regs.exit.do.end_crit_edge

stmfx_pinctrl_backup_regs.exit.do.end_crit_edge:  ; preds = %stmfx_pinctrl_backup_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

stmfx_pinctrl_backup_regs.exit.cleanup_crit_edge: ; preds = %stmfx_pinctrl_backup_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %stmfx_pinctrl_backup_regs.exit.do.end_crit_edge, %if.end6.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i8 = phi i32 [ %call15.i, %stmfx_pinctrl_backup_regs.exit.do.end_crit_edge ], [ %call9.i, %if.end6.i.do.end_crit_edge ], [ %call3.i, %if.end.i.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ]
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.65) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %stmfx_pinctrl_backup_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i8, %do.end ], [ 0, %stmfx_pinctrl_backup_regs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stmfx_pinctrl_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %stmfx.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stmfx.i, align 4
  %map.i = getelementptr inbounds %struct.stmfx, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  %bkp_gpio_dir.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 13
  %call.i = tail call i32 @regmap_bulk_write(ptr noundef %5, i32 noundef 96, ptr noundef %bkp_gpio_dir.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end.i:                                         ; preds = %entry
  %6 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stmfx.i, align 4
  %map2.i = getelementptr inbounds %struct.stmfx, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %map2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map2.i, align 4
  %bkp_gpio_type.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 14
  %call4.i = tail call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef 100, ptr noundef %bkp_gpio_type.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.do.end_crit_edge

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end7.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %stmfx.i, align 4
  %map9.i = getelementptr inbounds %struct.stmfx, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %map9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %map9.i, align 4
  %bkp_gpio_pupd.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 15
  %call11.i = tail call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef 104, ptr noundef %bkp_gpio_pupd.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end7.i.do.end_crit_edge

if.end7.i.do.end_crit_edge:                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end14.i:                                       ; preds = %if.end7.i
  %14 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %stmfx.i, align 4
  %map16.i = getelementptr inbounds %struct.stmfx, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %map16.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map16.i, align 4
  %bkp_gpio_state.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 12
  %call18.i = tail call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 108, ptr noundef %bkp_gpio_state.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end14.i.do.end_crit_edge

if.end14.i.do.end_crit_edge:                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end21.i:                                       ; preds = %if.end14.i
  %18 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %stmfx.i, align 4
  %map23.i = getelementptr inbounds %struct.stmfx, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %map23.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %map23.i, align 4
  %irq_gpi_evt.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 10
  %call25.i = tail call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 76, ptr noundef %irq_gpi_evt.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %if.end21.i.do.end_crit_edge

if.end21.i.do.end_crit_edge:                      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end28.i:                                       ; preds = %if.end21.i
  %22 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %stmfx.i, align 4
  %map30.i = getelementptr inbounds %struct.stmfx, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %map30.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %map30.i, align 4
  %irq_gpi_type.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 9
  %call32.i = tail call i32 @regmap_bulk_write(ptr noundef %25, i32 noundef 80, ptr noundef %irq_gpi_type.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %stmfx_pinctrl_restore_regs.exit, label %if.end28.i.do.end_crit_edge

if.end28.i.do.end_crit_edge:                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

stmfx_pinctrl_restore_regs.exit:                  ; preds = %if.end28.i
  %26 = ptrtoint ptr %stmfx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %stmfx.i, align 4
  %map37.i = getelementptr inbounds %struct.stmfx, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %map37.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map37.i, align 4
  %irq_gpi_src.i = getelementptr inbounds %struct.stmfx_pinctrl, ptr %1, i32 0, i32 8
  %call39.i = tail call i32 @regmap_bulk_write(ptr noundef %29, i32 noundef 72, ptr noundef %irq_gpi_src.i, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool.not = icmp eq i32 %call39.i, 0
  br i1 %tobool.not, label %stmfx_pinctrl_restore_regs.exit.cleanup_crit_edge, label %stmfx_pinctrl_restore_regs.exit.do.end_crit_edge

stmfx_pinctrl_restore_regs.exit.do.end_crit_edge: ; preds = %stmfx_pinctrl_restore_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

stmfx_pinctrl_restore_regs.exit.cleanup_crit_edge: ; preds = %stmfx_pinctrl_restore_regs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %stmfx_pinctrl_restore_regs.exit.do.end_crit_edge, %if.end28.i.do.end_crit_edge, %if.end21.i.do.end_crit_edge, %if.end14.i.do.end_crit_edge, %if.end7.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %retval.0.i8 = phi i32 [ %call39.i, %stmfx_pinctrl_restore_regs.exit.do.end_crit_edge ], [ %call32.i, %if.end28.i.do.end_crit_edge ], [ %call25.i, %if.end21.i.do.end_crit_edge ], [ %call18.i, %if.end14.i.do.end_crit_edge ], [ %call11.i, %if.end7.i.do.end_crit_edge ], [ %call4.i, %if.end.i.do.end_crit_edge ], [ %call.i, %entry.do.end_crit_edge ]
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.67) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %stmfx_pinctrl_restore_regs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i8, %do.end ], [ 0, %stmfx_pinctrl_restore_regs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !53, !55, !57, !59, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !147, !148, !149, !151, !152, !153}
!llvm.module.flags = !{!154, !155, !156, !157, !158, !159, !160, !161}
!llvm.ident = !{!162}

!0 = !{ptr @__initcall__kmod_pinctrl_stmfx__228_841_stmfx_pinctrl_driver_init6, !1, !"__initcall__kmod_pinctrl_stmfx__228_841_stmfx_pinctrl_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 841, i32 1}
!2 = !{ptr @__exitcall_stmfx_pinctrl_driver_exit, !1, !"__exitcall_stmfx_pinctrl_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description229, !4, !"__UNIQUE_ID_description229", i1 false, i1 false}
!4 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 843, i32 1}
!5 = !{ptr @__UNIQUE_ID_author230, !6, !"__UNIQUE_ID_author230", i1 false, i1 false}
!6 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 844, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 845, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 834, i32 11}
!12 = !{ptr @stmfx_pinctrl_driver, !13, !"stmfx_pinctrl_driver", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 832, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 633, i32 28}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 634, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @stmfx_pinctrl_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @stmfx_pinctrl_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @stmfx_pinctrl_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 642, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 656, i32 3}
!29 = !{ptr @stmfx_pinctrl_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @stmfx_pinctrl_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 662, i32 3}
!33 = !{ptr @stmfx_pinctrl_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @stmfx_pinctrl_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 667, i32 26}
!37 = !{ptr @stmfx_pinctrl_probe.lock_key, !38, !"lock_key", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 698, i32 8}
!39 = !{ptr @stmfx_pinctrl_probe.request_key, !38, !"request_key", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 700, i32 3}
!42 = !{ptr @stmfx_pinctrl_probe._entry.15, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @stmfx_pinctrl_probe._entry_ptr.17, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 713, i32 3}
!46 = !{ptr @stmfx_pinctrl_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @stmfx_pinctrl_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 717, i32 2}
!50 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @stmfx_pinctrl_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @stmfx_pinctrl_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @stmfx_pinctrl_ops, !54, !"stmfx_pinctrl_ops", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 412, i32 33}
!55 = !{ptr @stmfx_pinconf_ops, !56, !"stmfx_pinconf_ops", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 387, i32 33}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 295, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @stmfx_pinconf_set._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @stmfx_pinconf_set._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.27, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 371, i32 17}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 371, i32 37}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 371, i32 46}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 373, i32 18}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 374, i32 15}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 374, i32 24}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 376, i32 16}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 378, i32 17}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 380, i32 18}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 381, i32 15}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 381, i32 22}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 383, i32 18}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 383, i32 32}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 383, i32 45}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 54, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 55, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 56, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 57, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 58, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 59, i32 2}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 60, i32 2}
!104 = !{ptr @.str.48, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 61, i32 2}
!106 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 62, i32 2}
!108 = !{ptr @.str.50, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 63, i32 2}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 64, i32 2}
!112 = !{ptr @.str.52, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 65, i32 2}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 66, i32 2}
!116 = !{ptr @.str.54, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 67, i32 2}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 68, i32 2}
!120 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 69, i32 2}
!122 = !{ptr @.str.57, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 70, i32 2}
!124 = !{ptr @.str.58, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 71, i32 2}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 72, i32 2}
!128 = !{ptr @.str.60, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 73, i32 2}
!130 = !{ptr @.str.61, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 74, i32 2}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 75, i32 2}
!134 = !{ptr @.str.63, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 76, i32 2}
!136 = !{ptr @.str.64, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 77, i32 2}
!138 = !{ptr @stmfx_pins, !139, !"stmfx_pins", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 53, i32 38}
!140 = !{ptr @stmfx_pinctrl_of_match, !141, !"stmfx_pinctrl_of_match", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 826, i32 34}
!142 = !{ptr @stmfx_pinctrl_dev_pm_ops, !143, !"stmfx_pinctrl_dev_pm_ops", i1 false, i1 false}
!143 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 823, i32 8}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 801, i32 3}
!146 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @stmfx_pinctrl_suspend._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @stmfx_pinctrl_suspend._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/pinctrl-stmfx.c", i32 815, i32 3}
!151 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @stmfx_pinctrl_resume._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @stmfx_pinctrl_resume._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{i32 1, !"wchar_size", i32 2}
!155 = !{i32 1, !"min_enum_size", i32 4}
!156 = !{i32 8, !"branch-target-enforcement", i32 0}
!157 = !{i32 8, !"sign-return-address", i32 0}
!158 = !{i32 8, !"sign-return-address-all", i32 0}
!159 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!160 = !{i32 7, !"uwtable", i32 1}
!161 = !{i32 7, !"frame-pointer", i32 2}
!162 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!163 = !{!"auto-init"}
