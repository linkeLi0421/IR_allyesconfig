; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/pinctrl-sx150x.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-sx150x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinconf_ops = type { i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sx150x_device_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.89, ptr, i32 }
%union.anon.89 = type { %struct.sx150x_123_pri }
%struct.sx150x_123_pri = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.pinctrl_pin_desc = type { i32, ptr, ptr }
%struct.sx150x_456_pri = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.sx150x_789_pri = type { i8, i8, i8, i8, i8, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sx150x_pinctrl = type { ptr, ptr, ptr, %struct.pinctrl_desc, %struct.gpio_chip, %struct.irq_chip, ptr, %struct.anon.88, %struct.mutex, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.87, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.87 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.88 = type { i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_pinctrl_sx150x__288_1263_sx150x_init4 = internal global ptr @sx150x_init, section ".initcall4.init", align 4
@sx150x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sx150x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sx150x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sx150x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sx150x-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@sx150x_of_match = internal constant { [10 x %struct.of_device_id], [504 x i8] } { [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1501q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1501q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1502q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1502q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1503q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1503q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1504q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1504q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1505q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1505q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1506q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1506q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1507q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1507q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1508q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1508q_device_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"semtech,sx1509q\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sx1509q_device_data }, %struct.of_device_id zeroinitializer], [504 x i8] zeroinitializer }, align 32
@sx150x_id = internal constant { [10 x %struct.i2c_device_id], [48 x i8] } { [10 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sx1501q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1501q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1502q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1502q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1503q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1503q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1504q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1504q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1505q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1505q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1506q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1506q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1507q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1507q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1508q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1508q_device_data to i32) }, %struct.i2c_device_id { [20 x i8] c"sx1509q\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sx1509q_device_data to i32) }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sx150x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sx150x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 32, ptr null, ptr null, ptr @sx150x_reg_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @sx150x_regmap_reg_read, ptr @sx150x_regmap_reg_write, ptr null, i8 0, i32 173, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"pinctrl_sx150x:1127:(&sx150x_regmap_config)->lock\00", [46 x i8] zeroinitializer }, align 32
@sx150x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1131, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sx150x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/pinctrl/pinctrl-sx150x.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sx150x_probe._entry_ptr = internal global ptr @sx150x_probe._entry, section ".printk_index", align 4
@sx150x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&pctl->lock\00", [20 x i8] zeroinitializer }, align 32
@sx150x_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @sx150x_pinctrl_get_groups_count, ptr @sx150x_pinctrl_get_group_name, ptr @sx150x_pinctrl_get_group_pins, ptr null, ptr @pinconf_generic_dt_node_to_map_pin, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@sx150x_pinconf_ops = internal constant { %struct.pinconf_ops, [32 x i8] } { %struct.pinconf_ops { i8 1, ptr @sx150x_pinconf_get, ptr @sx150x_pinconf_set, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@sx150x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1152, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register pinctrl device\0A\00", [61 x i8] zeroinitializer }, align 32
@sx150x_probe._entry_ptr.10 = internal global ptr @sx150x_probe._entry.8, section ".printk_index", align 4
@sx150x_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sx150x_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sx150x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable pinctrl device\0A\00", [63 x i8] zeroinitializer }, align 32
@sx150x_probe._entry_ptr.13 = internal global ptr @sx150x_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"semtech,probe-reset\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown chip model %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"oscio\00", [26 x i8] zeroinitializer }, align 32
@sx1501q_device_data = internal constant { %struct.sx150x_device_data, [40 x i8] } { %struct.sx150x_device_data { i8 0, i8 2, i8 3, i8 1, i8 0, i8 5, i8 8, i8 7, i8 4, %union.anon.89 { %struct.sx150x_123_pri { i8 16, i8 17, i8 0, i8 19, i8 0, i8 0, i8 -83 } }, ptr @sx150x_4_pins, i32 4 }, [40 x i8] zeroinitializer }, align 32
@sx1502q_device_data = internal constant { %struct.sx150x_device_data, [40 x i8] } { %struct.sx150x_device_data { i8 0, i8 2, i8 3, i8 1, i8 0, i8 5, i8 8, i8 6, i8 8, %union.anon.89 { %struct.sx150x_123_pri { i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 -83 } }, ptr @sx150x_8_pins, i32 8 }, [40 x i8] zeroinitializer }, align 32
@sx1503q_device_data = internal constant { %struct.sx150x_device_data, [40 x i8] } { %struct.sx150x_device_data { i8 0, i8 4, i8 6, i8 2, i8 0, i8 8, i8 14, i8 10, i8 16, %union.anon.89 { %struct.sx150x_123_pri { i8 32, i8 34, i8 36, i8 38, i8 40, i8 42, i8 -83 } }, ptr @sx150x_16_pins, i32 16 }, [40 x i8] zeroinitializer }, align 32
@sx150x_4_pins = internal constant { [5 x %struct.pinctrl_pin_desc], [36 x i8] } { [5 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.16, ptr null }], [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio0\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio1\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio2\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio3\00", [26 x i8] zeroinitializer }, align 32
@sx150x_8_pins = internal constant { [9 x %struct.pinctrl_pin_desc], [52 x i8] } { [9 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.16, ptr null }], [52 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio4\00", [26 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio5\00", [26 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio6\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio7\00", [26 x i8] zeroinitializer }, align 32
@sx150x_16_pins = internal constant { [17 x %struct.pinctrl_pin_desc], [52 x i8] } { [17 x %struct.pinctrl_pin_desc] [%struct.pinctrl_pin_desc { i32 0, ptr @.str.17, ptr null }, %struct.pinctrl_pin_desc { i32 1, ptr @.str.18, ptr null }, %struct.pinctrl_pin_desc { i32 2, ptr @.str.19, ptr null }, %struct.pinctrl_pin_desc { i32 3, ptr @.str.20, ptr null }, %struct.pinctrl_pin_desc { i32 4, ptr @.str.21, ptr null }, %struct.pinctrl_pin_desc { i32 5, ptr @.str.22, ptr null }, %struct.pinctrl_pin_desc { i32 6, ptr @.str.23, ptr null }, %struct.pinctrl_pin_desc { i32 7, ptr @.str.24, ptr null }, %struct.pinctrl_pin_desc { i32 8, ptr @.str.25, ptr null }, %struct.pinctrl_pin_desc { i32 9, ptr @.str.26, ptr null }, %struct.pinctrl_pin_desc { i32 10, ptr @.str.27, ptr null }, %struct.pinctrl_pin_desc { i32 11, ptr @.str.28, ptr null }, %struct.pinctrl_pin_desc { i32 12, ptr @.str.29, ptr null }, %struct.pinctrl_pin_desc { i32 13, ptr @.str.30, ptr null }, %struct.pinctrl_pin_desc { i32 14, ptr @.str.31, ptr null }, %struct.pinctrl_pin_desc { i32 15, ptr @.str.32, ptr null }, %struct.pinctrl_pin_desc { i32 16, ptr @.str.16, ptr null }], [52 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio8\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpio9\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio10\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio11\00", [25 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio12\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio13\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio14\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio15\00", [25 x i8] zeroinitializer }, align 32
@sx1504q_device_data = internal constant { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_456_pri }, ptr, i32 }, [40 x i8] } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_456_pri }, ptr, i32 } { i8 1, i8 2, i8 3, i8 1, i8 0, i8 5, i8 8, i8 7, i8 4, { %struct.sx150x_456_pri } { %struct.sx150x_456_pri { i8 16, i8 17, i8 0, i8 19, i8 0, i8 0, i8 0 } }, ptr @sx150x_4_pins, i32 4 }, [40 x i8] zeroinitializer }, align 32
@sx1505q_device_data = internal constant { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_456_pri }, ptr, i32 }, [40 x i8] } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_456_pri }, ptr, i32 } { i8 1, i8 2, i8 3, i8 1, i8 0, i8 5, i8 8, i8 6, i8 8, { %struct.sx150x_456_pri } { %struct.sx150x_456_pri { i8 16, i8 17, i8 18, i8 19, i8 20, i8 21, i8 0 } }, ptr @sx150x_8_pins, i32 8 }, [40 x i8] zeroinitializer }, align 32
@sx1506q_device_data = internal constant { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_456_pri }, ptr, i32 }, [40 x i8] } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_456_pri }, ptr, i32 } { i8 1, i8 4, i8 6, i8 2, i8 0, i8 8, i8 14, i8 10, i8 16, { %struct.sx150x_456_pri } { %struct.sx150x_456_pri { i8 32, i8 34, i8 36, i8 38, i8 40, i8 42, i8 -83 } }, ptr @sx150x_16_pins, i32 16 }, [40 x i8] zeroinitializer }, align 32
@sx1507q_device_data = internal constant { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_789_pri, i8 }, ptr, i32 }, [40 x i8] } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_789_pri, i8 }, ptr, i32 } { i8 2, i8 3, i8 4, i8 7, i8 8, i8 9, i8 11, i8 10, i8 4, { %struct.sx150x_789_pri, i8 } { %struct.sx150x_789_pri { i8 5, i8 6, i8 13, i8 14, i8 125, i8 0 }, i8 undef }, ptr @sx150x_4_pins, i32 5 }, [40 x i8] zeroinitializer }, align 32
@sx1508q_device_data = internal constant { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_789_pri, i8 }, ptr, i32 }, [40 x i8] } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_789_pri, i8 }, ptr, i32 } { i8 2, i8 3, i8 4, i8 7, i8 8, i8 9, i8 12, i8 10, i8 8, { %struct.sx150x_789_pri, i8 } { %struct.sx150x_789_pri { i8 5, i8 6, i8 15, i8 16, i8 125, i8 0 }, i8 undef }, ptr @sx150x_8_pins, i32 9 }, [40 x i8] zeroinitializer }, align 32
@sx1509q_device_data = internal constant { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_789_pri, i8 }, ptr, i32 }, [40 x i8] } { { i8, i8, i8, i8, i8, i8, i8, i8, i8, { %struct.sx150x_789_pri, i8 }, ptr, i32 } { i8 2, i8 6, i8 8, i8 14, i8 16, i8 18, i8 24, i8 20, i8 16, { %struct.sx150x_789_pri, i8 } { %struct.sx150x_789_pri { i8 10, i8 12, i8 30, i8 31, i8 125, i8 0 }, i8 undef }, ptr @sx150x_16_pins, i32 17 }, [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 8, i64 17]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 31]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 5, i64 6, i64 8, i64 17]
@__sancov_gen_cov_switch_values.44 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 8, i64 17]
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"sx150x_driver\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1250, i32 26 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1252, i32 11 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"sx150x_of_match\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 833, i32 34 }
@___asan_gen_.54 = private unnamed_addr constant [10 x i8] c"sx150x_id\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 820, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"sx150x_regmap_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1084, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1126, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1130, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1135, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"sx150x_pinctrl_ops\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 364, i32 33 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"sx150x_pinconf_ops\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 814, i32 33 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1152, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1227, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 1238, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 904, i32 48 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 887, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 383, i32 45 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"sx1501q_device_data\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 152, i32 40 }
@___asan_gen_.126 = private unnamed_addr constant [20 x i8] c"sx1502q_device_data\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 172, i32 40 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"sx1503q_device_data\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 195, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant [14 x i8] c"sx150x_4_pins\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 112, i32 38 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 113, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 114, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 115, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 116, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [14 x i8] c"sx150x_8_pins\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 120, i32 38 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 125, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 126, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 127, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 128, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [15 x i8] c"sx150x_16_pins\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 132, i32 38 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 141, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 142, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 143, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 144, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 145, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 146, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 147, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 148, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"sx1504q_device_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 218, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"sx1505q_device_data\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 237, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c"sx1506q_device_data\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 259, i32 40 }
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c"sx1507q_device_data\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 282, i32 40 }
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c"sx1508q_device_data\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 303, i32 40 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c"sx1509q_device_data\00", align 1
@___asan_gen_.205 = private constant [36 x i8] c"../drivers/pinctrl/pinctrl-sx150x.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 324, i32 40 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__initcall__kmod_pinctrl_sx150x__288_1263_sx150x_init4, ptr @sx150x_probe._entry, ptr @sx150x_probe._entry.11, ptr @sx150x_probe._entry.8, ptr @sx150x_probe._entry_ptr, ptr @sx150x_probe._entry_ptr.10, ptr @sx150x_probe._entry_ptr.13, ptr @sx150x_driver, ptr @.str, ptr @sx150x_of_match, ptr @sx150x_id, ptr @sx150x_probe._key, ptr @sx150x_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sx150x_probe.__key, ptr @.str.7, ptr @sx150x_pinctrl_ops, ptr @sx150x_pinconf_ops, ptr @.str.9, ptr @sx150x_probe.lock_key, ptr @sx150x_probe.request_key, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sx1501q_device_data, ptr @sx1502q_device_data, ptr @sx1503q_device_data, ptr @sx150x_4_pins, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @sx150x_8_pins, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @sx150x_16_pins, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @sx1504q_device_data, ptr @sx1505q_device_data, ptr @sx1506q_device_data, ptr @sx1507q_device_data, ptr @sx1508q_device_data, ptr @sx1509q_device_data], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_of_match to i32), i32 1960, i32 2464, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_id to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_pinconf_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1501q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1502q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1503q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_4_pins to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_8_pins to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx150x_16_pins to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1504q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1505q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1506q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1507q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1508q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sx1509q_device_data to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sx150x_driver) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %reg.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 5767168
  call void @__sanitizer_cov_trace_const_cmp4(i32 5767168, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 5767168
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup126_crit_edge

entry.cleanup126_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup126_crit_edge, label %if.end5

if.end.cleanup126_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %call.i, align 4
  %client7 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %client7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client7, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #9
  br label %if.end12

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data, align 4
  %13 = inttoptr i32 %12 to ptr
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  %call10.sink = phi ptr [ %13, %if.else ], [ %call10, %if.then9 ]
  %14 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call10.sink, ptr %14, align 4
  %tobool14.not = icmp eq ptr %call10.sink, null
  br i1 %tobool14.not, label %if.end12.cleanup126_crit_edge, label %if.end16

if.end12.cleanup126_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

if.end16:                                         ; preds = %if.end12
  %call17 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @sx150x_regmap_config, ptr noundef nonnull @sx150x_probe._key, ptr noundef nonnull @.str.1) #9
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call17, ptr %regmap, align 4
  %cmp.i225 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %if.then20, label %do.body24

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %17) #12
  br label %cleanup126

do.body24:                                        ; preds = %if.end16
  %lock = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @sx150x_probe.__key) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %reg.i) #9
  %18 = getelementptr inbounds [3 x i8], ptr %reg.i, i32 0, i32 1
  %19 = getelementptr inbounds [3 x i8], ptr %reg.i, i32 0, i32 2
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %14, align 4
  %pri.i = getelementptr inbounds %struct.sx150x_device_data, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %pri.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pri.i, align 1
  %24 = ptrtoint ptr %reg.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %reg.i, align 1
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %23, ptr %18, align 1
  %reg_polarity.i = getelementptr inbounds %struct.sx150x_device_data, ptr %21, i32 0, i32 9, i32 0, i32 1
  %26 = ptrtoint ptr %reg_polarity.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %reg_polarity.i, align 1
  %28 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %19, align 1
  %29 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cmp.i226 = icmp eq i8 %30, 2
  br i1 %cmp.i226, label %land.lhs.true.i, label %do.body24.if.end14.i_crit_edge

do.body24.if.end14.i_crit_edge:                   ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %do.body24
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 27
  %33 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %of_node.i, align 8
  %call.i.i227 = tail call ptr @of_find_property(ptr noundef %34, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %tobool.i.not.i = icmp eq ptr %call.i.i227, null
  br i1 %tobool.i.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %35 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client7, align 4
  %37 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %14, align 4
  %reg_reset.i.i = getelementptr inbounds %struct.sx150x_device_data, ptr %38, i32 0, i32 9, i32 0, i32 4
  %39 = ptrtoint ptr %reg_reset.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %reg_reset.i.i, align 1
  %call.i36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext %40, i8 noundef zeroext 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp.i.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp.i.i, label %if.then.i.sx150x_init_hw.exit.thread_crit_edge, label %sx150x_reset.exit.i

if.then.i.sx150x_init_hw.exit.thread_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_init_hw.exit.thread

sx150x_reset.exit.i:                              ; preds = %if.then.i
  %41 = ptrtoint ptr %client7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client7, align 4
  %43 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %14, align 4
  %reg_reset4.i.i = getelementptr inbounds %struct.sx150x_device_data, ptr %44, i32 0, i32 9, i32 0, i32 4
  %45 = ptrtoint ptr %reg_reset4.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reg_reset4.i.i, align 1
  %call5.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext %46, i8 noundef zeroext 52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp11.i = icmp slt i32 %call5.i.i, 0
  br i1 %cmp11.i, label %sx150x_reset.exit.i.sx150x_init_hw.exit.thread_crit_edge, label %sx150x_reset.exit.i.if.end14.i_crit_edge

sx150x_reset.exit.i.if.end14.i_crit_edge:         ; preds = %sx150x_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i

sx150x_reset.exit.i.sx150x_init_hw.exit.thread_crit_edge: ; preds = %sx150x_reset.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_init_hw.exit.thread

if.end14.i:                                       ; preds = %sx150x_reset.exit.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %do.body24.if.end14.i_crit_edge
  %47 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %14, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 4
  %51 = zext i8 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values)
  switch i8 %50, label %sx150x_init_misc.exit.thread.i [
    i8 2, label %sw.bb.i.i
    i8 1, label %sw.bb2.i.i
    i8 0, label %sw.bb5.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg_misc.i.i = getelementptr inbounds %struct.sx150x_device_data, ptr %48, i32 0, i32 9, i32 0, i32 3
  br label %sw.epilog.sink.split.i.i

sw.bb2.i.i:                                       ; preds = %if.end14.i
  %reg_advanced.i.i = getelementptr inbounds %struct.sx150x_device_data, ptr %48, i32 0, i32 9, i32 0, i32 6
  %52 = ptrtoint ptr %reg_advanced.i.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %reg_advanced.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i.i, label %sw.bb2.i.i.sx150x_init_hw.exit_crit_edge, label %sw.bb2.i.i.sx150x_init_misc.exit.i_crit_edge

sw.bb2.i.i.sx150x_init_misc.exit.i_crit_edge:     ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_init_misc.exit.i

sw.bb2.i.i.sx150x_init_hw.exit_crit_edge:         ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_init_hw.exit

sw.bb5.i.i:                                       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %reg_advanced8.i.i = getelementptr inbounds %struct.sx150x_device_data, ptr %48, i32 0, i32 9, i32 0, i32 6
  br label %sw.epilog.sink.split.i.i

sx150x_init_misc.exit.thread.i:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i.i = zext i8 %50 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 887, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %conv.i.i) #9
  br label %sx150x_init_hw.exit.thread

sw.epilog.sink.split.i.i:                         ; preds = %sw.bb5.i.i, %sw.bb.i.i
  %reg_advanced8.sink.i.i = phi ptr [ %reg_advanced8.i.i, %sw.bb5.i.i ], [ %reg_misc.i.i, %sw.bb.i.i ]
  %value.0.ph.i.i = phi i32 [ 0, %sw.bb5.i.i ], [ 1, %sw.bb.i.i ]
  %54 = ptrtoint ptr %reg_advanced8.sink.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %reg_advanced8.sink.i.i, align 1
  br label %sx150x_init_misc.exit.i

sx150x_init_misc.exit.i:                          ; preds = %sw.epilog.sink.split.i.i, %sw.bb2.i.i.sx150x_init_misc.exit.i_crit_edge
  %reg.0.i.i = phi i8 [ %53, %sw.bb2.i.i.sx150x_init_misc.exit.i_crit_edge ], [ %55, %sw.epilog.sink.split.i.i ]
  %value.0.i.i = phi i32 [ 0, %sw.bb2.i.i.sx150x_init_misc.exit.i_crit_edge ], [ %value.0.ph.i.i, %sw.epilog.sink.split.i.i ]
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %conv29.i.i = zext i8 %reg.0.i.i to i32
  %call.i38.i = tail call i32 @regmap_write(ptr noundef %57, i32 noundef %conv29.i.i, i32 noundef %value.0.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %cmp16.i = icmp slt i32 %call.i38.i, 0
  br i1 %cmp16.i, label %sx150x_init_misc.exit.i.sx150x_init_hw.exit.thread_crit_edge, label %sx150x_init_misc.exit.i.sx150x_init_hw.exit_crit_edge

sx150x_init_misc.exit.i.sx150x_init_hw.exit_crit_edge: ; preds = %sx150x_init_misc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_init_hw.exit

sx150x_init_misc.exit.i.sx150x_init_hw.exit.thread_crit_edge: ; preds = %sx150x_init_misc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_init_hw.exit.thread

sx150x_init_hw.exit.thread:                       ; preds = %sx150x_init_misc.exit.i.sx150x_init_hw.exit.thread_crit_edge, %sx150x_init_misc.exit.thread.i, %sx150x_reset.exit.i.sx150x_init_hw.exit.thread_crit_edge, %if.then.i.sx150x_init_hw.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i36.i, %if.then.i.sx150x_init_hw.exit.thread_crit_edge ], [ -22, %sx150x_init_misc.exit.thread.i ], [ %call.i38.i, %sx150x_init_misc.exit.i.sx150x_init_hw.exit.thread_crit_edge ], [ %call5.i.i, %sx150x_reset.exit.i.sx150x_init_hw.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg.i) #9
  br label %cleanup126

sx150x_init_hw.exit:                              ; preds = %sx150x_init_misc.exit.i.sx150x_init_hw.exit_crit_edge, %sw.bb2.i.i.sx150x_init_hw.exit_crit_edge
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %60 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %14, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 4
  %idxprom.i = zext i8 %63 to i32
  %arrayidx.i = getelementptr [3 x i8], ptr %reg.i, i32 0, i32 %idxprom.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i, align 1
  %conv22.i = zext i8 %65 to i32
  %call23.i = tail call i32 @regmap_write(ptr noundef %59, i32 noundef %conv22.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %reg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool28.not = icmp eq i32 %call23.i, 0
  br i1 %tobool28.not, label %if.end30, label %sx150x_init_hw.exit.cleanup126_crit_edge

sx150x_init_hw.exit.cleanup126_crit_edge:         ; preds = %sx150x_init_hw.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

if.end30:                                         ; preds = %sx150x_init_hw.exit
  %pinctrl_desc = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 3
  %66 = ptrtoint ptr %pinctrl_desc to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str, ptr %pinctrl_desc, align 4
  %pctlops = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 3, i32 3
  %67 = ptrtoint ptr %pctlops to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @sx150x_pinctrl_ops, ptr %pctlops, align 4
  %confops = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 3, i32 5
  %68 = ptrtoint ptr %confops to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @sx150x_pinconf_ops, ptr %confops, align 4
  %69 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %14, align 4
  %pins = getelementptr inbounds %struct.sx150x_device_data, ptr %70, i32 0, i32 10
  %71 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pins, align 4
  %pins35 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 3, i32 1
  %73 = ptrtoint ptr %pins35 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %72, ptr %pins35, align 4
  %npins = getelementptr inbounds %struct.sx150x_device_data, ptr %70, i32 0, i32 11
  %74 = ptrtoint ptr %npins to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %npins, align 4
  %npins38 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 3, i32 2
  %76 = ptrtoint ptr %npins38 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %npins38, align 4
  %owner = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 3, i32 6
  %77 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %owner, align 4
  %pctldev = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 2
  %call41 = tail call i32 @devm_pinctrl_register_and_init(ptr noundef %dev1, ptr noundef %pinctrl_desc, ptr noundef nonnull %call.i, ptr noundef %pctldev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end47, label %do.end46

do.end46:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #12
  br label %cleanup126

if.end47:                                         ; preds = %if.end30
  %gpio = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4
  %base = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 19
  %78 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %base, align 4
  %79 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %14, align 4
  %npins49 = getelementptr inbounds %struct.sx150x_device_data, ptr %80, i32 0, i32 11
  %81 = ptrtoint ptr %npins49 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %npins49, align 4
  %conv = trunc i32 %82 to i16
  %ngpio = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 20
  %83 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv, ptr %ngpio, align 4
  %get_direction = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 7
  %84 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @sx150x_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 8
  %85 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @sx150x_gpio_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 9
  %86 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @sx150x_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 10
  %87 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @sx150x_gpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 12
  %88 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @sx150x_gpio_set, ptr %set, align 4
  %set_config = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 14
  %89 = ptrtoint ptr %set_config to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @gpiochip_generic_config, ptr %set_config, align 4
  %parent = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 2
  %90 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %dev1, ptr %parent, align 4
  %can_sleep = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 23
  %91 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 1, ptr %can_sleep, align 4
  %name59 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call60 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef %name59, i32 noundef 3264) #9
  %92 = ptrtoint ptr %gpio to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call60, ptr %gpio, align 4
  %tobool64.not = icmp eq ptr %call60, null
  br i1 %tobool64.not, label %if.end47.cleanup126_crit_edge, label %if.end66

if.end47.cleanup126_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

if.end66:                                         ; preds = %if.end47
  %93 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %14, align 4
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %94, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %96)
  %cmp.not = icmp eq i8 %96, 2
  br i1 %cmp.not, label %if.end66.if.end72_crit_edge, label %if.then70

if.end66.if.end72_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %set_multiple = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 13
  %97 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @sx150x_gpio_set_multiple, ptr %set_multiple, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then70, %if.end66.if.end72_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %98 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %cmp73 = icmp sgt i32 %99, 0
  br i1 %cmp73, label %if.then75, label %if.end72.if.end103_crit_edge

if.end72.if.end103_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then75:                                        ; preds = %if.end72
  %irq_mask = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 5, i32 7
  %100 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr @sx150x_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 5, i32 9
  %101 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @sx150x_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 5, i32 13
  %102 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @sx150x_irq_set_type, ptr %irq_set_type, align 4
  %irq_bus_lock = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 5, i32 15
  %103 = ptrtoint ptr %irq_bus_lock to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @sx150x_irq_bus_lock, ptr %irq_bus_lock, align 4
  %irq_bus_sync_unlock = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 5, i32 16
  %104 = ptrtoint ptr %irq_bus_sync_unlock to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @sx150x_irq_bus_sync_unlock, ptr %irq_bus_sync_unlock, align 4
  %call82 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev1, ptr noundef %name59, i32 noundef 3264) #9
  %name84 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 5, i32 1
  %105 = ptrtoint ptr %name84 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %call82, ptr %name84, align 4
  %tobool87.not = icmp eq ptr %call82, null
  br i1 %tobool87.not, label %if.then75.cleanup126_crit_edge, label %cleanup

if.then75.cleanup126_crit_edge:                   ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

cleanup:                                          ; preds = %if.then75
  %irq_chip = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 5
  %irq90 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 7
  %masked = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 7, i32 1
  %106 = ptrtoint ptr %masked to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %masked, align 4
  %107 = ptrtoint ptr %irq90 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %irq90, align 4
  %irq93 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 37
  %108 = ptrtoint ptr %irq93 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %irq_chip, ptr %irq93, align 4
  %parent_handler = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 13
  %109 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 15
  %110 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 16
  %111 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 10
  %112 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 9
  %113 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %threaded = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i, i32 0, i32 4, i32 37, i32 18
  %114 = ptrtoint ptr %threaded to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %threaded, align 4
  %115 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %irq, align 4
  %call98 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %116, ptr noundef null, ptr noundef nonnull @sx150x_irq_thread_fn, i32 noundef 8322, ptr noundef nonnull %call82, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %cleanup.cleanup126_crit_edge, label %cleanup.if.end103_crit_edge

cleanup.if.end103_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

cleanup.cleanup126_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

if.end103:                                        ; preds = %cleanup.if.end103_crit_edge, %if.end72.if.end103_crit_edge
  %call106 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef %gpio, ptr noundef nonnull %call.i, ptr noundef nonnull @sx150x_probe.lock_key, ptr noundef nonnull @sx150x_probe.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end109, label %if.end103.cleanup126_crit_edge

if.end103.cleanup126_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup126

if.end109:                                        ; preds = %if.end103
  %117 = ptrtoint ptr %pctldev to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pctldev, align 4
  %call111 = tail call i32 @pinctrl_enable(ptr noundef %118) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %if.end117, label %do.end116

do.end116:                                        ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #12
  br label %cleanup126

if.end117:                                        ; preds = %if.end109
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %119 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %120, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end117.dev_name.exit_crit_edge

if.end117.dev_name.exit_crit_edge:                ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end117.dev_name.exit_crit_edge
  %retval.0.i228 = phi ptr [ %122, %if.end.i ], [ %120, %if.end117.dev_name.exit_crit_edge ]
  %123 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %14, align 4
  %npins121 = getelementptr inbounds %struct.sx150x_device_data, ptr %124, i32 0, i32 11
  %125 = ptrtoint ptr %npins121 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %npins121, align 4
  %call122 = tail call i32 @gpiochip_add_pin_range(ptr noundef %gpio, ptr noundef %retval.0.i228, i32 noundef 0, i32 noundef 0, i32 noundef %126) #9
  br label %cleanup126

cleanup126:                                       ; preds = %dev_name.exit, %do.end116, %if.end103.cleanup126_crit_edge, %cleanup.cleanup126_crit_edge, %if.then75.cleanup126_crit_edge, %if.end47.cleanup126_crit_edge, %do.end46, %sx150x_init_hw.exit.cleanup126_crit_edge, %sx150x_init_hw.exit.thread, %if.then20, %if.end12.cleanup126_crit_edge, %if.end.cleanup126_crit_edge, %entry.cleanup126_crit_edge
  %retval.1 = phi i32 [ %17, %if.then20 ], [ %call41, %do.end46 ], [ %call111, %do.end116 ], [ %call98, %cleanup.cleanup126_crit_edge ], [ -38, %entry.cleanup126_crit_edge ], [ -12, %if.end.cleanup126_crit_edge ], [ -22, %if.end12.cleanup126_crit_edge ], [ %call23.i, %sx150x_init_hw.exit.cleanup126_crit_edge ], [ -12, %if.end47.cleanup126_crit_edge ], [ %call106, %if.end103.cleanup126_crit_edge ], [ %call122, %dev_name.exit ], [ %retval.0.i.ph, %sx150x_init_hw.exit.thread ], [ -12, %if.then75.cleanup126_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_pinctrl_register_and_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !114
  %data.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %npins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %offset)
  %cmp.not.i = icmp ugt i32 %4, %offset
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp2.not.i = icmp eq i8 %6, 2
  br i1 %cmp2.not.i, label %sx150x_pin_is_oscio.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sx150x_pin_is_oscio.exit:                         ; preds = %if.end.i
  %pins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %2, i32 0, i32 10
  %7 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %offset, i32 1
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sx150x_pin_is_oscio.exit.cleanup_crit_edge, label %sx150x_pin_is_oscio.exit.if.end_crit_edge

sx150x_pin_is_oscio.exit.if.end_crit_edge:        ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sx150x_pin_is_oscio.exit.cleanup_crit_edge:       ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sx150x_pin_is_oscio.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %reg_dir = getelementptr inbounds %struct.sx150x_device_data, ptr %2, i32 0, i32 3
  %13 = ptrtoint ptr %reg_dir to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_dir, align 1
  %conv = zext i8 %14 to i32
  %call2 = call i32 @regmap_read(ptr noundef %12, i32 noundef %conv, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %17 = lshr i32 %16, %offset
  %18 = and i32 %17, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %sx150x_pin_is_oscio.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sx150x_pin_is_oscio.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %18, %if.end5 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %data.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %npins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp.not.i = icmp ugt i32 %3, %offset
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 2
  br i1 %cmp2.not.i, label %sx150x_pin_is_oscio.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sx150x_pin_is_oscio.exit:                         ; preds = %if.end.i
  %pins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %offset, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sx150x_pin_is_oscio.exit.cleanup_crit_edge, label %sx150x_pin_is_oscio.exit.if.end_crit_edge

sx150x_pin_is_oscio.exit.if.end_crit_edge:        ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sx150x_pin_is_oscio.exit.cleanup_crit_edge:       ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sx150x_pin_is_oscio.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %reg_dir = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %reg_dir to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_dir, align 1
  %conv = zext i8 %13 to i32
  %shl = shl nuw i32 1, %offset
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %conv, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sx150x_pin_is_oscio.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i8, %if.end ], [ -22, %sx150x_pin_is_oscio.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %data.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %npins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp.not.i = icmp ugt i32 %3, %offset
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 2
  br i1 %cmp2.not.i, label %sx150x_pin_is_oscio.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sx150x_pin_is_oscio.exit:                         ; preds = %if.end.i
  %pins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %offset, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %sx150x_pin_is_oscio.exit.if.end_crit_edge

sx150x_pin_is_oscio.exit.if.end_crit_edge:        ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  %regmap.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %reg_clock.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 9, i32 0, i32 2
  %12 = ptrtoint ptr %reg_clock.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_clock.i, align 1
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i17 = icmp eq i32 %value, 0
  %cond.i = select i1 %tobool.not.i17, i32 16, i32 31
  %call.i18 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv.i, i32 noundef %cond.i) #9
  br label %cleanup

if.end:                                           ; preds = %sx150x_pin_is_oscio.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %regmap.i19 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %regmap.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i19, align 4
  %reg_data.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_data.i, align 4
  %shl.i = shl nuw i32 1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i21 = icmp eq i32 %value, 0
  %spec.select.i = select i1 %tobool.not.i21, i32 0, i32 %shl.i
  %conv.i22 = zext i8 %17 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %conv.i22, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %regmap.i19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i19, align 4
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %reg_dir = getelementptr inbounds %struct.sx150x_device_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %reg_dir to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %reg_dir, align 1
  %conv = zext i8 %23 to i32
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i18, %if.then ], [ %call.i23, %if.end5 ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #9
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %value, align 4, !annotation !114
  %data.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i, align 4
  %npins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %offset)
  %cmp.not.i = icmp ugt i32 %4, %offset
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp2.not.i = icmp eq i8 %6, 2
  br i1 %cmp2.not.i, label %sx150x_pin_is_oscio.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sx150x_pin_is_oscio.exit:                         ; preds = %if.end.i
  %pins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %2, i32 0, i32 10
  %7 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %8, i32 %offset, i32 1
  %9 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %10, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %sx150x_pin_is_oscio.exit.cleanup_crit_edge, label %sx150x_pin_is_oscio.exit.if.end_crit_edge

sx150x_pin_is_oscio.exit.if.end_crit_edge:        ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sx150x_pin_is_oscio.exit.cleanup_crit_edge:       ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sx150x_pin_is_oscio.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %reg_data = getelementptr inbounds %struct.sx150x_device_data, ptr %2, i32 0, i32 4
  %13 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_data, align 4
  %conv = zext i8 %14 to i32
  %call2 = call i32 @regmap_read(ptr noundef %12, i32 noundef %conv, ptr noundef nonnull %value) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %17 = lshr i32 %16, %offset
  %18 = and i32 %17, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %sx150x_pin_is_oscio.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.end5 ], [ -22, %sx150x_pin_is_oscio.exit.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx150x_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %data.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %npins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset)
  %cmp.not.i = icmp ugt i32 %3, %offset
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp2.not.i = icmp eq i8 %5, 2
  br i1 %cmp2.not.i, label %sx150x_pin_is_oscio.exit, label %if.end.i.if.else_crit_edge

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sx150x_pin_is_oscio.exit:                         ; preds = %if.end.i
  %pins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %7, i32 %offset, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %sx150x_pin_is_oscio.exit.if.else_crit_edge

sx150x_pin_is_oscio.exit.if.else_crit_edge:       ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  %regmap.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %reg_clock.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 9, i32 0, i32 2
  %12 = ptrtoint ptr %reg_clock.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %reg_clock.i, align 1
  %conv.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i9 = icmp eq i32 %value, 0
  %cond.i = select i1 %tobool.not.i9, i32 16, i32 31
  %call.i10 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv.i, i32 noundef %cond.i) #9
  br label %if.end

if.else:                                          ; preds = %sx150x_pin_is_oscio.exit.if.else_crit_edge, %if.end.i.if.else_crit_edge, %entry.if.else_crit_edge
  %regmap.i11 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %regmap.i11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i11, align 4
  %reg_data.i = getelementptr inbounds %struct.sx150x_device_data, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_data.i, align 4
  %shl.i = shl nuw i32 1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i13 = icmp eq i32 %value, 0
  %spec.select.i = select i1 %tobool.not.i13, i32 0, i32 %shl.i
  %conv.i14 = zext i8 %17 to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %conv.i14, i32 noundef %shl.i, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_config(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx150x_gpio_set_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %reg_data = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_data, align 4
  %conv = zext i8 %5 to i32
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %conv, i32 noundef %7, i32 noundef %9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx150x_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %shl = shl nuw i32 1, %3
  %masked = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masked, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %masked, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx150x_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
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
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %masked = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %masked, align 4
  %and = and i32 %5, %neg
  store i32 %and, ptr %masked, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %and = and i32 %flow_type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = and i32 %flow_type, 3
  %mul.i = shl i32 %3, 1
  %shl.i = shl i32 3, %mul.i
  %neg.i = xor i32 %shl.i, -1
  %irq.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 7
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  %and.i = and i32 %6, %neg.i
  %shl2.i = shl i32 %4, %mul.i
  %or.i = or i32 %and.i, %shl2.i
  store i32 %or.i, ptr %irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx150x_irq_bus_lock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %lock = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 8
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sx150x_irq_bus_sync_unlock(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #9
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 9
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %reg_irq_mask = getelementptr inbounds %struct.sx150x_device_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %reg_irq_mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_irq_mask, align 1
  %conv = zext i8 %7 to i32
  %irq = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 7
  %masked = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %masked to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %masked, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %conv, i32 noundef %9) #9
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %reg_sense = getelementptr inbounds %struct.sx150x_device_data, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %reg_sense to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_sense, align 1
  %conv5 = zext i8 %15 to i32
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv5, i32 noundef %17) #9
  %lock = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call1, i32 0, i32 8
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_irq_thread_fn(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %status = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !114
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %dev_id, i32 0, i32 6
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %data = getelementptr inbounds %struct.sx150x_pinctrl, ptr %dev_id, i32 0, i32 9
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %reg_irq_src = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %reg_irq_src to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_irq_src, align 2
  %conv = zext i8 %6 to i32
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %conv, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %reg_irq_src4 = getelementptr inbounds %struct.sx150x_device_data, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %reg_irq_src4 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_irq_src4, align 2
  %conv5 = zext i8 %12 to i32
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %call6 = call i32 @regmap_write(ptr noundef %8, i32 noundef %conv5, i32 noundef %14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %17 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %status, align 4
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %ngpios = getelementptr inbounds %struct.sx150x_device_data, ptr %19, i32 0, i32 8
  %20 = ptrtoint ptr %ngpios to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %ngpios, align 4
  %conv12 = zext i8 %21 to i32
  %call13 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %conv12, i32 noundef 0) #9
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  %ngpios1539 = getelementptr inbounds %struct.sx150x_device_data, ptr %23, i32 0, i32 8
  %24 = ptrtoint ptr %ngpios1539 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ngpios1539, align 4
  %conv1640 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %conv1640)
  %cmp1741 = icmp ult i32 %call13, %conv1640
  br i1 %cmp1741, label %for.body.lr.ph, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end10
  %domain = getelementptr inbounds %struct.sx150x_pinctrl, ptr %dev_id, i32 0, i32 4, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %irq_find_mapping.exit.for.body_crit_edge, %for.body.lr.ph
  %n.042 = phi i32 [ %call13, %for.body.lr.ph ], [ %call24, %irq_find_mapping.exit.for.body_crit_edge ]
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #9
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %irq.i, align 4, !annotation !114
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %27, i32 noundef %n.042, ptr noundef nonnull %irq.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %for.body.irq_find_mapping.exit_crit_edge, label %if.then.i

for.body.irq_find_mapping.exit_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %for.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %30, %if.then.i ], [ 0, %for.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #9
  call void @handle_nested_irq(i32 noundef %retval.0.i) #9
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %ngpios22 = getelementptr inbounds %struct.sx150x_device_data, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %ngpios22 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ngpios22, align 4
  %conv23 = zext i8 %34 to i32
  %add = add nuw i32 %n.042, 1
  %call24 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef %conv23, i32 noundef %add) #9
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %ngpios15 = getelementptr inbounds %struct.sx150x_device_data, ptr %36, i32 0, i32 8
  %37 = ptrtoint ptr %ngpios15 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %ngpios15, align 4
  %conv16 = zext i8 %38 to i32
  %cmp17 = icmp ult i32 %call24, %conv16
  br i1 %cmp17, label %irq_find_mapping.exit.for.body_crit_edge, label %irq_find_mapping.exit.cleanup_crit_edge

irq_find_mapping.exit.cleanup_crit_edge:          ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

irq_find_mapping.exit.for.body_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %irq_find_mapping.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end10.cleanup_crit_edge ], [ 1, %irq_find_mapping.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_pin_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sx150x_reg_volatile(ptr nocapture noundef readonly %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %data = getelementptr inbounds %struct.sx150x_pinctrl, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %reg_irq_src = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %reg_irq_src to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_irq_src, align 2
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %reg)
  %cmp = icmp eq i32 %conv, %reg
  br i1 %cmp, label %entry.lor.end_crit_edge, label %lor.rhs

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reg_data = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %reg_data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %reg_data, align 4
  %conv3 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv3, i32 %reg)
  %cmp4 = icmp eq i32 %conv3, %reg
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %8 = phi i1 [ true, %entry.lor.end_crit_edge ], [ %cmp4, %lor.rhs ]
  ret i1 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_regmap_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef writeonly %result) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.sx150x_pinctrl, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %data1.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %context, i32 0, i32 9
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %reg_sense.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %reg_sense.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_sense.i, align 1
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %reg)
  %cmp.i = icmp eq i32 %conv.i, %reg
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ngpios.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ngpios.i, align 4
  %conv3.i = zext i8 %7 to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 1
  br label %sx150x_regmap_reg_width.exit

if.else.i:                                        ; preds = %entry
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %3, align 4
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %9, label %if.else.i.if.else45.i_crit_edge [
    i8 2, label %land.lhs.true.i
    i8 0, label %land.lhs.true24.i
    i8 1, label %land.lhs.true34.i
  ]

if.else.i.if.else45.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %reg_misc.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 3
  %11 = ptrtoint ptr %reg_misc.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_misc.i, align 1
  %conv7.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i, i32 %reg)
  %cmp8.i = icmp eq i32 %conv7.i, %reg
  br i1 %cmp8.i, label %land.lhs.true.i.for.body.preheader_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.for.body.preheader_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %reg_clock.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 2
  %13 = ptrtoint ptr %reg_clock.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_clock.i, align 1
  %conv11.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %reg)
  %cmp12.i = icmp eq i32 %conv11.i, %reg
  br i1 %cmp12.i, label %lor.lhs.false.i.for.body.preheader_crit_edge, label %lor.lhs.false14.i

lor.lhs.false.i.for.body.preheader_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %reg_reset.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 4
  %15 = ptrtoint ptr %reg_reset.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_reset.i, align 1
  %conv16.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %reg)
  %cmp17.i = icmp eq i32 %conv16.i, %reg
  br i1 %cmp17.i, label %lor.lhs.false14.i.for.body.preheader_crit_edge, label %lor.lhs.false14.i.if.else45.i_crit_edge

lor.lhs.false14.i.if.else45.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

lor.lhs.false14.i.for.body.preheader_crit_edge:   ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

land.lhs.true24.i:                                ; preds = %if.else.i
  %reg_advanced.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 6
  %17 = ptrtoint ptr %reg_advanced.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_advanced.i, align 1
  %conv26.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i, i32 %reg)
  %cmp27.i = icmp eq i32 %conv26.i, %reg
  br i1 %cmp27.i, label %land.lhs.true24.i.for.body.preheader_crit_edge, label %land.lhs.true24.i.if.else45.i_crit_edge

land.lhs.true24.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true24.i.for.body.preheader_crit_edge:   ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

land.lhs.true34.i:                                ; preds = %if.else.i
  %reg_advanced36.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 6
  %19 = ptrtoint ptr %reg_advanced36.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %reg_advanced36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp ne i8 %20, 0
  %conv37.i = zext i8 %20 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37.i, i32 %reg)
  %cmp42.i = icmp eq i32 %conv37.i, %reg
  %or.cond.i = and i1 %tobool.not.i, %cmp42.i
  br i1 %or.cond.i, label %land.lhs.true34.i.for.body.preheader_crit_edge, label %land.lhs.true34.i.if.else45.i_crit_edge

land.lhs.true34.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true34.i.for.body.preheader_crit_edge:   ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

if.else45.i:                                      ; preds = %land.lhs.true34.i.if.else45.i_crit_edge, %land.lhs.true24.i.if.else45.i_crit_edge, %lor.lhs.false14.i.if.else45.i_crit_edge, %if.else.i.if.else45.i_crit_edge
  %ngpios46.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %ngpios46.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ngpios46.i, align 4
  %conv47.i = zext i8 %22 to i32
  br label %sx150x_regmap_reg_width.exit

sx150x_regmap_reg_width.exit:                     ; preds = %if.else45.i, %if.then.i
  %retval.0.i = phi i32 [ %mul.i, %if.then.i ], [ %conv47.i, %if.else45.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp29.not = icmp eq i32 %retval.0.i, 0
  br i1 %cmp29.not, label %sx150x_regmap_reg_width.exit.for.end_crit_edge, label %sx150x_regmap_reg_width.exit.for.body.preheader_crit_edge

sx150x_regmap_reg_width.exit.for.body.preheader_crit_edge: ; preds = %sx150x_regmap_reg_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

sx150x_regmap_reg_width.exit.for.end_crit_edge:   ; preds = %sx150x_regmap_reg_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %sx150x_regmap_reg_width.exit.for.body.preheader_crit_edge, %land.lhs.true34.i.for.body.preheader_crit_edge, %land.lhs.true24.i.for.body.preheader_crit_edge, %lor.lhs.false14.i.for.body.preheader_crit_edge, %lor.lhs.false.i.for.body.preheader_crit_edge, %land.lhs.true.i.for.body.preheader_crit_edge
  %n.030.ph = phi i32 [ %retval.0.i, %sx150x_regmap_reg_width.exit.for.body.preheader_crit_edge ], [ 8, %land.lhs.true34.i.for.body.preheader_crit_edge ], [ 8, %land.lhs.true24.i.for.body.preheader_crit_edge ], [ 8, %lor.lhs.false14.i.for.body.preheader_crit_edge ], [ 8, %lor.lhs.false.i.for.body.preheader_crit_edge ], [ 8, %land.lhs.true.i.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %val.032 = phi i32 [ %or, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %idx.031 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ %reg, %for.body.preheader ]
  %n.030 = phi i32 [ %sub, %if.end.for.body_crit_edge ], [ %n.030.ph, %for.body.preheader ]
  %conv = trunc i32 %idx.031 to i8
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %shl = shl i32 %val.032, 8
  %or = or i32 %call1, %shl
  %sub = add nsw i32 %n.030, -8
  %inc = add i32 %idx.031, 1
  %cmp = icmp sgt i32 %n.030, 8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %sx150x_regmap_reg_width.exit.for.end_crit_edge
  %val.0.lcssa = phi i32 [ 0, %sx150x_regmap_reg_width.exit.for.end_crit_edge ], [ %or, %if.end.for.end_crit_edge ]
  %23 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data1.i, align 4
  %reg_sense.i22 = getelementptr inbounds %struct.sx150x_device_data, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %reg_sense.i22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg_sense.i22, align 1
  %conv.i23 = zext i8 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i23, i32 %reg)
  %cmp.i24 = icmp eq i32 %conv.i23, %reg
  br i1 %cmp.i24, label %land.lhs.true.i26, label %for.end.sx150x_maybe_swizzle.exit_crit_edge

for.end.sx150x_maybe_swizzle.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

land.lhs.true.i26:                                ; preds = %for.end
  %ngpios.i25 = getelementptr inbounds %struct.sx150x_device_data, ptr %24, i32 0, i32 8
  %27 = ptrtoint ptr %ngpios.i25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ngpios.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %28)
  %cmp4.i = icmp eq i8 %28, 16
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i26.sx150x_maybe_swizzle.exit_crit_edge

land.lhs.true.i26.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %land.lhs.true.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i26
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %switch.i = icmp ult i8 %30, 2
  br i1 %switch.i, label %if.then.i27, label %land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge

land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

if.then.i27:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  %and15.i = and i32 %val.0.lcssa, -16776961
  %and14.i = shl i32 %val.0.lcssa, 8
  %shl.i = and i32 %and14.i, 16711680
  %or.i = or i32 %shl.i, %and15.i
  %and.i = lshr i32 %val.0.lcssa, 8
  %shr.i = and i32 %and.i, 65280
  %or16.i = or i32 %or.i, %shr.i
  br label %sx150x_maybe_swizzle.exit

sx150x_maybe_swizzle.exit:                        ; preds = %if.then.i27, %land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge, %land.lhs.true.i26.sx150x_maybe_swizzle.exit_crit_edge, %for.end.sx150x_maybe_swizzle.exit_crit_edge
  %val.addr.0.i = phi i32 [ %or16.i, %if.then.i27 ], [ %val.0.lcssa, %land.lhs.true.i26.sx150x_maybe_swizzle.exit_crit_edge ], [ %val.0.lcssa, %for.end.sx150x_maybe_swizzle.exit_crit_edge ], [ %val.0.lcssa, %land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge ]
  %31 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %val.addr.0.i, ptr %result, align 4
  br label %cleanup

cleanup:                                          ; preds = %sx150x_maybe_swizzle.exit, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sx150x_maybe_swizzle.exit ], [ %call1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_regmap_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.sx150x_pinctrl, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %data1.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %context, i32 0, i32 9
  %2 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1.i, align 4
  %reg_sense.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %reg_sense.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %reg_sense.i, align 1
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %reg)
  %cmp.i = icmp eq i32 %conv.i, %reg
  br i1 %cmp.i, label %land.lhs.true.i28, label %if.else.i

if.else.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %7, label %if.else.i.if.else45.i_crit_edge [
    i8 2, label %land.lhs.true.i
    i8 0, label %land.lhs.true24.i
    i8 1, label %land.lhs.true34.i
  ]

if.else.i.if.else45.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true.i:                                  ; preds = %if.else.i
  %reg_misc.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 3
  %9 = ptrtoint ptr %reg_misc.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %reg_misc.i, align 1
  %conv7.i = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv7.i, i32 %reg)
  %cmp8.i = icmp eq i32 %conv7.i, %reg
  br i1 %cmp8.i, label %land.lhs.true.i.sx150x_maybe_swizzle.exit_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %reg_clock.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 2
  %11 = ptrtoint ptr %reg_clock.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %reg_clock.i, align 1
  %conv11.i = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.i, i32 %reg)
  %cmp12.i = icmp eq i32 %conv11.i, %reg
  br i1 %cmp12.i, label %lor.lhs.false.i.sx150x_maybe_swizzle.exit_crit_edge, label %lor.lhs.false14.i

lor.lhs.false.i.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

lor.lhs.false14.i:                                ; preds = %lor.lhs.false.i
  %reg_reset.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 4
  %13 = ptrtoint ptr %reg_reset.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %reg_reset.i, align 1
  %conv16.i = zext i8 %14 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16.i, i32 %reg)
  %cmp17.i = icmp eq i32 %conv16.i, %reg
  br i1 %cmp17.i, label %lor.lhs.false14.i.sx150x_maybe_swizzle.exit_crit_edge, label %lor.lhs.false14.i.if.else45.i_crit_edge

lor.lhs.false14.i.if.else45.i_crit_edge:          ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

lor.lhs.false14.i.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %lor.lhs.false14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

land.lhs.true24.i:                                ; preds = %if.else.i
  %reg_advanced.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 6
  %15 = ptrtoint ptr %reg_advanced.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_advanced.i, align 1
  %conv26.i = zext i8 %16 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv26.i, i32 %reg)
  %cmp27.i = icmp eq i32 %conv26.i, %reg
  br i1 %cmp27.i, label %land.lhs.true24.i.sx150x_maybe_swizzle.exit_crit_edge, label %land.lhs.true24.i.if.else45.i_crit_edge

land.lhs.true24.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true24.i.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %land.lhs.true24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

land.lhs.true34.i:                                ; preds = %if.else.i
  %reg_advanced36.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9, i32 0, i32 6
  %17 = ptrtoint ptr %reg_advanced36.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg_advanced36.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp ne i8 %18, 0
  %conv37.i = zext i8 %18 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37.i, i32 %reg)
  %cmp42.i = icmp eq i32 %conv37.i, %reg
  %or.cond.i = and i1 %tobool.not.i, %cmp42.i
  br i1 %or.cond.i, label %land.lhs.true34.i.sx150x_maybe_swizzle.exit_crit_edge, label %land.lhs.true34.i.if.else45.i_crit_edge

land.lhs.true34.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else45.i

land.lhs.true34.i.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %land.lhs.true34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

if.else45.i:                                      ; preds = %land.lhs.true34.i.if.else45.i_crit_edge, %land.lhs.true24.i.if.else45.i_crit_edge, %lor.lhs.false14.i.if.else45.i_crit_edge, %if.else.i.if.else45.i_crit_edge
  %ngpios46.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %ngpios46.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ngpios46.i, align 4
  %conv47.i = zext i8 %20 to i32
  br label %sx150x_maybe_swizzle.exit

land.lhs.true.i28:                                ; preds = %entry
  %ngpios.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %ngpios.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ngpios.i, align 4
  %conv3.i = zext i8 %22 to i32
  %mul.i = shl nuw nsw i32 %conv3.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %cmp4.i = icmp eq i8 %22, 16
  br i1 %cmp4.i, label %land.lhs.true6.i, label %land.lhs.true.i28.sx150x_maybe_swizzle.exit_crit_edge

land.lhs.true.i28.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %land.lhs.true.i28
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i28
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %24)
  %switch.i = icmp ult i8 %24, 2
  br i1 %switch.i, label %if.then.i29, label %land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge

land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_maybe_swizzle.exit

if.then.i29:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #11
  %and15.i = and i32 %val, -16776961
  %and14.i = shl i32 %val, 8
  %shl.i = and i32 %and14.i, 16711680
  %or.i = or i32 %shl.i, %and15.i
  %and.i = lshr i32 %val, 8
  %shr.i = and i32 %and.i, 65280
  %or16.i = or i32 %or.i, %shr.i
  br label %sx150x_maybe_swizzle.exit

sx150x_maybe_swizzle.exit:                        ; preds = %if.then.i29, %land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge, %land.lhs.true.i28.sx150x_maybe_swizzle.exit_crit_edge, %if.else45.i, %land.lhs.true34.i.sx150x_maybe_swizzle.exit_crit_edge, %land.lhs.true24.i.sx150x_maybe_swizzle.exit_crit_edge, %lor.lhs.false14.i.sx150x_maybe_swizzle.exit_crit_edge, %lor.lhs.false.i.sx150x_maybe_swizzle.exit_crit_edge, %land.lhs.true.i.sx150x_maybe_swizzle.exit_crit_edge
  %retval.0.i31 = phi i32 [ %mul.i, %if.then.i29 ], [ %mul.i, %land.lhs.true.i28.sx150x_maybe_swizzle.exit_crit_edge ], [ %mul.i, %land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge ], [ 8, %land.lhs.true.i.sx150x_maybe_swizzle.exit_crit_edge ], [ 8, %lor.lhs.false.i.sx150x_maybe_swizzle.exit_crit_edge ], [ 8, %lor.lhs.false14.i.sx150x_maybe_swizzle.exit_crit_edge ], [ 8, %land.lhs.true24.i.sx150x_maybe_swizzle.exit_crit_edge ], [ 8, %land.lhs.true34.i.sx150x_maybe_swizzle.exit_crit_edge ], [ %conv47.i, %if.else45.i ]
  %val.addr.0.i = phi i32 [ %or16.i, %if.then.i29 ], [ %val, %land.lhs.true.i28.sx150x_maybe_swizzle.exit_crit_edge ], [ %val, %land.lhs.true6.i.sx150x_maybe_swizzle.exit_crit_edge ], [ %val, %land.lhs.true.i.sx150x_maybe_swizzle.exit_crit_edge ], [ %val, %lor.lhs.false.i.sx150x_maybe_swizzle.exit_crit_edge ], [ %val, %lor.lhs.false14.i.sx150x_maybe_swizzle.exit_crit_edge ], [ %val, %land.lhs.true24.i.sx150x_maybe_swizzle.exit_crit_edge ], [ %val, %land.lhs.true34.i.sx150x_maybe_swizzle.exit_crit_edge ], [ %val, %if.else45.i ]
  %sub = add nsw i32 %retval.0.i31, -1
  %and = and i32 %sub, -8
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %sx150x_maybe_swizzle.exit
  %n.0 = phi i32 [ %and, %sx150x_maybe_swizzle.exit ], [ %sub6, %do.cond.do.body_crit_edge ]
  %reg.addr.0 = phi i32 [ %reg, %sx150x_maybe_swizzle.exit ], [ %inc, %do.cond.do.body_crit_edge ]
  %shr = lshr i32 %val.addr.0.i, %n.0
  %conv = trunc i32 %shr to i8
  %conv3 = trunc i32 %reg.addr.0 to i8
  %call4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv3, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.body.cleanup9_crit_edge, label %do.cond

do.body.cleanup9_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup9

do.cond:                                          ; preds = %do.body
  %sub6 = add i32 %n.0, -8
  %inc = add i32 %reg.addr.0, 1
  %cmp7 = icmp sgt i32 %sub6, -1
  br i1 %cmp7, label %do.cond.do.body_crit_edge, label %do.cond.cleanup9_crit_edge

do.cond.cleanup9_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup9

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup9:                                         ; preds = %do.cond.cleanup9_crit_edge, %do.body.cleanup9_crit_edge
  %retval.2 = phi i32 [ %call4, %do.body.cleanup9_crit_edge ], [ 0, %do.cond.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sx150x_pinctrl_get_groups_count(ptr nocapture noundef readnone %pctldev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @sx150x_pinctrl_get_group_name(ptr nocapture noundef readnone %pctldev, i32 noundef %group) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sx150x_pinctrl_get_group_pins(ptr nocapture noundef readnone %pctldev, i32 noundef %group, ptr nocapture noundef readnone %pins, ptr nocapture noundef readnone %num_pins) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -524
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pinconf_generic_dt_node_to_map_pin(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @pinconf_generic_dt_node_to_map(ptr noundef %pctldev, ptr noundef %np_config, ptr noundef %map, ptr noundef %num_maps, i32 noundef 3) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinconf_generic_dt_node_to_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_pinconf_get(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef %config) #2 align 64 {
entry:
  %value.i164 = alloca i32, align 4
  %value.i = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config, align 4
  %and.i = and i32 %1, 255
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #9
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !114
  %data.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %npins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %pin)
  %cmp.not.i = icmp ugt i32 %6, %pin
  br i1 %cmp.not.i, label %if.end.i, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end.i:                                         ; preds = %entry
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %8)
  %cmp2.not.i = icmp eq i8 %8, 2
  br i1 %cmp2.not.i, label %sx150x_pin_is_oscio.exit, label %if.end.i.if.end23_crit_edge

if.end.i.if.end23_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

sx150x_pin_is_oscio.exit:                         ; preds = %if.end.i
  %pins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 10
  %9 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %10, i32 %pin, i32 1
  %11 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %12, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %sx150x_pin_is_oscio.exit.if.end23_crit_edge

sx150x_pin_is_oscio.exit.if.end23_crit_edge:      ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then:                                          ; preds = %sx150x_pin_is_oscio.exit
  %trunc191 = trunc i32 %1 to i8
  %13 = zext i8 %trunc191 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %trunc191, label %if.then.cleanup_crit_edge [
    i8 8, label %if.then.sw.bb_crit_edge
    i8 17, label %if.then.sw.bb_crit_edge192
  ]

if.then.sw.bb_crit_edge192:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.sw.bb_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.then.sw.bb_crit_edge, %if.then.sw.bb_crit_edge192
  %regmap = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %reg_clock = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 9, i32 0, i32 2
  %16 = ptrtoint ptr %reg_clock to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %reg_clock, align 1
  %conv = zext i8 %17 to i32
  %call4 = call i32 @regmap_read(ptr noundef %15, i32 noundef %conv, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and.i)
  %cmp7 = icmp eq i32 %and.i, 8
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  %and = and i32 %19, 31
  br i1 %cmp7, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %cond = zext i1 %tobool.not to i32
  br label %out

if.else:                                          ; preds = %if.end
  %20 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %and, label %if.else.cleanup_crit_edge [
    i32 31, label %if.else.out_crit_edge
    i32 16, label %if.then18
  ]

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end23:                                         ; preds = %sx150x_pin_is_oscio.exit.if.end23_crit_edge, %if.end.i.if.end23_crit_edge, %entry.if.end23_crit_edge
  %trunc = trunc i32 %1 to i8
  %21 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %trunc, label %if.end23.cleanup_crit_edge [
    i8 3, label %sw.bb24
    i8 5, label %sw.bb37
    i8 6, label %sw.bb51
    i8 8, label %sw.bb72
    i8 17, label %sw.bb96
  ]

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb24:                                          ; preds = %if.end23
  %regmap25 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %22 = ptrtoint ptr %regmap25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap25, align 4
  %reg_pulldn = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 2
  %24 = ptrtoint ptr %reg_pulldn to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %reg_pulldn, align 2
  %conv27 = zext i8 %25 to i32
  %call28 = call i32 @regmap_read(ptr noundef %23, i32 noundef %conv27, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp30 = icmp slt i32 %call28, 0
  br i1 %cmp30, label %sw.bb24.cleanup_crit_edge, label %if.end33

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool34.not = icmp eq i32 %call28, 0
  br i1 %tobool34.not, label %if.end33.cleanup_crit_edge, label %if.end33.out_crit_edge

if.end33.out_crit_edge:                           ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb37:                                          ; preds = %if.end23
  %regmap38 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %26 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap38, align 4
  %reg_pullup = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 1
  %28 = ptrtoint ptr %reg_pullup to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_pullup, align 1
  %conv40 = zext i8 %29 to i32
  %call41 = call i32 @regmap_read(ptr noundef %27, i32 noundef %conv40, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp44 = icmp slt i32 %call41, 0
  br i1 %cmp44, label %sw.bb37.cleanup_crit_edge, label %if.end47

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool48.not = icmp eq i32 %call41, 0
  br i1 %tobool48.not, label %if.end47.cleanup_crit_edge, label %if.end47.out_crit_edge

if.end47.out_crit_edge:                           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb51:                                          ; preds = %if.end23
  %30 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp54.not = icmp eq i8 %31, 2
  br i1 %cmp54.not, label %if.end57, label %sw.bb51.cleanup_crit_edge

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %sw.bb51
  %regmap58 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %32 = ptrtoint ptr %regmap58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap58, align 4
  %pri60 = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 9
  %34 = ptrtoint ptr %pri60 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %pri60, align 1
  %conv61 = zext i8 %35 to i32
  %call62 = call i32 @regmap_read(ptr noundef %33, i32 noundef %conv61, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp65 = icmp slt i32 %call62, 0
  br i1 %cmp65, label %if.end57.cleanup_crit_edge, label %if.end68

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %if.end57
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data, align 4
  %shl63 = shl nuw i32 1, %pin
  %and64 = and i32 %37, %shl63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool69.not = icmp eq i32 %and64, 0
  br i1 %tobool69.not, label %if.end68.cleanup_crit_edge, label %if.end68.out_crit_edge

if.end68.out_crit_edge:                           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb72:                                          ; preds = %if.end23
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %39)
  %cmp76.not = icmp eq i8 %39, 2
  br i1 %cmp76.not, label %if.else79, label %sw.bb72.out_crit_edge

sw.bb72.out_crit_edge:                            ; preds = %sw.bb72
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.else79:                                        ; preds = %sw.bb72
  %regmap80 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  %40 = ptrtoint ptr %regmap80 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap80, align 4
  %pri82 = getelementptr inbounds %struct.sx150x_device_data, ptr %4, i32 0, i32 9
  %42 = ptrtoint ptr %pri82 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pri82, align 1
  %conv84 = zext i8 %43 to i32
  %call85 = call i32 @regmap_read(ptr noundef %41, i32 noundef %conv84, ptr noundef nonnull %data) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp88 = icmp slt i32 %call85, 0
  br i1 %cmp88, label %if.else79.cleanup_crit_edge, label %if.end91

if.else79.cleanup_crit_edge:                      ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91:                                         ; preds = %if.else79
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data, align 4
  %shl86 = shl nuw i32 1, %pin
  %and87 = and i32 %45, %shl86
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87)
  %tobool92.not = icmp eq i32 %and87, 0
  br i1 %tobool92.not, label %if.end91.out_crit_edge, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end91.out_crit_edge:                           ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

sw.bb96:                                          ; preds = %if.end23
  %gpio = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 4
  %call.i160 = tail call ptr @gpiochip_get_data(ptr noundef %gpio) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #9
  %46 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %value.i, align 4, !annotation !114
  %data.i.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i160, i32 0, i32 9
  %47 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i.i, align 4
  %npins.i.i = getelementptr inbounds %struct.sx150x_device_data, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %npins.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %npins.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %pin)
  %cmp.not.i.i = icmp ugt i32 %50, %pin
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb96.if.end.i161_crit_edge

sw.bb96.if.end.i161_crit_edge:                    ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

if.end.i.i:                                       ; preds = %sw.bb96
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %48, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %52)
  %cmp2.not.i.i = icmp eq i8 %52, 2
  br i1 %cmp2.not.i.i, label %sx150x_pin_is_oscio.exit.i, label %if.end.i.i.if.end.i161_crit_edge

if.end.i.i.if.end.i161_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

sx150x_pin_is_oscio.exit.i:                       ; preds = %if.end.i.i
  %pins.i.i = getelementptr inbounds %struct.sx150x_device_data, ptr %48, i32 0, i32 10
  %53 = ptrtoint ptr %pins.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pins.i.i, align 4
  %name.i.i = getelementptr %struct.pinctrl_pin_desc, ptr %54, i32 %pin, i32 1
  %55 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %56, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end101.thread, label %sx150x_pin_is_oscio.exit.i.if.end.i161_crit_edge

sx150x_pin_is_oscio.exit.i.if.end.i161_crit_edge: ; preds = %sx150x_pin_is_oscio.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i161

if.end101.thread:                                 ; preds = %sx150x_pin_is_oscio.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %if.end105

if.end.i161:                                      ; preds = %sx150x_pin_is_oscio.exit.i.if.end.i161_crit_edge, %if.end.i.i.if.end.i161_crit_edge, %sw.bb96.if.end.i161_crit_edge
  %regmap.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i160, i32 0, i32 6
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %reg_dir.i = getelementptr inbounds %struct.sx150x_device_data, ptr %48, i32 0, i32 3
  %59 = ptrtoint ptr %reg_dir.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %reg_dir.i, align 1
  %conv.i = zext i8 %60 to i32
  %call2.i = call i32 @regmap_read(ptr noundef %58, i32 noundef %conv.i, ptr noundef nonnull %value.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %sx150x_gpio_get_direction.exit, label %if.end101

sx150x_gpio_get_direction.exit:                   ; preds = %if.end.i161
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  br label %cleanup

if.end101:                                        ; preds = %if.end.i161
  %61 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #9
  %63 = shl nuw i32 1, %pin
  %64 = and i32 %62, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp102.not = icmp eq i32 %64, 0
  br i1 %cmp102.not, label %if.end101.if.end105_crit_edge, label %if.end101.cleanup_crit_edge

if.end101.cleanup_crit_edge:                      ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end101.if.end105_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105

if.end105:                                        ; preds = %if.end101.if.end105_crit_edge, %if.end101.thread
  %call.i165 = call ptr @gpiochip_get_data(ptr noundef %gpio) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i164) #9
  %65 = ptrtoint ptr %value.i164 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %value.i164, align 4, !annotation !114
  %data.i.i166 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i165, i32 0, i32 9
  %66 = ptrtoint ptr %data.i.i166 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i166, align 4
  %npins.i.i167 = getelementptr inbounds %struct.sx150x_device_data, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %npins.i.i167 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %npins.i.i167, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %pin)
  %cmp.not.i.i168 = icmp ugt i32 %69, %pin
  br i1 %cmp.not.i.i168, label %if.end.i.i170, label %if.end105.if.end.i180_crit_edge

if.end105.if.end.i180_crit_edge:                  ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i180

if.end.i.i170:                                    ; preds = %if.end105
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %71)
  %cmp2.not.i.i169 = icmp eq i8 %71, 2
  br i1 %cmp2.not.i.i169, label %sx150x_pin_is_oscio.exit.i175, label %if.end.i.i170.if.end.i180_crit_edge

if.end.i.i170.if.end.i180_crit_edge:              ; preds = %if.end.i.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i180

sx150x_pin_is_oscio.exit.i175:                    ; preds = %if.end.i.i170
  %pins.i.i171 = getelementptr inbounds %struct.sx150x_device_data, ptr %67, i32 0, i32 10
  %72 = ptrtoint ptr %pins.i.i171 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pins.i.i171, align 4
  %name.i.i172 = getelementptr %struct.pinctrl_pin_desc, ptr %73, i32 %pin, i32 1
  %74 = ptrtoint ptr %name.i.i172 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %name.i.i172, align 4
  %call.i.i173 = call i32 @strcmp(ptr noundef %75, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173)
  %tobool.not.i.i174 = icmp eq i32 %call.i.i173, 0
  br i1 %tobool.not.i.i174, label %sx150x_pin_is_oscio.exit.i175.sx150x_gpio_get.exit.thread_crit_edge, label %sx150x_pin_is_oscio.exit.i175.if.end.i180_crit_edge

sx150x_pin_is_oscio.exit.i175.if.end.i180_crit_edge: ; preds = %sx150x_pin_is_oscio.exit.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i180

sx150x_pin_is_oscio.exit.i175.sx150x_gpio_get.exit.thread_crit_edge: ; preds = %sx150x_pin_is_oscio.exit.i175
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_gpio_get.exit.thread

if.end.i180:                                      ; preds = %sx150x_pin_is_oscio.exit.i175.if.end.i180_crit_edge, %if.end.i.i170.if.end.i180_crit_edge, %if.end105.if.end.i180_crit_edge
  %regmap.i176 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call.i165, i32 0, i32 6
  %76 = ptrtoint ptr %regmap.i176 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i176, align 4
  %reg_data.i = getelementptr inbounds %struct.sx150x_device_data, ptr %67, i32 0, i32 4
  %78 = ptrtoint ptr %reg_data.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %reg_data.i, align 4
  %conv.i177 = zext i8 %79 to i32
  %call2.i178 = call i32 @regmap_read(ptr noundef %77, i32 noundef %conv.i177, ptr noundef nonnull %value.i164) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i178)
  %cmp.i179 = icmp slt i32 %call2.i178, 0
  br i1 %cmp.i179, label %if.end.i180.sx150x_gpio_get.exit.thread_crit_edge, label %sx150x_gpio_get.exit

if.end.i180.sx150x_gpio_get.exit.thread_crit_edge: ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #11
  br label %sx150x_gpio_get.exit.thread

sx150x_gpio_get.exit.thread:                      ; preds = %if.end.i180.sx150x_gpio_get.exit.thread_crit_edge, %sx150x_pin_is_oscio.exit.i175.sx150x_gpio_get.exit.thread_crit_edge
  %retval.0.i182.ph = phi i32 [ %call2.i178, %if.end.i180.sx150x_gpio_get.exit.thread_crit_edge ], [ -22, %sx150x_pin_is_oscio.exit.i175.sx150x_gpio_get.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i164) #9
  br label %cleanup

sx150x_gpio_get.exit:                             ; preds = %if.end.i180
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %value.i164 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %value.i164, align 4
  %82 = lshr i32 %81, %pin
  %83 = and i32 %82, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i164) #9
  br label %out

out:                                              ; preds = %sx150x_gpio_get.exit, %if.end91.out_crit_edge, %sw.bb72.out_crit_edge, %if.end68.out_crit_edge, %if.end47.out_crit_edge, %if.end33.out_crit_edge, %if.then18, %if.else.out_crit_edge, %if.then9
  %arg.0 = phi i32 [ %cond, %if.then9 ], [ 0, %if.then18 ], [ 1, %if.else.out_crit_edge ], [ 1, %if.end33.out_crit_edge ], [ 1, %if.end47.out_crit_edge ], [ 1, %if.end68.out_crit_edge ], [ 1, %sw.bb72.out_crit_edge ], [ 1, %if.end91.out_crit_edge ], [ %83, %sx150x_gpio_get.exit ]
  %shl.i = shl nuw nsw i32 %arg.0, 8
  %or.i = or i32 %shl.i, %and.i
  %84 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %or.i, ptr %config, align 4
  br label %cleanup

cleanup:                                          ; preds = %out, %sx150x_gpio_get.exit.thread, %if.end101.cleanup_crit_edge, %sx150x_gpio_get_direction.exit, %if.end91.cleanup_crit_edge, %if.else79.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %sw.bb51.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.else.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %call4, %sw.bb.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ -524, %if.then.cleanup_crit_edge ], [ %call28, %sw.bb24.cleanup_crit_edge ], [ -22, %if.end33.cleanup_crit_edge ], [ %call41, %sw.bb37.cleanup_crit_edge ], [ -22, %if.end47.cleanup_crit_edge ], [ -524, %sw.bb51.cleanup_crit_edge ], [ %call62, %if.end57.cleanup_crit_edge ], [ -22, %if.end68.cleanup_crit_edge ], [ %call85, %if.else79.cleanup_crit_edge ], [ -22, %if.end91.cleanup_crit_edge ], [ %call2.i, %sx150x_gpio_get_direction.exit ], [ -22, %if.end101.cleanup_crit_edge ], [ -524, %if.end23.cleanup_crit_edge ], [ %retval.0.i182.ph, %sx150x_gpio_get.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sx150x_pinconf_set(ptr noundef %pctldev, i32 noundef %pin, ptr nocapture noundef readonly %configs, i32 noundef %num_configs) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctldev) #9
  %gpio91 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 4
  %regmap38 = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_configs)
  %cmp186.not = icmp eq i32 %num_configs, 0
  br i1 %cmp186.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %data.i = getelementptr inbounds %struct.sx150x_pinctrl, ptr %call, i32 0, i32 9
  %shl84 = shl nuw i32 1, %pin
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0187 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %configs, i32 %i.0187
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and.i = and i32 %1, 255
  %shr.i = lshr i32 %1, 8
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %npins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %npins.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %npins.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %pin)
  %cmp.not.i = icmp ugt i32 %5, %pin
  br i1 %cmp.not.i, label %if.end.i, label %for.body.if.end10_crit_edge

for.body.if.end10_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end.i:                                         ; preds = %for.body
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp2.not.i = icmp eq i8 %7, 2
  br i1 %cmp2.not.i, label %sx150x_pin_is_oscio.exit, label %if.end.i.if.end10_crit_edge

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

sx150x_pin_is_oscio.exit:                         ; preds = %if.end.i
  %pins.i = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pins.i, align 4
  %name.i = getelementptr %struct.pinctrl_pin_desc, ptr %9, i32 %pin, i32 1
  %10 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %name.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %11, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %sx150x_pin_is_oscio.exit.if.end10_crit_edge

sx150x_pin_is_oscio.exit.if.end10_crit_edge:      ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then:                                          ; preds = %sx150x_pin_is_oscio.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and.i)
  %cmp5 = icmp eq i32 %and.i, 17
  br i1 %cmp5, label %if.then6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.then
  %call7 = tail call i32 @sx150x_gpio_direction_output(ptr noundef %gpio91, i32 noundef %pin, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then6.cleanup_crit_edge, label %if.then6.for.inc_crit_edge

if.then6.for.inc_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %sx150x_pin_is_oscio.exit.if.end10_crit_edge, %if.end.i.if.end10_crit_edge, %for.body.if.end10_crit_edge
  %trunc = trunc i32 %1 to i8
  %12 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %trunc, label %if.end10.cleanup_crit_edge [
    i8 4, label %if.end10.sw.bb_crit_edge
    i8 1, label %if.end10.sw.bb_crit_edge202
    i8 5, label %sw.bb25
    i8 3, label %sw.bb37
    i8 6, label %sw.bb49
    i8 8, label %sw.bb68
    i8 17, label %sw.bb90
  ]

if.end10.sw.bb_crit_edge202:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end10.sw.bb_crit_edge:                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end10.sw.bb_crit_edge, %if.end10.sw.bb_crit_edge202
  %13 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap38, align 4
  %reg_pulldn = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 2
  %15 = ptrtoint ptr %reg_pulldn to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %reg_pulldn, align 2
  %conv = zext i8 %16 to i32
  %call.i153 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %conv, i32 noundef %shl84, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153)
  %cmp12 = icmp slt i32 %call.i153, 0
  br i1 %cmp12, label %sw.bb.cleanup_crit_edge, label %if.end15

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap38, align 4
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %reg_pullup = getelementptr inbounds %struct.sx150x_device_data, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %reg_pullup to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %reg_pullup, align 1
  %conv18 = zext i8 %22 to i32
  %call.i154 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %conv18, i32 noundef %shl84, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154)
  %cmp21 = icmp slt i32 %call.i154, 0
  br i1 %cmp21, label %if.end15.cleanup_crit_edge, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb25:                                          ; preds = %if.end10
  %23 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap38, align 4
  %reg_pullup28 = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %reg_pullup28 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %reg_pullup28, align 1
  %conv29 = zext i8 %26 to i32
  %call.i155 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef %conv29, i32 noundef %shl84, i32 noundef %shl84, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155)
  %cmp33 = icmp slt i32 %call.i155, 0
  br i1 %cmp33, label %sw.bb25.cleanup_crit_edge, label %sw.bb25.for.inc_crit_edge

sw.bb25.for.inc_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb37:                                          ; preds = %if.end10
  %27 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap38, align 4
  %reg_pulldn40 = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %reg_pulldn40 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %reg_pulldn40, align 2
  %conv41 = zext i8 %30 to i32
  %call.i156 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %conv41, i32 noundef %shl84, i32 noundef %shl84, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %cmp45 = icmp slt i32 %call.i156, 0
  br i1 %cmp45, label %sw.bb37.cleanup_crit_edge, label %sw.bb37.for.inc_crit_edge

sw.bb37.for.inc_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb37.cleanup_crit_edge:                        ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb49:                                          ; preds = %if.end10
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %32)
  %cmp52.not = icmp eq i8 %32, 2
  br i1 %cmp52.not, label %lor.lhs.false, label %sw.bb49.cleanup_crit_edge

sw.bb49.cleanup_crit_edge:                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb49
  br i1 %cmp.not.i, label %sx150x_pin_is_oscio.exit168, label %lor.lhs.false.if.end57_crit_edge

lor.lhs.false.if.end57_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

sx150x_pin_is_oscio.exit168:                      ; preds = %lor.lhs.false
  %pins.i162 = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 10
  %33 = ptrtoint ptr %pins.i162 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins.i162, align 4
  %name.i163 = getelementptr %struct.pinctrl_pin_desc, ptr %34, i32 %pin, i32 1
  %35 = ptrtoint ptr %name.i163 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name.i163, align 4
  %call.i164 = tail call i32 @strcmp(ptr noundef %36, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i165, label %sx150x_pin_is_oscio.exit168.cleanup_crit_edge, label %sx150x_pin_is_oscio.exit168.if.end57_crit_edge

sx150x_pin_is_oscio.exit168.if.end57_crit_edge:   ; preds = %sx150x_pin_is_oscio.exit168
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

sx150x_pin_is_oscio.exit168.cleanup_crit_edge:    ; preds = %sx150x_pin_is_oscio.exit168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %sx150x_pin_is_oscio.exit168.if.end57_crit_edge, %lor.lhs.false.if.end57_crit_edge
  %37 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap38, align 4
  %pri = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9
  %39 = ptrtoint ptr %pri to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pri, align 1
  %conv60 = zext i8 %40 to i32
  %call.i169 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef %conv60, i32 noundef %shl84, i32 noundef %shl84, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %cmp64 = icmp slt i32 %call.i169, 0
  br i1 %cmp64, label %if.end57.cleanup_crit_edge, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb68:                                          ; preds = %if.end10
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %42)
  %cmp72.not = icmp eq i8 %42, 2
  br i1 %cmp72.not, label %lor.lhs.false74, label %sw.bb68.cleanup_crit_edge

sw.bb68.cleanup_crit_edge:                        ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false74:                                  ; preds = %sw.bb68
  br i1 %cmp.not.i, label %sx150x_pin_is_oscio.exit181, label %lor.lhs.false74.if.end78_crit_edge

lor.lhs.false74.if.end78_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

sx150x_pin_is_oscio.exit181:                      ; preds = %lor.lhs.false74
  %pins.i175 = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 10
  %43 = ptrtoint ptr %pins.i175 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pins.i175, align 4
  %name.i176 = getelementptr %struct.pinctrl_pin_desc, ptr %44, i32 %pin, i32 1
  %45 = ptrtoint ptr %name.i176 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %name.i176, align 4
  %call.i177 = tail call i32 @strcmp(ptr noundef %46, ptr noundef nonnull dereferenceable(6) @.str.16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177)
  %tobool.not.i178 = icmp eq i32 %call.i177, 0
  br i1 %tobool.not.i178, label %sx150x_pin_is_oscio.exit181.cleanup_crit_edge, label %sx150x_pin_is_oscio.exit181.if.end78_crit_edge

sx150x_pin_is_oscio.exit181.if.end78_crit_edge:   ; preds = %sx150x_pin_is_oscio.exit181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

sx150x_pin_is_oscio.exit181.cleanup_crit_edge:    ; preds = %sx150x_pin_is_oscio.exit181
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %sx150x_pin_is_oscio.exit181.if.end78_crit_edge, %lor.lhs.false74.if.end78_crit_edge
  %47 = ptrtoint ptr %regmap38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap38, align 4
  %pri81 = getelementptr inbounds %struct.sx150x_device_data, ptr %3, i32 0, i32 9
  %49 = ptrtoint ptr %pri81 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pri81, align 1
  %conv83 = zext i8 %50 to i32
  %call.i182 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %conv83, i32 noundef %shl84, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i182)
  %cmp86 = icmp slt i32 %call.i182, 0
  br i1 %cmp86, label %if.end78.cleanup_crit_edge, label %if.end78.for.inc_crit_edge

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb90:                                          ; preds = %if.end10
  %call92 = tail call i32 @sx150x_gpio_direction_output(ptr noundef %gpio91, i32 noundef %pin, i32 noundef %shr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %cmp93 = icmp slt i32 %call92, 0
  br i1 %cmp93, label %sw.bb90.cleanup_crit_edge, label %sw.bb90.for.inc_crit_edge

sw.bb90.for.inc_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc:                                          ; preds = %sw.bb90.for.inc_crit_edge, %if.end78.for.inc_crit_edge, %if.end57.for.inc_crit_edge, %sw.bb37.for.inc_crit_edge, %sw.bb25.for.inc_crit_edge, %if.end15.for.inc_crit_edge, %if.then6.for.inc_crit_edge
  %inc = add nuw i32 %i.0187, 1
  %exitcond.not = icmp eq i32 %inc, %num_configs
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %sw.bb90.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %sx150x_pin_is_oscio.exit181.cleanup_crit_edge, %sw.bb68.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %sx150x_pin_is_oscio.exit168.cleanup_crit_edge, %sw.bb49.cleanup_crit_edge, %sw.bb37.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ -524, %if.end10.cleanup_crit_edge ], [ %call92, %sw.bb90.cleanup_crit_edge ], [ %call.i182, %if.end78.cleanup_crit_edge ], [ 0, %sw.bb68.cleanup_crit_edge ], [ 0, %sx150x_pin_is_oscio.exit181.cleanup_crit_edge ], [ %call.i169, %if.end57.cleanup_crit_edge ], [ -524, %sw.bb49.cleanup_crit_edge ], [ -524, %sx150x_pin_is_oscio.exit168.cleanup_crit_edge ], [ %call.i156, %sw.bb37.cleanup_crit_edge ], [ %call.i155, %sw.bb25.cleanup_crit_edge ], [ %call.i154, %if.end15.cleanup_crit_edge ], [ %call.i153, %sw.bb.cleanup_crit_edge ], [ -524, %if.then.cleanup_crit_edge ], [ %call7, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !18, !19, !21, !22, !24, !25, !26, !28, !29, !31, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_pinctrl_sx150x__288_1263_sx150x_init4, !1, !"__initcall__kmod_pinctrl_sx150x__288_1263_sx150x_init4", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1263, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1252, i32 11}
!4 = !{ptr @sx150x_driver, !5, !"sx150x_driver", i1 false, i1 false}
!5 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1250, i32 26}
!6 = distinct !{null, !7, !"i2c_funcs", i1 false, i1 false}
!7 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1100, i32 19}
!8 = !{ptr @sx150x_probe._key, !9, !"_key", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1126, i32 17}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1130, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sx150x_probe._entry, !12, !"_entry", i1 false, i1 false}
!18 = !{ptr @sx150x_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @sx150x_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1135, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1152, i32 3}
!24 = !{ptr @sx150x_probe._entry.8, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sx150x_probe._entry_ptr.10, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @sx150x_probe.lock_key, !27, !"lock_key", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1227, i32 8}
!28 = !{ptr @sx150x_probe.request_key, !27, !"request_key", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1238, i32 3}
!31 = !{ptr @sx150x_probe._entry.11, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sx150x_probe._entry_ptr.13, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @sx150x_regmap_config, !34, !"sx150x_regmap_config", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 1084, i32 35}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 904, i32 48}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 887, i32 3}
!39 = !{ptr @sx150x_pinctrl_ops, !40, !"sx150x_pinctrl_ops", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 364, i32 33}
!41 = !{ptr @sx150x_pinconf_ops, !42, !"sx150x_pinconf_ops", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 814, i32 33}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 383, i32 45}
!45 = !{ptr @sx150x_of_match, !46, !"sx150x_of_match", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 833, i32 34}
!47 = !{ptr @sx1501q_device_data, !48, !"sx1501q_device_data", i1 false, i1 false}
!48 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 152, i32 40}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 113, i32 2}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 114, i32 2}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 115, i32 2}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 116, i32 2}
!57 = !{ptr @sx150x_4_pins, !58, !"sx150x_4_pins", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 112, i32 38}
!59 = !{ptr @sx1502q_device_data, !60, !"sx1502q_device_data", i1 false, i1 false}
!60 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 172, i32 40}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 125, i32 2}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 126, i32 2}
!65 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 127, i32 2}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 128, i32 2}
!69 = !{ptr @sx150x_8_pins, !70, !"sx150x_8_pins", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 120, i32 38}
!71 = !{ptr @sx1503q_device_data, !72, !"sx1503q_device_data", i1 false, i1 false}
!72 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 195, i32 40}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 141, i32 2}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 142, i32 2}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 143, i32 2}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 144, i32 2}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 145, i32 2}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 146, i32 2}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 147, i32 2}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 148, i32 2}
!89 = !{ptr @sx150x_16_pins, !90, !"sx150x_16_pins", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 132, i32 38}
!91 = !{ptr @sx1504q_device_data, !92, !"sx1504q_device_data", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 218, i32 40}
!93 = !{ptr @sx1505q_device_data, !94, !"sx1505q_device_data", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 237, i32 40}
!95 = !{ptr @sx1506q_device_data, !96, !"sx1506q_device_data", i1 false, i1 false}
!96 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 259, i32 40}
!97 = !{ptr @sx1507q_device_data, !98, !"sx1507q_device_data", i1 false, i1 false}
!98 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 282, i32 40}
!99 = !{ptr @sx1508q_device_data, !100, !"sx1508q_device_data", i1 false, i1 false}
!100 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 303, i32 40}
!101 = !{ptr @sx1509q_device_data, !102, !"sx1509q_device_data", i1 false, i1 false}
!102 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 324, i32 40}
!103 = !{ptr @sx150x_id, !104, !"sx150x_id", i1 false, i1 false}
!104 = !{!"../drivers/pinctrl/pinctrl-sx150x.c", i32 820, i32 35}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{!"auto-init"}
