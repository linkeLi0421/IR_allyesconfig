; ModuleID = '/llk/IR_all_yes/drivers/rtc/rtc-omap.c_pt.bc'
source_filename = "../drivers/rtc/rtc-omap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+omap_rtc_power_off_program\22, \22a\22\09"
module asm "\09.weak\09__crc_omap_rtc_power_off_program\09\09\09\09"
module asm "\09.long\09__crc_omap_rtc_power_off_program\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_omap_rtc_power_off_program:\09\09\09\09\09"
module asm "\09.asciz \09\22omap_rtc_power_off_program\22\09\09\09\09\09"
module asm "__kstrtabns_omap_rtc_power_off_program:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.rtc_class_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_generic_params = type { ptr, i32, i32 }
%struct.pin_config_item = type { i32, ptr, ptr, i8 }
%struct.omap_rtc_device_type = type { i8, i8, i8, i8, ptr, ptr }
%struct.rtc_time = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_rtc = type { ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.rtc_device = type { %struct.device, ptr, i32, ptr, %struct.mutex, %struct.cdev, i32, i32, %struct.spinlock, %struct.wait_queue_head, ptr, i32, i32, %struct.timerqueue_head, %struct.rtc_timer, %struct.rtc_timer, %struct.hrtimer, i32, %struct.work_struct, i32, i32, [1 x i32], i64, i64, i64, i64, i8, %struct.work_struct, %struct.timer_list, i32, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.rtc_timer = type { %struct.timerqueue_node, i64, ptr, ptr, i32 }
%struct.rtc_wkalrm = type { i8, i8, %struct.rtc_time }

@omap_rtc_power_off_rtc = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_omap_rtc_power_off_program = external dso_local constant [0 x i8], align 1
@__kstrtabns_omap_rtc_power_off_program = external dso_local constant [0 x i8], align 1
@__ksymtab_omap_rtc_power_off_program = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @omap_rtc_power_off_program to i32), ptr @__kstrtab_omap_rtc_power_off_program, ptr @__kstrtabns_omap_rtc_power_off_program }, section "___ksymtab+omap_rtc_power_off_program", align 4
@__initcall__kmod_rtc_omap__228_1030_omap_rtc_driver_init6 = internal global ptr @omap_rtc_driver_init, section ".initcall6.init", align 4
@omap_rtc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_rtc_probe, ptr @omap_rtc_remove, ptr @omap_rtc_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_rtc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_rtc_pm_ops, ptr null, ptr null }, ptr @omap_rtc_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_rtc_driver_exit = internal global ptr @omap_rtc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [45 x i8] c"rtc_omap.author=George G. Davis (and others)\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [35 x i8] c"rtc_omap.file=drivers/rtc/rtc-omap\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [21 x i8] c"rtc_omap.license=GPL\00", section ".modinfo", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_rtc\00", [23 x i8] zeroinitializer }, align 32
@omap_rtc_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_rtc_am3352_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-rtc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap_rtc_da830_type }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@omap_rtc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @omap_rtc_suspend, ptr @omap_rtc_resume, ptr @omap_rtc_suspend, ptr @omap_rtc_resume, ptr @omap_rtc_suspend, ptr @omap_rtc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_rtc_runtime_suspend, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_rtc_id_table = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"omap_rtc\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @omap_rtc_default_type to i32) }, %struct.platform_device_id { [20 x i8] c"am3352-rtc\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @omap_rtc_am3352_type to i32) }, %struct.platform_device_id { [20 x i8] c"da830-rtc\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @omap_rtc_da830_type to i32) }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ext-clk\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"int-clk\00", [24 x i8] zeroinitializer }, align 32
@omap_rtc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 803, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RTC power up reset detected\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_rtc_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/rtc/rtc-omap.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_rtc_probe._entry_ptr = internal global ptr @omap_rtc_probe._entry, section ".printk_index", align 4
@omap_rtc_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 812, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"already running\0A\00", [47 x i8] zeroinitializer }, align 32
@omap_rtc_probe._entry_ptr.10 = internal global ptr @omap_rtc_probe._entry.8, section ".printk_index", align 4
@omap_rtc_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 834, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"split power mode\0A\00", [46 x i8] zeroinitializer }, align 32
@omap_rtc_probe._entry_ptr.13 = internal global ptr @omap_rtc_probe._entry.11, section ".printk_index", align 4
@omap_rtc_ops = internal constant { %struct.rtc_class_ops, [52 x i8] } { %struct.rtc_class_ops { ptr null, ptr @omap_rtc_read_time, ptr @omap_rtc_set_time, ptr @omap_rtc_read_alarm, ptr @omap_rtc_set_alarm, ptr null, ptr @omap_rtc_alarm_irq_enable, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@omap_rtc_nvmem_config = internal global { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str.19, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @omap_rtc_scratch_read, ptr @omap_rtc_scratch_write, ptr null, i32 12, i32 4, i32 4, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@rtc_pinctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr null, ptr @rtc_pins_desc, i32 4, ptr @rtc_pinctrl_ops, ptr null, ptr @rtc_pinconf_ops, ptr null, i32 1, ptr @rtc_params, ptr @rtc_conf_items, i8 0 }, [52 x i8] zeroinitializer }, align 32
@omap_rtc_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 883, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't register pinctrl driver\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@omap_rtc_probe._entry_ptr.17 = internal global ptr @omap_rtc_probe._entry.14, section ".printk_index", align 4
@pm_power_off = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"system-power-controller\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_rtc_scratch\00", [47 x i8] zeroinitializer }, align 32
@rtc_pins_desc = internal constant { [4 x %struct.pinctrl_pin_desc], [48 x i8] } { [4 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.23, ptr null }], [48 x i8] zeroinitializer }, align 32
@rtc_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @rtc_pinctrl_get_groups_count, ptr @rtc_pinctrl_get_group_name, ptr null, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinconf_generic_dt_free_map }, [40 x i8] zeroinitializer }, align 32
@rtc_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @rtc_pinconf_get, ptr @rtc_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@rtc_params = internal constant { [1 x %struct.pinconf_generic_params], [20 x i8] } { [1 x %struct.pinconf_generic_params] [%struct.pinconf_generic_params { ptr @.str.26, i32 128, i32 0 }], [20 x i8] zeroinitializer }, align 32
@rtc_conf_items = internal constant { [1 x %struct.pin_config_item], [16 x i8] } { [1 x %struct.pin_config_item] [%struct.pin_config_item { i32 128, ptr @.str.27, ptr null, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext_wakeup0\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext_wakeup1\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext_wakeup2\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ext_wakeup3\00", [20 x i8] zeroinitializer }, align 32
@rtc_pinconf_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.5, i32 656, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Property %u not supported\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rtc_pinconf_set\00", [16 x i8] zeroinitializer }, align 32
@rtc_pinconf_set._entry_ptr = internal global ptr @rtc_pinconf_set._entry, section ".printk_index", align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,active-high\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"input active high\00", [46 x i8] zeroinitializer }, align 32
@omap_rtc_am3352_type = internal constant { %struct.omap_rtc_device_type, [20 x i8] } { %struct.omap_rtc_device_type { i8 1, i8 1, i8 1, i8 0, ptr @am3352_rtc_lock, ptr @am3352_rtc_unlock }, [20 x i8] zeroinitializer }, align 32
@omap_rtc_da830_type = internal constant { %struct.omap_rtc_device_type, [20 x i8] } { %struct.omap_rtc_device_type { i8 0, i8 0, i8 0, i8 0, ptr @am3352_rtc_lock, ptr @am3352_rtc_unlock }, [20 x i8] zeroinitializer }, align 32
@omap_rtc_default_type = internal constant { %struct.omap_rtc_device_type, [20 x i8] } { %struct.omap_rtc_device_type { i8 0, i8 0, i8 0, i8 1, ptr @default_rtc_lock, ptr @default_rtc_unlock }, [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 128]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 12, i64 128]
@___asan_gen_.29 = private unnamed_addr constant [23 x i8] c"omap_rtc_power_off_rtc\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 403, i32 25 }
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"omap_rtc_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1018, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 1023, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"omap_rtc_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 547, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"omap_rtc_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 997, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"omap_rtc_id_table\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 531, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 756, i32 38 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 760, i32 39 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 803, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 812, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 834, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"omap_rtc_ops\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 504, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"omap_rtc_nvmem_config\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 717, i32 28 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"rtc_pinctrl_desc\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 674, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 883, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 1548, i32 35 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 718, i32 10 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"rtc_pins_desc\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 560, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"rtc_pinctrl_ops\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 578, i32 33 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"rtc_pinconf_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 668, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant [11 x i8] c"rtc_params\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 587, i32 44 }
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"rtc_conf_items\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 592, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 561, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 562, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 563, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 564, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 655, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 588, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 593, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [21 x i8] c"omap_rtc_am3352_type\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 518, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c"omap_rtc_da830_type\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 526, i32 42 }
@___asan_gen_.155 = private unnamed_addr constant [22 x i8] c"omap_rtc_default_type\00", align 1
@___asan_gen_.156 = private constant [26 x i8] c"../drivers/rtc/rtc-omap.c\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.156, i32 512, i32 42 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_omap_rtc_driver_exit, ptr @__initcall__kmod_rtc_omap__228_1030_omap_rtc_driver_init6, ptr @__ksymtab_omap_rtc_power_off_program, ptr @omap_rtc_driver_exit, ptr @omap_rtc_probe._entry, ptr @omap_rtc_probe._entry.11, ptr @omap_rtc_probe._entry.14, ptr @omap_rtc_probe._entry.8, ptr @omap_rtc_probe._entry_ptr, ptr @omap_rtc_probe._entry_ptr.10, ptr @omap_rtc_probe._entry_ptr.13, ptr @omap_rtc_probe._entry_ptr.17, ptr @rtc_pinconf_set._entry, ptr @rtc_pinconf_set._entry_ptr, ptr @omap_rtc_power_off_rtc, ptr @omap_rtc_driver, ptr @.str, ptr @omap_rtc_of_match, ptr @omap_rtc_pm_ops, ptr @omap_rtc_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @omap_rtc_ops, ptr @omap_rtc_nvmem_config, ptr @rtc_pinctrl_desc, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @rtc_pins_desc, ptr @rtc_pinctrl_ops, ptr @rtc_pinconf_ops, ptr @rtc_params, ptr @rtc_conf_items, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @omap_rtc_am3352_type, ptr @omap_rtc_da830_type, ptr @omap_rtc_default_type], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_power_off_rtc to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_id_table to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_nvmem_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_pinctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_pins_desc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_conf_items to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_pinconf_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_am3352_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_da830_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_rtc_default_type to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_rtc_power_off_program(ptr nocapture readnone %dev) #0 align 64 {
entry:
  %tm = alloca %struct.rtc_time, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_rtc_power_off_rtc, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tm) #10
  %1 = call ptr @memset(ptr %tm, i32 255, i32 36)
  %type = getelementptr inbounds %struct.omap_rtc, ptr %0, i32 0, i32 9
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlock, align 4
  tail call void %5(ptr noundef %0) #10
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %0, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 152
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %9 = or i32 %8, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %11, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %9) #10, !srcloc !102
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  br label %again

again:                                            ; preds = %if.then.again_crit_edge, %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @arm_heavy_mb() #10
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %13, i32 68
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 -2147483648) #10, !srcloc !102
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %15) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv.i, ptr %tm, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv2.i = zext i8 %20 to i32
  %21 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv2.i, ptr %tm_min.i, align 4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %23, i32 8
  %24 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i23.i) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv4.i = zext i8 %24 to i32
  %25 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv4.i, ptr %tm_hour.i, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %27, i32 12
  %28 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i25.i) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv6.i = zext i8 %28 to i32
  %29 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv6.i, ptr %tm_mday.i, align 4
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %31, i32 16
  %32 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i27.i) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv8.i = zext i8 %32 to i32
  %33 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv8.i, ptr %tm_mon.i, align 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %35, i32 20
  %36 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i29.i) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %37 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tm, align 4
  %conv.i45 = trunc i32 %38 to i8
  %call.i = call i32 @_bcd2bin(i8 noundef zeroext %conv.i45) #13
  %39 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %call.i, ptr %tm, align 4
  %40 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tm_min.i, align 4
  %conv6.i47 = trunc i32 %41 to i8
  %call17.i = call i32 @_bcd2bin(i8 noundef zeroext %conv6.i47) #13
  %42 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call17.i, ptr %tm_min.i, align 4
  %43 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tm_hour.i, align 4
  %conv21.i = trunc i32 %44 to i8
  %call32.i = call i32 @_bcd2bin(i8 noundef zeroext %conv21.i) #13
  %45 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %call32.i, ptr %tm_hour.i, align 4
  %46 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_mday.i, align 4
  %conv36.i = trunc i32 %47 to i8
  %call47.i = call i32 @_bcd2bin(i8 noundef zeroext %conv36.i) #13
  %48 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %call47.i, ptr %tm_mday.i, align 4
  %49 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tm_mon.i, align 4
  %conv51.i = trunc i32 %50 to i8
  %call62.i = call i32 @_bcd2bin(i8 noundef zeroext %conv51.i) #13
  %sub.i = add i32 %call62.i, -1
  %51 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %call77.i = call i32 @_bcd2bin(i8 noundef zeroext %36) #13
  %add80.i = add i32 %call77.i, 100
  %52 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add80.i, ptr %tm_year.i, align 4
  %call1 = call i64 @rtc_tm_to_time64(ptr noundef nonnull %tm) #10
  %conv = trunc i64 %call1 to i32
  %add = add i32 %conv, 1
  %conv2 = zext i32 %add to i64
  call void @rtc_time64_to_tm(i64 noundef %conv2, ptr noundef nonnull %tm) #10
  %53 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tm, align 4
  %call.i55 = call zeroext i8 @_bin2bcd(i32 noundef %54) #13
  %conv4.i56 = zext i8 %call.i55 to i32
  %55 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv4.i56, ptr %tm, align 4
  %56 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tm_min.i, align 4
  %call16.i = call zeroext i8 @_bin2bcd(i32 noundef %57) #13
  %conv17.i = zext i8 %call16.i to i32
  %58 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %conv17.i, ptr %tm_min.i, align 4
  %59 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tm_hour.i, align 4
  %call31.i = call zeroext i8 @_bin2bcd(i32 noundef %60) #13
  %conv32.i = zext i8 %call31.i to i32
  %61 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv32.i, ptr %tm_hour.i, align 4
  %62 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %tm_mday.i, align 4
  %call46.i = call zeroext i8 @_bin2bcd(i32 noundef %63) #13
  %conv47.i = zext i8 %call46.i to i32
  %64 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv47.i, ptr %tm_mday.i, align 4
  %65 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tm_mon.i, align 4
  %add51.i = add i32 %66, 1
  %call65.i = call zeroext i8 @_bin2bcd(i32 noundef %add51.i) #13
  %conv66.i82 = zext i8 %call65.i to i32
  %67 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv66.i82, ptr %tm_mon.i, align 4
  %68 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tm_year.i, align 4
  %sub.i84 = add i32 %69, -100
  %call83.i = call zeroext i8 @_bin2bcd(i32 noundef %sub.i84) #13
  %conv84.i = zext i8 %call83.i to i32
  %70 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %conv84.i, ptr %tm_year.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %again
  %count.02.i = phi i32 [ 0, %again ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %71 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %72, i32 68
  %73 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i86) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %74 = and i8 %73, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i = icmp eq i8 %74, 0
  br i1 %tobool.not.i, label %for.body.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

for.body.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %75(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %count.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %for.body.i.rtc_wait_not_busy.exit_crit_edge
  %76 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tm, align 4
  %conv4 = trunc i32 %77 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @arm_heavy_mb() #10
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %79, i32 128
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i88, i8 %conv4) #10, !srcloc !106
  %80 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tm_min.i, align 4
  %conv5 = trunc i32 %81 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @arm_heavy_mb() #10
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %83, i32 132
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i90, i8 %conv5) #10, !srcloc !106
  %84 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tm_hour.i, align 4
  %conv6 = trunc i32 %85 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @arm_heavy_mb() #10
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %87, i32 136
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i92, i8 %conv6) #10, !srcloc !106
  %88 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tm_mday.i, align 4
  %conv7 = trunc i32 %89 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @arm_heavy_mb() #10
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %91, i32 140
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i94, i8 %conv7) #10, !srcloc !106
  %92 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tm_mon.i, align 4
  %conv8 = trunc i32 %93 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @arm_heavy_mb() #10
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %95, i32 144
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i96, i8 %conv8) #10, !srcloc !106
  %96 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tm_year.i, align 4
  %conv9 = trunc i32 %97 to i8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  call void @arm_heavy_mb() #10
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %99, i32 148
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i98, i8 %conv9) #10, !srcloc !106
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %101, i32 72
  %102 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i100) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %103 = or i8 %102, 16
  %or12 = zext i8 %103 to i32
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  call void @arm_heavy_mb() #10
  %104 = shl nuw i32 %or12, 24
  %105 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %base.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %106, i32 72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %104) #10, !srcloc !102
  %107 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base.i, align 4
  %109 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %108) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv14 = zext i8 %109 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv14)
  %cmp.not = icmp eq i32 %38, %conv14
  br i1 %cmp.not, label %rtc_wait_not_busy.exit.if.end19_crit_edge, label %if.then

rtc_wait_not_busy.exit.if.end19_crit_edge:        ; preds = %rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then:                                          ; preds = %rtc_wait_not_busy.exit
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %111, i32 68
  %112 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i105) #10, !srcloc !103
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %tobool.not = icmp sgt i8 %112, -1
  br i1 %tobool.not, label %if.then.again_crit_edge, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then.again_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %again

if.end19:                                         ; preds = %if.then.if.end19_crit_edge, %rtc_wait_not_busy.exit.if.end19_crit_edge
  %113 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %114, i32 0, i32 4
  %115 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %lock, align 4
  call void %116(ptr noundef %0) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tm) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @rtc_tm_to_time64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_time64_to_tm(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_rtc_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_rtc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_rtc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @_bcd2bin(i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local zeroext i8 @_bin2bcd(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_match_device(ptr noundef nonnull @omap_rtc_of_match, ptr noundef %dev) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.of_device_id, ptr %call2, i32 0, i32 3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %type = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %type, align 4
  %has_pmic_mode = getelementptr inbounds %struct.omap_rtc_device_type, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %has_pmic_mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_pmic_mode, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool6.not = icmp eq i8 %4, 0
  br i1 %tobool6.not, label %if.then4.land.end_crit_edge, label %land.rhs

if.then4.land.end_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #12
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.18, ptr noundef null) #10
  %tobool.i.i = icmp ne ptr %call.i.i, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then4.land.end_crit_edge
  %7 = phi i1 [ false, %if.then4.land.end_crit_edge ], [ %tobool.i.i, %land.rhs ]
  %is_pmic_controller = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 6
  %frombool = zext i1 %7 to i8
  %8 = ptrtoint ptr %is_pmic_controller to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %is_pmic_controller, align 1
  br label %if.end11

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %id_entry9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %9 = ptrtoint ptr %id_entry9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %id_entry9, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %13 = inttoptr i32 %12 to ptr
  %type10 = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %type10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %type10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else, %land.end
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #10
  %irq_timer = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %irq_timer to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call12, ptr %irq_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp = icmp slt i32 %call12, 1
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  %irq_alarm = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call16, ptr %irq_alarm, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp18 = icmp slt i32 %call16, 1
  br i1 %cmp18, label %if.end15.cleanup_crit_edge, label %if.end20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  %clk = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %has_ext_clk = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %has_ext_clk to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %has_ext_clk, align 2
  br label %if.end30

if.else26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  %19 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call28, ptr %clk, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else26, %if.then25
  %20 = phi ptr [ %call28, %if.else26 ], [ %call22, %if.then25 ]
  %cmp.i315 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i315, label %if.end30.if.end36_crit_edge, label %if.then33

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then33:                                        ; preds = %if.end30
  %call.i316 = tail call i32 @clk_prepare(ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i316)
  %tobool.not.i = icmp eq i32 %call.i316, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then33.if.end36_crit_edge

if.then33.if.end36_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end.i:                                         ; preds = %if.then33
  %call1.i = tail call i32 @clk_enable(ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end36_crit_edge, label %if.then3.i

if.end.i.if.end36_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %20) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then3.i, %if.end.i.if.end36_crit_edge, %if.then33.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  %call37 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #10
  %base = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call37, ptr %base, align 4
  %cmp.i317 = icmp ugt ptr %call37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i317, label %if.then40, label %if.end44

if.then40:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %23) #10
  tail call void @clk_unprepare(ptr noundef %23) #10
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %26 = ptrtoint ptr %25 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end36
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  %call.i318 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  %type48 = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %type48 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %type48, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %unlock, align 4
  tail call void %31(ptr noundef nonnull %call.i) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !102
  %34 = ptrtoint ptr %type48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %type48, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool50.not = icmp eq i8 %37, 0
  br i1 %tobool50.not, label %if.end44.if.end54_crit_edge, label %if.then51

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then51:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base, align 4
  %add.ptr.i320 = getelementptr i8, ptr %39, i32 84
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i320) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %41 = or i8 %40, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr.i322 = getelementptr i8, ptr %43, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i322, i8 %41) #10, !srcloc !106
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end44.if.end54_crit_edge
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr.i324 = getelementptr i8, ptr %45, i32 68
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i324) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %47 = ptrtoint ptr %type48 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %type48, align 4
  %has_pmic_mode57 = getelementptr inbounds %struct.omap_rtc_device_type, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %has_pmic_mode57 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %has_pmic_mode57, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool58.not = icmp eq i8 %50, 0
  %spec.select = select i1 %tobool58.not, i8 64, i8 -64
  %has_power_up_reset = getelementptr inbounds %struct.omap_rtc_device_type, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %has_power_up_reset to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %has_power_up_reset, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool65.not = icmp eq i8 %52, 0
  br i1 %tobool65.not, label %if.end54.if.end75_crit_edge, label %if.then66

if.end54.if.end75_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then66:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %46)
  %tobool71.not = icmp sgt i8 %46, -1
  br i1 %tobool71.not, label %if.then66.if.end75_crit_edge, label %do.end

if.then66.if.end75_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

do.end:                                           ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.3) #14
  br label %if.end75

if.end75:                                         ; preds = %do.end, %if.then66.if.end75_crit_edge, %if.end54.if.end75_crit_edge
  %mask.1 = phi i8 [ -64, %do.end ], [ -64, %if.then66.if.end75_crit_edge ], [ %spec.select, %if.end54.if.end75_crit_edge ]
  %and78314 = and i8 %mask.1, %46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and78314)
  %tobool79.not = icmp eq i8 %and78314, 0
  br i1 %tobool79.not, label %if.end75.if.end85_crit_edge, label %if.then80

if.end75.if.end85_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end85

if.then80:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %53 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base, align 4
  %add.ptr.i326 = getelementptr i8, ptr %54, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i326, i8 %and78314) #10, !srcloc !106
  br label %if.end85

if.end85:                                         ; preds = %if.then80, %if.end75.if.end85_crit_edge
  %55 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base, align 4
  %add.ptr.i328 = getelementptr i8, ptr %56, i32 64
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i328) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %58 = and i8 %57, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool89.not = icmp eq i8 %58, 0
  br i1 %tobool89.not, label %if.end85.if.end95_crit_edge, label %do.end93

if.end85.if.end95_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95

do.end93:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9) #14
  br label %if.end95

if.end95:                                         ; preds = %do.end93, %if.end85.if.end95_crit_edge
  %and97 = and i8 %57, -124
  %59 = or i8 %and97, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %57)
  %tobool104.not = icmp sgt i8 %57, -1
  br i1 %tobool104.not, label %if.end95.if.end110_crit_edge, label %do.end108

if.end95.if.end110_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.end108:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  br label %if.end110

if.end110:                                        ; preds = %do.end108, %if.end95.if.end110_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %57, i8 %59)
  %cmp113.not = icmp eq i8 %57, %59
  br i1 %cmp113.not, label %if.end110.if.end116_crit_edge, label %if.then115

if.end110.if.end116_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end116

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %60 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base, align 4
  %add.ptr.i330 = getelementptr i8, ptr %61, i32 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i330, i8 %59) #10, !srcloc !106
  br label %if.end116

if.end116:                                        ; preds = %if.then115, %if.end110.if.end116_crit_edge
  %has_ext_clk117 = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 7
  %62 = ptrtoint ptr %has_ext_clk117 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %has_ext_clk117, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool118.not = icmp eq i8 %63, 0
  br i1 %tobool118.not, label %if.end116.if.end127_crit_edge, label %if.then119

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end127

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base, align 4
  %add.ptr.i332 = getelementptr i8, ptr %65, i32 84
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i332) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %67 = and i8 %66, -89
  %68 = or i8 %67, 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %69 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base, align 4
  %add.ptr.i334 = getelementptr i8, ptr %70, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i334, i8 %68) #10, !srcloc !106
  br label %if.end127

if.end127:                                        ; preds = %if.then119, %if.end116.if.end127_crit_edge
  %71 = ptrtoint ptr %type48 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %type48, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %lock, align 4
  tail call void %74(ptr noundef nonnull %call.i) #10
  %call130 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext true) #10
  %call132 = tail call ptr @devm_rtc_allocate_device(ptr noundef %dev) #10
  %75 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call132, ptr %call.i, align 4
  %cmp.i335 = icmp ugt ptr %call132, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i335, label %if.then136, label %if.end139

if.then136:                                       ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %call132 to i32
  br label %err

if.end139:                                        ; preds = %if.end127
  %ops = getelementptr inbounds %struct.rtc_device, ptr %call132, i32 0, i32 3
  %77 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @omap_rtc_ops, ptr %ops, align 8
  %78 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call.i, align 4
  %range_min = getelementptr inbounds %struct.rtc_device, ptr %79, i32 0, i32 22
  %80 = ptrtoint ptr %range_min to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 946684800, ptr %range_min, align 8
  %81 = load ptr, ptr %call.i, align 4
  %range_max = getelementptr inbounds %struct.rtc_device, ptr %81, i32 0, i32 23
  %82 = ptrtoint ptr %range_max to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 4102444799, ptr %range_max, align 8
  store ptr %call.i, ptr getelementptr inbounds (%struct.nvmem_config, ptr @omap_rtc_nvmem_config, i32 0, i32 21), align 4
  %83 = ptrtoint ptr %irq_timer to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq_timer, align 4
  %85 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i336 = icmp eq ptr %87, null
  br i1 %tobool.not.i336, label %if.end.i337, label %if.end139.dev_name.exit_crit_edge

if.end139.dev_name.exit_crit_edge:                ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i337:                                      ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %88 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %85, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i337, %if.end139.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %89, %if.end.i337 ], [ %87, %if.end139.dev_name.exit_crit_edge ]
  %call.i338 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %84, ptr noundef nonnull @rtc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i338)
  %tobool149.not = icmp eq i32 %call.i338, 0
  br i1 %tobool149.not, label %if.end151, label %dev_name.exit.err_crit_edge

dev_name.exit.err_crit_edge:                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end151:                                        ; preds = %dev_name.exit
  %90 = ptrtoint ptr %irq_timer to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %irq_timer, align 4
  %92 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq_alarm, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %93)
  %cmp154.not = icmp eq i32 %91, %93
  br i1 %cmp154.not, label %if.end151.if.end166_crit_edge, label %if.then156

if.end151.if.end166_crit_edge:                    ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.then156:                                       ; preds = %if.end151
  %94 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call.i, align 4
  %init_name.i339 = getelementptr inbounds %struct.device, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %init_name.i339 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %init_name.i339, align 8
  %tobool.not.i340 = icmp eq ptr %97, null
  br i1 %tobool.not.i340, label %if.end.i341, label %if.then156.dev_name.exit343_crit_edge

if.then156.dev_name.exit343_crit_edge:            ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit343

if.end.i341:                                      ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %95, align 4
  br label %dev_name.exit343

dev_name.exit343:                                 ; preds = %if.end.i341, %if.then156.dev_name.exit343_crit_edge
  %retval.0.i342 = phi ptr [ %99, %if.end.i341 ], [ %97, %if.then156.dev_name.exit343_crit_edge ]
  %call.i344 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %93, ptr noundef nonnull @rtc_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i342, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i344)
  %tobool163.not = icmp eq i32 %call.i344, 0
  br i1 %tobool163.not, label %dev_name.exit343.if.end166_crit_edge, label %dev_name.exit343.err_crit_edge

dev_name.exit343.err_crit_edge:                   ; preds = %dev_name.exit343
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

dev_name.exit343.if.end166_crit_edge:             ; preds = %dev_name.exit343
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end166

if.end166:                                        ; preds = %dev_name.exit343.if.end166_crit_edge, %if.end151.if.end166_crit_edge
  %init_name.i345 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %100 = ptrtoint ptr %init_name.i345 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %init_name.i345, align 8
  %tobool.not.i346 = icmp eq ptr %101, null
  br i1 %tobool.not.i346, label %if.end.i347, label %if.end166.dev_name.exit349_crit_edge

if.end166.dev_name.exit349_crit_edge:             ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit349

if.end.i347:                                      ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev, align 4
  br label %dev_name.exit349

dev_name.exit349:                                 ; preds = %if.end.i347, %if.end166.dev_name.exit349_crit_edge
  %retval.0.i348 = phi ptr [ %103, %if.end.i347 ], [ %101, %if.end166.dev_name.exit349_crit_edge ]
  store ptr %retval.0.i348, ptr @rtc_pinctrl_desc, align 4
  %call170 = tail call ptr @devm_pinctrl_register(ptr noundef %dev, ptr noundef nonnull @rtc_pinctrl_desc, ptr noundef nonnull %call.i) #10
  %pctldev = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 10
  %104 = ptrtoint ptr %pctldev to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %call170, ptr %pctldev, align 4
  %cmp.i350 = icmp ugt ptr %call170, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i350, label %do.end176, label %if.end180

do.end176:                                        ; preds = %dev_name.exit349
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #14
  %105 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pctldev, align 4
  %107 = ptrtoint ptr %106 to i32
  br label %err

if.end180:                                        ; preds = %dev_name.exit349
  %108 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %call.i, align 4
  %call182 = tail call i32 @__devm_rtc_register_device(ptr noundef null, ptr noundef %109) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182)
  %tobool183.not = icmp eq i32 %call182, 0
  br i1 %tobool183.not, label %if.end185, label %if.end180.err_crit_edge

if.end180.err_crit_edge:                          ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #12
  br label %err

if.end185:                                        ; preds = %if.end180
  %110 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %call.i, align 4
  %call187 = tail call i32 @devm_rtc_nvmem_register(ptr noundef %111, ptr noundef nonnull @omap_rtc_nvmem_config) #10
  %is_pmic_controller188 = getelementptr inbounds %struct.omap_rtc, ptr %call.i, i32 0, i32 6
  %112 = ptrtoint ptr %is_pmic_controller188 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %is_pmic_controller188, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool189.not = icmp eq i8 %113, 0
  br i1 %tobool189.not, label %if.end185.cleanup_crit_edge, label %if.then190

if.end185.cleanup_crit_edge:                      ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then190:                                       ; preds = %if.end185
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %114 = load ptr, ptr @pm_power_off, align 4
  %tobool191.not = icmp eq ptr %114, null
  br i1 %tobool191.not, label %if.then192, label %if.then190.cleanup_crit_edge

if.then190.cleanup_crit_edge:                     ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then192:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call.i, ptr @omap_rtc_power_off_rtc, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr @omap_rtc_power_off, ptr @pm_power_off, align 4
  br label %cleanup

err:                                              ; preds = %if.end180.err_crit_edge, %do.end176, %dev_name.exit343.err_crit_edge, %dev_name.exit.err_crit_edge, %if.then136
  %ret.0 = phi i32 [ %76, %if.then136 ], [ %call.i338, %dev_name.exit.err_crit_edge ], [ %call.i344, %dev_name.exit343.err_crit_edge ], [ %107, %do.end176 ], [ %call182, %if.end180.err_crit_edge ]
  %115 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %116) #10
  tail call void @clk_unprepare(ptr noundef %116) #10
  %call197 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #10
  %117 = ptrtoint ptr %type48 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %type48, align 4
  %lock199 = getelementptr inbounds %struct.omap_rtc_device_type, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %lock199 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %lock199, align 4
  tail call void %120(ptr noundef nonnull %call.i) #10
  %call.i351 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.then192, %if.then190.cleanup_crit_edge, %if.end185.cleanup_crit_edge, %if.then40, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then40 ], [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ -2, %if.end11.cleanup_crit_edge ], [ -2, %if.end15.cleanup_crit_edge ], [ 0, %if.then190.cleanup_crit_edge ], [ 0, %if.then192 ], [ 0, %if.end185.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  %2 = load ptr, ptr @pm_power_off, align 4
  %cmp = icmp eq ptr %2, @omap_rtc_power_off
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load ptr, ptr @omap_rtc_power_off_rtc, align 4
  %cmp1 = icmp eq ptr %3, %1
  br i1 %cmp1, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @pm_power_off to i32))
  store ptr null, ptr @pm_power_off, align 4
  store ptr null, ptr @omap_rtc_power_off_rtc, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @device_init_wakeup(ptr noundef %dev, i1 noundef zeroext false) #10
  %clk = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %type = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock, align 4
  tail call void %9(ptr noundef %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #10, !srcloc !106
  %has_ext_clk = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %has_ext_clk to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_ext_clk, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end6.if.end10_crit_edge, label %if.then7

if.end6.if.end10_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %15, i32 84
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i30) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %17 = and i8 %16, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %19, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i32, i8 %17) #10, !srcloc !106
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end6.if.end10_crit_edge
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  tail call void %23(ptr noundef %1) #10
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_rtc_shutdown(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlock, align 4
  tail call void %5(ptr noundef %1) #10
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 72
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %9 = and i8 %8, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %11, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 %9) #10, !srcloc !106
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock, align 4
  tail call void %15(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_rtc_allocate_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_irq(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 68
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %type = getelementptr inbounds %struct.omap_rtc, ptr %dev_id, i32 0, i32 9
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unlock, align 4
  tail call void %6(ptr noundef %dev_id) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %8, i32 68
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i19, i8 64) #10, !srcloc !106
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void %12(ptr noundef %dev_id) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %events.0 = phi i32 [ 160, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %and3 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %or6 = or i32 %events.0, 144
  %spec.select = select i1 %tobool4.not, i32 %events.0, i32 %or6
  %13 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_id, align 4
  tail call void @rtc_update_irq(ptr noundef %14, i32 noundef 1, i32 noundef %spec.select) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_rtc_register_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_rtc_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_rtc_power_off() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_rtc_power_off_program(ptr undef)
  %0 = load ptr, ptr @omap_rtc_power_off_rtc, align 4
  %type = getelementptr inbounds %struct.omap_rtc, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unlock, align 4
  tail call void %4(ptr noundef %0) #10
  %5 = load ptr, ptr @omap_rtc_power_off_rtc, align 4
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 152
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !99
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %9 = or i32 %8, 285212928
  %10 = load ptr, ptr @omap_rtc_power_off_rtc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %base.i5 = getelementptr inbounds %struct.omap_rtc, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %base.i5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i5, align 4
  %add.ptr.i6 = getelementptr i8, ptr %12, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6, i32 %9) #10, !srcloc !102
  %13 = load ptr, ptr @omap_rtc_power_off_rtc, align 4
  %type3 = getelementptr inbounds %struct.omap_rtc, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %type3, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  tail call void %17(ptr noundef %13) #10
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry
  %__ms.07 = phi i32 [ 1500, %entry ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.07, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #10
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_read_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !109
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.02.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 68
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

for.body.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %count.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %for.body.i.rtc_wait_not_busy.exit_crit_edge
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %9) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %tm, align 4
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i9 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i9) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv2.i = zext i8 %14 to i32
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %15 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv2.i, ptr %tm_min.i, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i23.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv4.i = zext i8 %18 to i32
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %19 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv4.i, ptr %tm_hour.i, align 4
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %21, i32 12
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i25.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv6.i = zext i8 %22 to i32
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %23 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv6.i, ptr %tm_mday.i, align 4
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %25, i32 16
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i27.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv8.i = zext i8 %26 to i32
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %27 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv8.i, ptr %tm_mon.i, align 4
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29.i = getelementptr i8, ptr %29, i32 20
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i29.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv10.i = zext i8 %30 to i32
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %31 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv10.i, ptr %tm_year.i, align 4
  tail call void @trace_hardirqs_on() #10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !110
  %32 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tm, align 4
  %conv.i10 = trunc i32 %33 to i8
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i10) #13
  %34 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %tm, align 4
  %35 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_min.i, align 4
  %conv6.i12 = trunc i32 %36 to i8
  %call17.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv6.i12) #13
  %37 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call17.i, ptr %tm_min.i, align 4
  %38 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_hour.i, align 4
  %conv21.i = trunc i32 %39 to i8
  %call32.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv21.i) #13
  %40 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call32.i, ptr %tm_hour.i, align 4
  %41 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mday.i, align 4
  %conv36.i = trunc i32 %42 to i8
  %call47.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv36.i) #13
  %43 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call47.i, ptr %tm_mday.i, align 4
  %44 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mon.i, align 4
  %conv51.i = trunc i32 %45 to i8
  %call62.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv51.i) #13
  %sub.i = add i32 %call62.i, -1
  %46 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %tm_mon.i, align 4
  %47 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_year.i, align 4
  %conv66.i = trunc i32 %48 to i8
  %call77.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv66.i) #13
  %add80.i = add i32 %call77.i, 100
  %49 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add80.i, ptr %tm_year.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_set_time(ptr nocapture noundef readonly %dev, ptr nocapture noundef %tm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tm, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #13
  %conv4.i = zext i8 %call.i to i32
  %4 = ptrtoint ptr %tm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4.i, ptr %tm, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 1
  %5 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #13
  %conv17.i = zext i8 %call16.i to i32
  %7 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv17.i, ptr %tm_min.i, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 2
  %8 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour.i, align 4
  %call31.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #13
  %conv32.i = zext i8 %call31.i to i32
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv32.i, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 3
  %11 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mday.i, align 4
  %call46.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #13
  %conv47.i = zext i8 %call46.i to i32
  %13 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv47.i, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 4
  %14 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon.i, align 4
  %add51.i = add i32 %15, 1
  %call65.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add51.i) #13
  %conv66.i = zext i8 %call65.i to i32
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv66.i, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_time, ptr %tm, i32 0, i32 5
  %17 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %18, -100
  %call83.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #13
  %conv84.i = zext i8 %call83.i to i32
  %19 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv84.i, ptr %tm_year.i, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !109
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.02.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 68
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %for.body.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

for.body.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %count.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %for.body.i.rtc_wait_not_busy.exit_crit_edge
  %type = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock, align 4
  tail call void %29(ptr noundef %1) #10
  %30 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_year.i, align 4
  %conv = trunc i32 %31 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #10, !srcloc !106
  %34 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_mon.i, align 4
  %conv3 = trunc i32 %35 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i29 = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i29, i8 %conv3) #10, !srcloc !106
  %38 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mday.i, align 4
  %conv4 = trunc i32 %39 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i31 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i31, i8 %conv4) #10, !srcloc !106
  %42 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_hour.i, align 4
  %conv5 = trunc i32 %43 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i33 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i33, i8 %conv5) #10, !srcloc !106
  %46 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_min.i, align 4
  %conv6 = trunc i32 %47 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i35 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i35, i8 %conv6) #10, !srcloc !106
  %50 = ptrtoint ptr %tm to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tm, align 4
  %conv7 = trunc i32 %51 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %conv7) #10, !srcloc !106
  %54 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %lock, align 4
  tail call void %57(ptr noundef %1) #10
  tail call void @trace_hardirqs_on() #10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !110
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_read_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !109
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.02.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 68
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

for.body.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %count.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %for.body.i.rtc_wait_not_busy.exit_crit_edge
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv = zext i8 %10 to i32
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %11 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %time, align 4
  %12 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %13, i32 36
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i43) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv5 = zext i8 %14 to i32
  %tm_min = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv5, ptr %tm_min, align 4
  %16 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i45 = getelementptr i8, ptr %17, i32 40
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i45) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv8 = zext i8 %18 to i32
  %tm_hour = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %19 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv8, ptr %tm_hour, align 4
  %20 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %21, i32 44
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i47) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv11 = zext i8 %22 to i32
  %tm_mday = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %23 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv11, ptr %tm_mday, align 4
  %24 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i49 = getelementptr i8, ptr %25, i32 48
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i49) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv14 = zext i8 %26 to i32
  %tm_mon = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv14, ptr %tm_mon, align 4
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i51 = getelementptr i8, ptr %29, i32 52
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i51) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %conv17 = zext i8 %30 to i32
  %tm_year = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv17, ptr %tm_year, align 4
  tail call void @trace_hardirqs_on() #10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !110
  %32 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %time, align 4
  %conv.i = trunc i32 %33 to i8
  %call.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv.i) #13
  %34 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call.i, ptr %time, align 4
  %35 = ptrtoint ptr %tm_min to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tm_min, align 4
  %conv6.i = trunc i32 %36 to i8
  %call17.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv6.i) #13
  %37 = ptrtoint ptr %tm_min to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call17.i, ptr %tm_min, align 4
  %38 = ptrtoint ptr %tm_hour to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_hour, align 4
  %conv21.i = trunc i32 %39 to i8
  %call32.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv21.i) #13
  %40 = ptrtoint ptr %tm_hour to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call32.i, ptr %tm_hour, align 4
  %41 = ptrtoint ptr %tm_mday to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tm_mday, align 4
  %conv36.i = trunc i32 %42 to i8
  %call47.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv36.i) #13
  %43 = ptrtoint ptr %tm_mday to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call47.i, ptr %tm_mday, align 4
  %44 = ptrtoint ptr %tm_mon to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tm_mon, align 4
  %conv51.i = trunc i32 %45 to i8
  %call62.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv51.i) #13
  %sub.i = add i32 %call62.i, -1
  %46 = ptrtoint ptr %tm_mon to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub.i, ptr %tm_mon, align 4
  %47 = ptrtoint ptr %tm_year to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tm_year, align 4
  %conv66.i = trunc i32 %48 to i8
  %call77.i = tail call i32 @_bcd2bin(i8 noundef zeroext %conv66.i) #13
  %add80.i = add i32 %call77.i, 100
  %49 = ptrtoint ptr %tm_year to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %add80.i, ptr %tm_year, align 4
  %50 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %51, i32 72
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i53) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %53 = lshr i8 %52, 3
  %.lobit = and i8 %53, 1
  %54 = ptrtoint ptr %alm to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %.lobit, ptr %alm, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_set_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef %alm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %time = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2
  %2 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %time, align 4
  %call.i = tail call zeroext i8 @_bin2bcd(i32 noundef %3) #13
  %conv4.i = zext i8 %call.i to i32
  %4 = ptrtoint ptr %time to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv4.i, ptr %time, align 4
  %tm_min.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tm_min.i, align 4
  %call16.i = tail call zeroext i8 @_bin2bcd(i32 noundef %6) #13
  %conv17.i = zext i8 %call16.i to i32
  %7 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv17.i, ptr %tm_min.i, align 4
  %tm_hour.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tm_hour.i, align 4
  %call31.i = tail call zeroext i8 @_bin2bcd(i32 noundef %9) #13
  %conv32.i = zext i8 %call31.i to i32
  %10 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv32.i, ptr %tm_hour.i, align 4
  %tm_mday.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 3
  %11 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tm_mday.i, align 4
  %call46.i = tail call zeroext i8 @_bin2bcd(i32 noundef %12) #13
  %conv47.i = zext i8 %call46.i to i32
  %13 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv47.i, ptr %tm_mday.i, align 4
  %tm_mon.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tm_mon.i, align 4
  %add51.i = add i32 %15, 1
  %call65.i = tail call zeroext i8 @_bin2bcd(i32 noundef %add51.i) #13
  %conv66.i = zext i8 %call65.i to i32
  %16 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv66.i, ptr %tm_mon.i, align 4
  %tm_year.i = getelementptr inbounds %struct.rtc_wkalrm, ptr %alm, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tm_year.i, align 4
  %sub.i = add i32 %18, -100
  %call83.i = tail call zeroext i8 @_bin2bcd(i32 noundef %sub.i) #13
  %conv84.i = zext i8 %call83.i to i32
  %19 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv84.i, ptr %tm_year.i, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !109
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.02.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 68
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %for.body.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

for.body.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %count.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %for.body.i.rtc_wait_not_busy.exit_crit_edge
  %type = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock, align 4
  tail call void %29(ptr noundef %1) #10
  %30 = ptrtoint ptr %tm_year.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tm_year.i, align 4
  %conv = trunc i32 %31 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %32 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %33, i32 52
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv) #10, !srcloc !106
  %34 = ptrtoint ptr %tm_mon.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tm_mon.i, align 4
  %conv5 = trunc i32 %35 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i71 = getelementptr i8, ptr %37, i32 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i71, i8 %conv5) #10, !srcloc !106
  %38 = ptrtoint ptr %tm_mday.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tm_mday.i, align 4
  %conv7 = trunc i32 %39 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %40 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i73 = getelementptr i8, ptr %41, i32 44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i73, i8 %conv7) #10, !srcloc !106
  %42 = ptrtoint ptr %tm_hour.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tm_hour.i, align 4
  %conv9 = trunc i32 %43 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %44 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i75 = getelementptr i8, ptr %45, i32 40
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i75, i8 %conv9) #10, !srcloc !106
  %46 = ptrtoint ptr %tm_min.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tm_min.i, align 4
  %conv11 = trunc i32 %47 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i77 = getelementptr i8, ptr %49, i32 36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i77, i8 %conv11) #10, !srcloc !106
  %50 = ptrtoint ptr %time to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %time, align 4
  %conv13 = trunc i32 %51 to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %52 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i79 = getelementptr i8, ptr %53, i32 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i79, i8 %conv13) #10, !srcloc !106
  %54 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i81 = getelementptr i8, ptr %55, i32 72
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i81) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %type, align 4
  %has_irqwakeen = getelementptr inbounds %struct.omap_rtc_device_type, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %has_irqwakeen to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %has_irqwakeen, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool16.not = icmp eq i8 %60, 0
  br i1 %tobool16.not, label %rtc_wait_not_busy.exit.if.end19_crit_edge, label %if.then17

rtc_wait_not_busy.exit.if.end19_crit_edge:        ; preds = %rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then17:                                        ; preds = %rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %62, i32 124
  %63 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i83) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %phi.bo = and i8 %63, -3
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %rtc_wait_not_busy.exit.if.end19_crit_edge
  %irqwake_reg.0 = phi i8 [ %phi.bo, %if.then17 ], [ 0, %rtc_wait_not_busy.exit.if.end19_crit_edge ]
  %64 = ptrtoint ptr %alm to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %alm, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool20.not = icmp eq i8 %65, 0
  %66 = and i8 %56, -9
  %masksel = select i1 %tobool20.not, i8 0, i8 8
  %reg.0 = or i8 %masksel, %66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %67 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %68, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i85, i8 %reg.0) #10, !srcloc !106
  %69 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %type, align 4
  %has_irqwakeen34 = getelementptr inbounds %struct.omap_rtc_device_type, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %has_irqwakeen34 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %has_irqwakeen34, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool35.not = icmp eq i8 %72, 0
  br i1 %tobool35.not, label %if.end19.if.end37_crit_edge, label %if.then36

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.then36:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %masksel88 = select i1 %tobool20.not, i8 0, i8 2
  %irqwake_reg.1 = or i8 %masksel88, %irqwake_reg.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %73 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %74, i32 124
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i87, i8 %irqwake_reg.1) #10, !srcloc !106
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %if.end19.if.end37_crit_edge
  %75 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %lock, align 4
  tail call void %78(ptr noundef %1) #10
  tail call void @trace_hardirqs_on() #10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !110
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_alarm_irq_enable(ptr nocapture noundef readonly %dev, i32 noundef %enabled) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !108
  %and.i.i = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #10, !srcloc !109
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end
  %count.02.i = phi i32 [ 0, %if.end ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 68
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %for.body.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i

for.body.i.rtc_wait_not_busy.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #10
  %inc.i = add nuw nsw i32 %count.02.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end.i.rtc_wait_not_busy.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end.i.rtc_wait_not_busy.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit

rtc_wait_not_busy.exit:                           ; preds = %if.end.i.rtc_wait_not_busy.exit_crit_edge, %for.body.i.rtc_wait_not_busy.exit_crit_edge
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 72
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %type = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %type, align 4
  %has_irqwakeen = getelementptr inbounds %struct.omap_rtc_device_type, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %has_irqwakeen to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_irqwakeen, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %rtc_wait_not_busy.exit.if.end7_crit_edge, label %if.then5

rtc_wait_not_busy.exit.if.end7_crit_edge:         ; preds = %rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %rtc_wait_not_busy.exit
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i47 = getelementptr i8, ptr %16, i32 124
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i47) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %phi.bo = and i8 %17, -3
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %rtc_wait_not_busy.exit.if.end7_crit_edge
  %irqwake_reg.0 = phi i8 [ %phi.bo, %if.then5 ], [ 0, %rtc_wait_not_busy.exit.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enabled)
  %tobool8.not = icmp eq i32 %enabled, 0
  %18 = and i8 %10, -9
  %masksel = select i1 %tobool8.not, i8 0, i8 8
  %reg.0 = or i8 %18, %masksel
  %masksel61 = select i1 %tobool8.not, i8 0, i8 2
  %irqwake_reg.1 = or i8 %irqwake_reg.0, %masksel61
  br label %for.body.i52

for.body.i52:                                     ; preds = %if.end.i55.for.body.i52_crit_edge, %if.end7
  %count.02.i49 = phi i32 [ 0, %if.end7 ], [ %inc.i53, %if.end.i55.for.body.i52_crit_edge ]
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %20, i32 68
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i50) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i51 = icmp eq i8 %22, 0
  br i1 %tobool.not.i51, label %for.body.i52.rtc_wait_not_busy.exit56_crit_edge, label %if.end.i55

for.body.i52.rtc_wait_not_busy.exit56_crit_edge:  ; preds = %for.body.i52
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit56

if.end.i55:                                       ; preds = %for.body.i52
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #10
  %inc.i53 = add nuw nsw i32 %count.02.i49, 1
  %exitcond.not.i54 = icmp eq i32 %inc.i53, 50
  br i1 %exitcond.not.i54, label %if.end.i55.rtc_wait_not_busy.exit56_crit_edge, label %if.end.i55.for.body.i52_crit_edge

if.end.i55.for.body.i52_crit_edge:                ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i52

if.end.i55.rtc_wait_not_busy.exit56_crit_edge:    ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #12
  br label %rtc_wait_not_busy.exit56

rtc_wait_not_busy.exit56:                         ; preds = %if.end.i55.rtc_wait_not_busy.exit56_crit_edge, %for.body.i52.rtc_wait_not_busy.exit56_crit_edge
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unlock, align 4
  tail call void %27(ptr noundef %1) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %28 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i58 = getelementptr i8, ptr %29, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i58, i8 %reg.0) #10, !srcloc !106
  %30 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %type, align 4
  %has_irqwakeen22 = getelementptr inbounds %struct.omap_rtc_device_type, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %has_irqwakeen22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_irqwakeen22, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool23.not = icmp eq i8 %33, 0
  br i1 %tobool23.not, label %rtc_wait_not_busy.exit56.if.end25_crit_edge, label %if.then24

rtc_wait_not_busy.exit56.if.end25_crit_edge:      ; preds = %rtc_wait_not_busy.exit56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then24:                                        ; preds = %rtc_wait_not_busy.exit56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i60 = getelementptr i8, ptr %35, i32 124
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i60, i8 %irqwake_reg.1) #10, !srcloc !106
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %rtc_wait_not_busy.exit56.if.end25_crit_edge
  %36 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lock, align 4
  tail call void %39(ptr noundef %1) #10
  tail call void @trace_hardirqs_on() #10
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #10, !srcloc !110
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_scratch_read(ptr nocapture noundef readonly %priv, i32 noundef %offset, ptr nocapture noundef writeonly %_val, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp6.not = icmp ult i32 %bytes, 4
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div5 = lshr i32 %bytes, 2
  %add = add i32 %offset, 96
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.07, 2
  %add1 = add i32 %add, %mul
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %arrayidx = getelementptr i32, ptr %_val, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, %div5
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_scratch_write(ptr noundef %priv, i32 noundef %offset, ptr nocapture noundef readonly %_val, i32 noundef %bytes) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.omap_rtc, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unlock, align 4
  tail call void %3(ptr noundef %priv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bytes)
  %cmp11.not = icmp ult i32 %bytes, 4
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %div10 = lshr i32 %bytes, 2
  %add = add i32 %offset, 96
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %mul = shl i32 %i.012, 2
  %add1 = add i32 %add, %mul
  %arrayidx = getelementptr i32, ptr %_val, i32 %i.012
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #10
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %add1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #10, !srcloc !102
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, %div10
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void %12(ptr noundef %priv) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtc_update_irq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rtc_pinctrl_get_groups_count(ptr nocapture noundef readnone %pctldev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @rtc_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinconf_generic_dt_free_map(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 152
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !99
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %trunc = trunc i32 %1 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 12, label %sw.bb
    i8 -128, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %shl = shl nuw i32 1, %pin
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %add = add i32 %pin, 4
  %shl4 = shl nuw i32 1, %add
  %and5 = and i32 %5, %shl4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %sw.bb3.sw.epilog_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %7 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rtc_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #10
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 152
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !99
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !100
  %add = add i32 %pin, 4
  %shl = shl nuw i32 1, %add
  %or = or i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp40.not = icmp eq i32 %num_configs, 0
  br i1 %cmp40.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %neg11 = xor i32 %shl, -1
  %shl5 = shl nuw i32 1, %pin
  %neg = xor i32 %shl5, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.042 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %val.041 = phi i32 [ %or, %for.body.lr.ph ], [ %val.1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.042
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %trunc = trunc i32 %5 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %trunc, label %do.end [
    i8 12, label %sw.bb
    i8 -128, label %sw.bb8
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %5)
  %tobool.not = icmp ult i32 %5, 256
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %or6 = or i32 %val.041, %shl5
  br label %for.inc

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %and = and i32 %val.041, %neg
  br label %for.inc

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %and12 = and i32 %val.041, %neg11
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %and.i = and i32 %5, 255
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.24, i32 noundef %and.i) #14
  br label %cleanup

for.inc:                                          ; preds = %sw.bb8, %if.else, %if.then
  %val.1 = phi i32 [ %and12, %sw.bb8 ], [ %or6, %if.then ], [ %and, %if.else ]
  %inc = add nuw i32 %i.042, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %or, %entry.for.end_crit_edge ], [ %val.1, %for.inc.for.end_crit_edge ]
  %type = getelementptr inbounds %struct.omap_rtc, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unlock, align 4
  tail call void %12(ptr noundef %call) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %13 = tail call i32 @llvm.bswap.i32(i32 %val.0.lcssa) #10
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %15, i32 152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %13) #10, !srcloc !102
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock, align 4
  tail call void %19(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end
  %retval.0 = phi i32 [ -524, %do.end ], [ 0, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am3352_rtc_lock(ptr nocapture noundef readonly %rtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #10, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 0) #10, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am3352_rtc_unlock(ptr nocapture noundef readonly %rtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %rtc, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 319547267) #10, !srcloc !102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !101
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i3 = getelementptr i8, ptr %3, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3, i32 -521034603) #10, !srcloc !102
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 72
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !104
  %interrupts_reg = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %interrupts_reg to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %interrupts_reg, align 4
  %type = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %unlock, align 4
  tail call void %9(ptr noundef %1) #10
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %10 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %11 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %12, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %irq_alarm = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_alarm, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %14, i32 noundef 1) #10
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i15 = getelementptr i8, ptr %16, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i15, i8 0) #10, !srcloc !106
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  tail call void %20(ptr noundef %1) #10
  %is_suspending = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 8
  %21 = ptrtoint ptr %is_suspending to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %is_suspending, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_rtc_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %type = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type, align 4
  %unlock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %unlock to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unlock, align 4
  tail call void %5(ptr noundef %1) #10
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %6 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %7 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %8, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #12
  %irq_alarm = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %irq_alarm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq_alarm, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %10, i32 noundef 0) #10
  br label %if.end

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %interrupts_reg = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %interrupts_reg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %interrupts_reg, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !105
  tail call void @arm_heavy_mb() #10
  %base.i = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %12) #10, !srcloc !106
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %type, align 4
  %lock = getelementptr inbounds %struct.omap_rtc_device_type, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lock, align 4
  tail call void %18(ptr noundef %1) #10
  %is_suspending = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %is_suspending to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_suspending, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_rtc_runtime_suspend(ptr nocapture noundef readonly %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %is_suspending = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %is_suspending to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_suspending, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %has_ext_clk = getelementptr inbounds %struct.omap_rtc, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %has_ext_clk to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_ext_clk, align 2, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not = icmp eq i8 %5, 0
  br i1 %tobool1.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @default_rtc_lock(ptr nocapture noundef %rtc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @default_rtc_unlock(ptr nocapture noundef %rtc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readnone willreturn }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__ksymtab_omap_rtc_power_off_program, !1, !"__ksymtab_omap_rtc_power_off_program", i1 false, i1 false}
!1 = !{!"../drivers/rtc/rtc-omap.c", i32 465, i32 1}
!2 = !{ptr @__initcall__kmod_rtc_omap__228_1030_omap_rtc_driver_init6, !3, !"__initcall__kmod_rtc_omap__228_1030_omap_rtc_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/rtc/rtc-omap.c", i32 1030, i32 1}
!4 = !{ptr @__exitcall_omap_rtc_driver_exit, !3, !"__exitcall_omap_rtc_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_author229, !6, !"__UNIQUE_ID_author229", i1 false, i1 false}
!6 = !{!"../drivers/rtc/rtc-omap.c", i32 1032, i32 1}
!7 = !{ptr @__UNIQUE_ID_file230, !8, !"__UNIQUE_ID_file230", i1 false, i1 false}
!8 = !{!"../drivers/rtc/rtc-omap.c", i32 1033, i32 1}
!9 = !{ptr @__UNIQUE_ID_license231, !8, !"__UNIQUE_ID_license231", i1 false, i1 false}
!10 = !{ptr @omap_rtc_power_off_rtc, !11, !"omap_rtc_power_off_rtc", i1 false, i1 false}
!11 = !{!"../drivers/rtc/rtc-omap.c", i32 403, i32 25}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/rtc/rtc-omap.c", i32 1023, i32 11}
!14 = !{ptr @omap_rtc_driver, !15, !"omap_rtc_driver", i1 false, i1 false}
!15 = !{!"../drivers/rtc/rtc-omap.c", i32 1018, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/rtc/rtc-omap.c", i32 756, i32 38}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/rtc/rtc-omap.c", i32 760, i32 39}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/rtc/rtc-omap.c", i32 803, i32 4}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @omap_rtc_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap_rtc_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/rtc/rtc-omap.c", i32 812, i32 3}
!30 = !{ptr @omap_rtc_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @omap_rtc_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/rtc/rtc-omap.c", i32 834, i32 3}
!34 = !{ptr @omap_rtc_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @omap_rtc_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/rtc/rtc-omap.c", i32 883, i32 3}
!38 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omap_rtc_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap_rtc_probe._entry_ptr.17, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/of.h", i32 1548, i32 35}
!43 = !{ptr @omap_rtc_ops, !44, !"omap_rtc_ops", i1 false, i1 false}
!44 = !{!"../drivers/rtc/rtc-omap.c", i32 504, i32 35}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/rtc/rtc-omap.c", i32 718, i32 10}
!47 = !{ptr @omap_rtc_nvmem_config, !48, !"omap_rtc_nvmem_config", i1 false, i1 false}
!48 = !{!"../drivers/rtc/rtc-omap.c", i32 717, i32 28}
!49 = !{ptr @rtc_pinctrl_desc, !50, !"rtc_pinctrl_desc", i1 false, i1 false}
!50 = !{!"../drivers/rtc/rtc-omap.c", i32 674, i32 28}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/rtc/rtc-omap.c", i32 561, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/rtc/rtc-omap.c", i32 562, i32 2}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/rtc/rtc-omap.c", i32 563, i32 2}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/rtc/rtc-omap.c", i32 564, i32 2}
!59 = !{ptr @rtc_pins_desc, !60, !"rtc_pins_desc", i1 false, i1 false}
!60 = !{!"../drivers/rtc/rtc-omap.c", i32 560, i32 38}
!61 = !{ptr @rtc_pinctrl_ops, !62, !"rtc_pinctrl_ops", i1 false, i1 false}
!62 = !{!"../drivers/rtc/rtc-omap.c", i32 578, i32 33}
!63 = !{ptr @rtc_pinconf_ops, !64, !"rtc_pinconf_ops", i1 false, i1 false}
!64 = !{!"../drivers/rtc/rtc-omap.c", i32 668, i32 33}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rtc/rtc-omap.c", i32 655, i32 4}
!67 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rtc_pinconf_set._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @rtc_pinconf_set._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/rtc/rtc-omap.c", i32 588, i32 3}
!72 = !{ptr @rtc_params, !73, !"rtc_params", i1 false, i1 false}
!73 = !{!"../drivers/rtc/rtc-omap.c", i32 587, i32 44}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rtc/rtc-omap.c", i32 593, i32 2}
!76 = !{ptr @rtc_conf_items, !77, !"rtc_conf_items", i1 false, i1 false}
!77 = !{!"../drivers/rtc/rtc-omap.c", i32 592, i32 37}
!78 = !{ptr @omap_rtc_of_match, !79, !"omap_rtc_of_match", i1 false, i1 false}
!79 = !{!"../drivers/rtc/rtc-omap.c", i32 547, i32 34}
!80 = !{ptr @omap_rtc_am3352_type, !81, !"omap_rtc_am3352_type", i1 false, i1 false}
!81 = !{!"../drivers/rtc/rtc-omap.c", i32 518, i32 42}
!82 = !{ptr @omap_rtc_da830_type, !83, !"omap_rtc_da830_type", i1 false, i1 false}
!83 = !{!"../drivers/rtc/rtc-omap.c", i32 526, i32 42}
!84 = !{ptr @omap_rtc_pm_ops, !85, !"omap_rtc_pm_ops", i1 false, i1 false}
!85 = !{!"../drivers/rtc/rtc-omap.c", i32 997, i32 32}
!86 = !{ptr @omap_rtc_id_table, !87, !"omap_rtc_id_table", i1 false, i1 false}
!87 = !{!"../drivers/rtc/rtc-omap.c", i32 531, i32 40}
!88 = !{ptr @omap_rtc_default_type, !89, !"omap_rtc_default_type", i1 false, i1 false}
!89 = !{!"../drivers/rtc/rtc-omap.c", i32 512, i32 42}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 3095692}
!100 = !{i64 2154071939}
!101 = !{i64 2154072752}
!102 = !{i64 3095274}
!103 = !{i64 3095472}
!104 = !{i64 2154071292}
!105 = !{i64 2154072320}
!106 = !{i64 3095077}
!107 = !{i8 0, i8 2}
!108 = !{i64 661082}
!109 = !{i64 658785}
!110 = !{i64 658595}
