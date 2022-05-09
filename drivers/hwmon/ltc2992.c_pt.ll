; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ltc2992.c_pt.bc'
source_filename = "../drivers/hwmon/ltc2992.c"
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ltc2992_gpio_regs = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.ltc2992_state = type { ptr, %struct.gpio_chip, %struct.mutex, [4 x ptr], ptr, [2 x i32] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.86, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.86 = type { ptr }

@__initcall__kmod_ltc2992__288_970_ltc2992_i2c_driver_init6 = internal global ptr @ltc2992_i2c_driver_init, section ".initcall6.init", align 4
@ltc2992_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ltc2992_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc2992_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc2992_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc2992_i2c_driver_exit = internal global ptr @ltc2992_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [64 x i8] c"ltc2992.author=Alexandru Tachici <alexandru.tachici@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [60 x i8] c"ltc2992.description=Hwmon driver for Linear Technology 2992\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [35 x i8] c"ltc2992.file=drivers/hwmon/ltc2992\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [29 x i8] c"ltc2992.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc2992\00", [24 x i8] zeroinitializer }, align 32
@ltc2992_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ltc2992\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ltc2992_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc2992\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ltc2992_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc2992_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 232, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ltc2992:931:(&ltc2992_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ltc2992_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ltc2992_hwmon_ops, ptr @ltc2992_info }, [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@ltc2992_config_gpio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&st->gpio_mutex\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc2992-%x-%s\00", [18 x i8] zeroinitializer }, align 32
@ltc2992_config_gpio.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc2992_config_gpio.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc2992_config_gpio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 336, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"GPIO registering failed (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ltc2992_config_gpio\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/ltc2992.c\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc2992_config_gpio._entry_ptr = internal global ptr @ltc2992_config_gpio._entry, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO2\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO4\00", [26 x i8] zeroinitializer }, align 32
@ltc2992_gpio_addr_map = internal constant { [4 x %struct.ltc2992_gpio_regs], [56 x i8] } { [4 x %struct.ltc2992_gpio_regs] [%struct.ltc2992_gpio_regs { i8 40, i8 42, i8 44, i8 46, i8 48, i8 3, i8 1, i8 2, i8 -106, i8 7 }, %struct.ltc2992_gpio_regs { i8 90, i8 92, i8 94, i8 96, i8 98, i8 53, i8 1, i8 2, i8 -106, i8 6 }, %struct.ltc2992_gpio_regs { i8 100, i8 102, i8 104, i8 106, i8 108, i8 -110, i8 64, i8 -128, i8 -106, i8 0 }, %struct.ltc2992_gpio_regs { i8 110, i8 112, i8 114, i8 116, i8 118, i8 -110, i8 16, i8 32, i8 -105, i8 6 }], [56 x i8] zeroinitializer }, align 32
@ltc2992_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ltc2992_is_visible, ptr @ltc2992_read, ptr null, ptr @ltc2992_write }, [16 x i8] zeroinitializer }, align 32
@ltc2992_info = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @ltc2992_chip, ptr @ltc2992_in, ptr @ltc2992_curr, ptr @ltc2992_power, ptr null], [44 x i8] zeroinitializer }, align 32
@ltc2992_chip = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @ltc2992_chip_config }, [24 x i8] zeroinitializer }, align 32
@ltc2992_in = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @ltc2992_in_config }, [24 x i8] zeroinitializer }, align 32
@ltc2992_curr = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @ltc2992_curr_config }, [24 x i8] zeroinitializer }, align 32
@ltc2992_power = internal constant { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @ltc2992_power_config }, [24 x i8] zeroinitializer }, align 32
@ltc2992_chip_config = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@ltc2992_in_config = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 12686, i32 12686, i32 12686, i32 12686, i32 12686, i32 12686, i32 0], [36 x i8] zeroinitializer }, align 32
@ltc2992_curr_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 12686, i32 12686, i32 0], [20 x i8] zeroinitializer }, align 32
@ltc2992_power_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 101453312, i32 101453312, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.ltc2992_is_visible = internal constant { [13 x i16], [38 x i8] } { [13 x i16] [i16 292, i16 420, i16 420, i16 0, i16 0, i16 0, i16 292, i16 292, i16 0, i16 0, i16 0, i16 292, i16 292], [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.16 = internal global [9 x i64] [i64 7, i64 32, i64 9, i64 10, i64 11, i64 18, i64 19, i64 25, i64 26]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.18 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.19 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.20 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 7, i64 8, i64 12, i64 13]
@__sancov_gen_cov_switch_values.21 = internal global [9 x i64] [i64 7, i64 32, i64 9, i64 10, i64 11, i64 18, i64 19, i64 25, i64 26]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 19]
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"ltc2992_i2c_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 961, i32 26 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 963, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"ltc2992_of_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 949, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"ltc2992_i2c_id\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 955, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"ltc2992_regmap_config\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 884, i32 35 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 931, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"ltc2992_chip_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 879, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 901, i32 41 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 912, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 312, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 315, i32 60 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 334, i32 8 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 336, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 184, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 184, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 184, i32 20 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 184, i32 29 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"ltc2992_gpio_addr_map\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 132, i32 39 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"ltc2992_hwmon_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 808, i32 31 }
@___asan_gen_.108 = private unnamed_addr constant [13 x i8] c"ltc2992_info\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 871, i32 41 }
@___asan_gen_.111 = private unnamed_addr constant [13 x i8] c"ltc2992_chip\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 819, i32 40 }
@___asan_gen_.114 = private unnamed_addr constant [11 x i8] c"ltc2992_in\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 840, i32 40 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"ltc2992_curr\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 853, i32 40 }
@___asan_gen_.120 = private unnamed_addr constant [14 x i8] c"ltc2992_power\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 866, i32 40 }
@___asan_gen_.123 = private unnamed_addr constant [20 x i8] c"ltc2992_chip_config\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 814, i32 18 }
@___asan_gen_.126 = private unnamed_addr constant [18 x i8] c"ltc2992_in_config\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 824, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant [20 x i8] c"ltc2992_curr_config\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 845, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant [21 x i8] c"ltc2992_power_config\00", align 1
@___asan_gen_.133 = private constant [27 x i8] c"../drivers/hwmon/ltc2992.c\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.133, i32 858, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant [32 x i8] c"switch.table.ltc2992_is_visible\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_ltc2992_i2c_driver_exit, ptr @__initcall__kmod_ltc2992__288_970_ltc2992_i2c_driver_init6, ptr @ltc2992_config_gpio._entry, ptr @ltc2992_config_gpio._entry_ptr, ptr @ltc2992_i2c_driver_exit, ptr @ltc2992_i2c_driver, ptr @.str, ptr @ltc2992_of_match, ptr @ltc2992_i2c_id, ptr @ltc2992_i2c_probe._key, ptr @ltc2992_regmap_config, ptr @.str.1, ptr @ltc2992_chip_info, ptr @.str.2, ptr @.str.3, ptr @ltc2992_config_gpio.__key, ptr @.str.4, ptr @.str.5, ptr @ltc2992_config_gpio.lock_key, ptr @ltc2992_config_gpio.request_key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ltc2992_gpio_addr_map, ptr @ltc2992_hwmon_ops, ptr @ltc2992_info, ptr @ltc2992_chip, ptr @ltc2992_in, ptr @ltc2992_curr, ptr @ltc2992_power, ptr @ltc2992_chip_config, ptr @ltc2992_in_config, ptr @ltc2992_curr_config, ptr @ltc2992_power_config, ptr @switch.table.ltc2992_is_visible], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_config_gpio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_config_gpio.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_config_gpio.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_config_gpio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_gpio_addr_map to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_chip to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_in to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_curr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_power to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_chip_config to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_in_config to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_curr_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2992_power_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ltc2992_is_visible to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2992_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc2992_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc2992_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc2992_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2992_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %regvals.i.i = alloca [4 x i8], align 4
  %addr.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 472, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ltc2992_regmap_config, ptr noundef nonnull @ltc2992_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr.i) #7
  %3 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %addr.i, align 4, !annotation !86
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !86
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %call.i35 = tail call ptr @dev_fwnode(ptr noundef %dev.i) #7
  %call1.i = tail call ptr @fwnode_get_next_available_child_node(ptr noundef %call.i35, ptr noundef null) #7
  %tobool.not28.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not28.i, label %if.end8.if.end11_crit_edge, label %if.end8.for.body.i_crit_edge

if.end8.for.body.i_crit_edge:                     ; preds = %if.end8
  br label %for.body.i

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end8.for.body.i_crit_edge
  %child.029.i = phi ptr [ %call10.i, %for.inc.i.for.body.i_crit_edge ], [ %call1.i, %if.end8.for.body.i_crit_edge ]
  %call.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.029.i, ptr noundef nonnull @.str.2, ptr noundef nonnull %addr.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i36 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i36, label %for.body.i.ltc2992_parse_dt.exit_crit_edge, label %if.end.i

for.body.i.ltc2992_parse_dt.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ltc2992_parse_dt.exit

if.end.i:                                         ; preds = %for.body.i
  %7 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp3.i = icmp ugt i32 %8, 1
  br i1 %cmp3.i, label %if.end.i.ltc2992_parse_dt.exit_crit_edge, label %if.end5.i

if.end.i.ltc2992_parse_dt.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ltc2992_parse_dt.exit

if.end5.i:                                        ; preds = %if.end.i
  %call.i24.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.029.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %val.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool7.not.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool7.not.i, label %if.then8.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr.i, align 4
  %arrayidx.i = getelementptr %struct.ltc2992_state, ptr %call.i, i32 0, i32 5, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %arrayidx.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %if.end5.i.for.inc.i_crit_edge
  %call10.i = call ptr @fwnode_get_next_available_child_node(ptr noundef %call.i35, ptr noundef nonnull %child.029.i) #7
  %tobool.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end11_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.end11_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

ltc2992_parse_dt.exit:                            ; preds = %if.end.i.ltc2992_parse_dt.exit_crit_edge, %for.body.i.ltc2992_parse_dt.exit_crit_edge
  %retval.0.ph.i = phi i32 [ %call.i.i, %for.body.i.ltc2992_parse_dt.exit_crit_edge ], [ -22, %if.end.i.ltc2992_parse_dt.exit_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %child.029.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  br label %cleanup

if.end11:                                         ; preds = %for.inc.i.if.end11_crit_edge, %if.end8.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr.i) #7
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end11.dev_name.exit.i_crit_edge

if.end11.dev_name.exit.i_crit_edge:               ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i37 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  %18 = ptrtoint ptr %dev.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i37, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.end11.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %19, %if.end.i.i ], [ %17, %if.end11.dev_name.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i) #7
  %20 = ptrtoint ptr %regvals.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 16777215, ptr %regvals.i.i, align 4
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i.i38 = call i32 @regmap_bulk_write(ptr noundef %22, i32 noundef 150, ptr noundef nonnull %regvals.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %cmp.i39 = icmp slt i32 %call.i.i38, 0
  br i1 %cmp.i39, label %dev_name.exit.i.cleanup_crit_edge, label %do.body.i

dev_name.exit.i.cleanup_crit_edge:                ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.i:                                        ; preds = %dev_name.exit.i
  %gpio_mutex.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %gpio_mutex.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @ltc2992_config_gpio.__key) #7
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %addr.i40 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %addr.i40 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr.i40, align 2
  %conv.i = zext i16 %26 to i32
  %call6.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev4.i, i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %conv.i, ptr noundef nonnull @.str.11) #7
  %tobool.not.i41 = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i41, label %do.body.i.cleanup_crit_edge, label %if.end8.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.i:                                        ; preds = %do.body.i
  %arrayidx9.i = getelementptr %struct.ltc2992_state, ptr %call.i, i32 0, i32 3, i32 0
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call6.i, ptr %arrayidx9.i, align 4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %dev4.1.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 4
  %addr.1.i = getelementptr inbounds %struct.i2c_client, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %addr.1.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %addr.1.i, align 2
  %conv.1.i = zext i16 %31 to i32
  %call6.1.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev4.1.i, i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %conv.1.i, ptr noundef nonnull @.str.12) #7
  %tobool.not.1.i = icmp eq ptr %call6.1.i, null
  br i1 %tobool.not.1.i, label %if.end8.i.cleanup_crit_edge, label %if.end8.1.i

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.1.i:                                      ; preds = %if.end8.i
  %arrayidx9.1.i = getelementptr %struct.ltc2992_state, ptr %call.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call6.1.i, ptr %arrayidx9.1.i, align 4
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %dev4.2.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %addr.2.i = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %addr.2.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %addr.2.i, align 2
  %conv.2.i = zext i16 %36 to i32
  %call6.2.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev4.2.i, i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %conv.2.i, ptr noundef nonnull @.str.13) #7
  %tobool.not.2.i = icmp eq ptr %call6.2.i, null
  br i1 %tobool.not.2.i, label %if.end8.1.i.cleanup_crit_edge, label %if.end8.2.i

if.end8.1.i.cleanup_crit_edge:                    ; preds = %if.end8.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.2.i:                                      ; preds = %if.end8.1.i
  %arrayidx9.2.i = getelementptr %struct.ltc2992_state, ptr %call.i, i32 0, i32 3, i32 2
  %37 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call6.2.i, ptr %arrayidx9.2.i, align 4
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i, align 4
  %dev4.3.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  %addr.3.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %addr.3.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %addr.3.i, align 2
  %conv.3.i = zext i16 %41 to i32
  %call6.3.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev4.3.i, i32 noundef 3264, ptr noundef nonnull @.str.5, i32 noundef %conv.3.i, ptr noundef nonnull @.str.14) #7
  %tobool.not.3.i = icmp eq ptr %call6.3.i, null
  br i1 %tobool.not.3.i, label %if.end8.2.i.cleanup_crit_edge, label %if.end8.3.i

if.end8.2.i.cleanup_crit_edge:                    ; preds = %if.end8.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8.3.i:                                      ; preds = %if.end8.2.i
  %arrayidx9.3.i = getelementptr %struct.ltc2992_state, ptr %call.i, i32 0, i32 3, i32 3
  %42 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call6.3.i, ptr %arrayidx9.3.i, align 4
  %gc.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1
  %43 = ptrtoint ptr %gc.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %retval.0.i.i, ptr %gc.i, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  %dev11.i = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 2
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %dev11.i, ptr %parent.i, align 4
  %owner.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 4
  %47 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %owner.i, align 4
  %base.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 19
  %48 = ptrtoint ptr %base.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -1, ptr %base.i, align 4
  %names.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 22
  %49 = ptrtoint ptr %names.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %arrayidx9.i, ptr %names.i, align 4
  %ngpio.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 20
  %50 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 4, ptr %ngpio.i, align 4
  %get.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 10
  %51 = ptrtoint ptr %get.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ltc2992_gpio_get, ptr %get.i, align 4
  %get_multiple.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 11
  %52 = ptrtoint ptr %get_multiple.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ltc2992_gpio_get_multiple, ptr %get_multiple.i, align 4
  %set.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 12
  %53 = ptrtoint ptr %set.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ltc2992_gpio_set, ptr %set.i, align 4
  %set_multiple.i = getelementptr inbounds %struct.ltc2992_state, ptr %call.i, i32 0, i32 1, i32 13
  %54 = ptrtoint ptr %set_multiple.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ltc2992_gpio_set_multiple, ptr %set_multiple.i, align 4
  %call25.i = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev11.i, ptr noundef %gc.i, ptr noundef %call.i, ptr noundef nonnull @ltc2992_config_gpio.lock_key, ptr noundef nonnull @ltc2992_config_gpio.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end8.3.i.if.end15_crit_edge, label %ltc2992_config_gpio.exit

if.end8.3.i.if.end15_crit_edge:                   ; preds = %if.end8.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

ltc2992_config_gpio.exit:                         ; preds = %if.end8.3.i
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %dev32.i = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.6, i32 noundef %call25.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp13 = icmp slt i32 %call25.i, 0
  br i1 %cmp13, label %ltc2992_config_gpio.exit.cleanup_crit_edge, label %ltc2992_config_gpio.exit.if.end15_crit_edge

ltc2992_config_gpio.exit.if.end15_crit_edge:      ; preds = %ltc2992_config_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

ltc2992_config_gpio.exit.cleanup_crit_edge:       ; preds = %ltc2992_config_gpio.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %ltc2992_config_gpio.exit.if.end15_crit_edge, %if.end8.3.i.if.end15_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call17 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ltc2992_chip_info, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %57 = ptrtoint ptr %call17 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %57, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %ltc2992_config_gpio.exit.cleanup_crit_edge, %if.end8.2.i.cleanup_crit_edge, %if.end8.1.i.cleanup_crit_edge, %if.end8.i.cleanup_crit_edge, %do.body.i.cleanup_crit_edge, %dev_name.exit.i.cleanup_crit_edge, %ltc2992_parse_dt.exit, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %spec.select.i, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph.i, %ltc2992_parse_dt.exit ], [ %call25.i, %ltc2992_config_gpio.exit.cleanup_crit_edge ], [ -12, %do.body.i.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ], [ -12, %if.end8.1.i.cleanup_crit_edge ], [ -12, %if.end8.2.i.cleanup_crit_edge ], [ %call.i.i38, %dev_name.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_available_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2992_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %regvals.i = alloca [4 x i8], align 4
  %gpio_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_status)
  %gpio_mutex = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i) #7
  %regmap.i = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %regvals.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regvals.i, align 4
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 149, ptr noundef nonnull %regvals.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ltc2992_read_reg.exit.thread, label %if.end

ltc2992_read_reg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i) #7
  call void @mutex_unlock(ptr noundef %gpio_mutex) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %regvals.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regvals.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i) #7
  call void @mutex_unlock(ptr noundef %gpio_mutex) #7
  %conv8.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %gpio_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv8.i, ptr %gpio_status, align 4
  %sub3 = sub i32 3, %offset
  %gpio_status.0. = load volatile i32, ptr %gpio_status, align 4
  %and.i = and i32 %sub3, 31
  %6 = xor i32 %gpio_status.0., -1
  %7 = lshr i32 %6, %and.i
  %8 = and i32 %7, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %ltc2992_read_reg.exit.thread
  %retval.0 = phi i32 [ %8, %if.end ], [ %call.i, %ltc2992_read_reg.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_status)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2992_gpio_get_multiple(ptr noundef %chip, ptr noundef %mask, ptr noundef %bits) #2 align 64 {
entry:
  %regvals.i = alloca [4 x i8], align 4
  %gpio_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_status)
  %gpio_mutex = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i) #7
  %regmap.i = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %regvals.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regvals.i, align 4
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 149, ptr noundef nonnull %regvals.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %ltc2992_read_reg.exit.thread, label %if.end

ltc2992_read_reg.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i) #7
  call void @mutex_unlock(ptr noundef %gpio_mutex) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %regvals.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %regvals.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i) #7
  call void @mutex_unlock(ptr noundef %gpio_mutex) #7
  %conv8.i = zext i8 %4 to i32
  %5 = ptrtoint ptr %gpio_status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv8.i, ptr %gpio_status, align 4
  %call3 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call3)
  %cmp424 = icmp ult i32 %call3, 4
  br i1 %cmp424, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %gpio_nr.025 = phi i32 [ %call9, %for.inc.for.body_crit_edge ], [ %call3, %if.end.for.body_crit_edge ]
  %sub5 = sub nuw nsw i32 3, %gpio_nr.025
  %6 = ptrtoint ptr %gpio_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %gpio_status.0. = load volatile i32, ptr %gpio_status, align 4
  %7 = shl nuw nsw i32 1, %sub5
  %8 = and i32 %gpio_status.0., %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef %gpio_nr.025, ptr noundef %bits) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body.for.inc_crit_edge
  %add = add nuw nsw i32 %gpio_nr.025, 1
  %call9 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 4, i32 noundef %add) #7
  %cmp4 = icmp ult i32 %call9, 4
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ltc2992_read_reg.exit.thread
  %retval.0 = phi i32 [ %call.i, %ltc2992_read_reg.exit.thread ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_status)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc2992_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %regvals.i17 = alloca [4 x i8], align 4
  %regvals.i = alloca [4 x i8], align 4
  %gpio_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_ctrl) #7
  %gpio_mutex = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #7
  %ctrl = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %offset, i32 8
  %0 = ptrtoint ptr %ctrl to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ctrl, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i) #7
  %regmap.i = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %regvals.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regvals.i, align 4
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %conv.i = zext i8 %1 to i32
  %call.i = call i32 @regmap_bulk_read(ptr noundef %4, i32 noundef %conv.i, ptr noundef nonnull %regvals.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regvals.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %regvals.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i) #7
  %conv8.i = zext i8 %6 to i32
  %7 = ptrtoint ptr %gpio_ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv8.i, ptr %gpio_ctrl, align 4
  %ctrl_bit = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %offset, i32 9
  %8 = ptrtoint ptr %ctrl_bit to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ctrl_bit, align 1
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef %conv, ptr noundef nonnull %gpio_ctrl) #7
  br label %assign_bit.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @_clear_bit(i32 noundef %conv, ptr noundef nonnull %gpio_ctrl) #7
  br label %assign_bit.exit

assign_bit.exit:                                  ; preds = %if.else.i, %if.then.i
  %10 = ptrtoint ptr %gpio_ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_ctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i17) #7
  %12 = ptrtoint ptr %regvals.i17 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %regvals.i17, align 4
  %conv2.i = trunc i32 %11 to i8
  store i8 %conv2.i, ptr %regvals.i17, align 4
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i24 = call i32 @regmap_bulk_write(ptr noundef %14, i32 noundef %conv.i, ptr noundef nonnull %regvals.i17, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i17) #7
  br label %cleanup

cleanup:                                          ; preds = %assign_bit.exit, %if.then
  call void @mutex_unlock(ptr noundef %gpio_mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_ctrl) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ltc2992_gpio_set_multiple(ptr noundef %chip, ptr noundef %mask, ptr nocapture noundef readnone %bits) #2 align 64 {
entry:
  %regvals.i23 = alloca [4 x i8], align 4
  %regvals.i = alloca [4 x i8], align 4
  %gpio_ctrl_io = alloca i32, align 4
  %gpio_ctrl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_ctrl_io) #7
  %0 = ptrtoint ptr %gpio_ctrl_io to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %gpio_ctrl_io, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gpio_ctrl) #7
  %1 = ptrtoint ptr %gpio_ctrl to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %gpio_ctrl, align 4
  %call1 = tail call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 4, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call1)
  %cmp36 = icmp ult i32 %call1, 4
  br i1 %cmp36, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %gpio_nr.037 = phi i32 [ %call10, %for.inc.for.body_crit_edge ], [ %call1, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %gpio_nr.037)
  %cond = icmp eq i32 %gpio_nr.037, 3
  br i1 %cond, label %if.then5, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %ctrl_bit = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %gpio_nr.037, i32 9
  %2 = ptrtoint ptr %ctrl_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctrl_bit, align 1
  %conv = zext i8 %3 to i32
  call void @_set_bit(i32 noundef %conv, ptr noundef nonnull %gpio_ctrl_io) #7
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @_set_bit(i32 noundef 6, ptr noundef nonnull %gpio_ctrl) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then5, %if.then
  %add = add nuw nsw i32 %gpio_nr.037, 1
  %call10 = call i32 @_find_next_bit_be(ptr noundef %mask, i32 noundef 4, i32 noundef %add) #7
  %cmp = icmp ult i32 %call10, 4
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %gpio_mutex = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %gpio_mutex, i32 noundef 0) #7
  %4 = ptrtoint ptr %gpio_ctrl_io to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_ctrl_io, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i) #7
  %6 = ptrtoint ptr %regvals.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %regvals.i, align 4
  %conv2.i = trunc i32 %5 to i8
  store i8 %conv2.i, ptr %regvals.i, align 4
  %regmap.i = getelementptr inbounds %struct.ltc2992_state, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_write(ptr noundef %8, i32 noundef 150, ptr noundef nonnull %regvals.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i) #7
  %9 = ptrtoint ptr %gpio_ctrl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_ctrl, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i23) #7
  %11 = ptrtoint ptr %regvals.i23 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %regvals.i23, align 4
  %conv2.i27 = trunc i32 %10 to i8
  store i8 %conv2.i27, ptr %regvals.i23, align 4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i34 = call i32 @regmap_bulk_write(ptr noundef %13, i32 noundef 151, ptr noundef nonnull %regvals.i23, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i23) #7
  call void @mutex_unlock(ptr noundef %gpio_mutex) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_ctrl) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gpio_ctrl_io) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ltc2992_is_visible(ptr nocapture noundef readonly %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog29_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb6
    i32 4, label %sw.bb15
  ]

entry.sw.epilog29_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond = icmp eq i32 %attr, 1
  br i1 %cond, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog29_crit_edge

sw.bb.sw.epilog29_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %1 = icmp ult i32 %switch.tableidx, 13
  br i1 %1, label %switch.lookup, label %sw.bb2.sw.epilog29_crit_edge

sw.bb2.sw.epilog29_crit_edge:                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb6:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %attr, label %sw.bb6.sw.epilog29_crit_edge [
    i32 1, label %sw.bb6.sw.bb7_crit_edge
    i32 7, label %sw.bb6.sw.bb7_crit_edge39
    i32 8, label %sw.bb6.sw.bb7_crit_edge40
    i32 12, label %sw.bb6.sw.bb7_crit_edge41
    i32 13, label %sw.bb6.sw.bb7_crit_edge42
    i32 2, label %sw.bb6.sw.bb8_crit_edge
    i32 3, label %sw.bb6.sw.bb8_crit_edge43
  ]

sw.bb6.sw.bb8_crit_edge43:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.bb6.sw.bb8_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb8

sw.bb6.sw.bb7_crit_edge42:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb6.sw.bb7_crit_edge41:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb6.sw.bb7_crit_edge40:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb6.sw.bb7_crit_edge39:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb6.sw.bb7_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb7

sw.bb6.sw.epilog29_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb7:                                           ; preds = %sw.bb6.sw.bb7_crit_edge, %sw.bb6.sw.bb7_crit_edge39, %sw.bb6.sw.bb7_crit_edge40, %sw.bb6.sw.bb7_crit_edge41, %sw.bb6.sw.bb7_crit_edge42
  %arrayidx = getelementptr %struct.ltc2992_state, ptr %data, i32 0, i32 5, i32 %channel
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %sw.bb7.sw.epilog29_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb7.sw.epilog29_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb8:                                           ; preds = %sw.bb6.sw.bb8_crit_edge, %sw.bb6.sw.bb8_crit_edge43
  %arrayidx10 = getelementptr %struct.ltc2992_state, ptr %data, i32 0, i32 5, i32 %channel
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool11.not = icmp eq i32 %6, 0
  br i1 %tobool11.not, label %sw.bb8.sw.epilog29_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8.sw.epilog29_crit_edge:                     ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb15:                                          ; preds = %entry
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %attr, label %sw.bb15.sw.epilog29_crit_edge [
    i32 9, label %sw.bb15.sw.bb16_crit_edge
    i32 11, label %sw.bb15.sw.bb16_crit_edge44
    i32 10, label %sw.bb15.sw.bb16_crit_edge45
    i32 25, label %sw.bb15.sw.bb16_crit_edge46
    i32 26, label %sw.bb15.sw.bb16_crit_edge47
    i32 18, label %sw.bb15.sw.bb22_crit_edge
    i32 19, label %sw.bb15.sw.bb22_crit_edge48
  ]

sw.bb15.sw.bb22_crit_edge48:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

sw.bb15.sw.bb22_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb22

sw.bb15.sw.bb16_crit_edge47:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge46:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge45:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge44:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.bb15.sw.bb16_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb16

sw.bb15.sw.epilog29_crit_edge:                    ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb16:                                          ; preds = %sw.bb15.sw.bb16_crit_edge, %sw.bb15.sw.bb16_crit_edge44, %sw.bb15.sw.bb16_crit_edge45, %sw.bb15.sw.bb16_crit_edge46, %sw.bb15.sw.bb16_crit_edge47
  %arrayidx18 = getelementptr %struct.ltc2992_state, ptr %data, i32 0, i32 5, i32 %channel
  %8 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %sw.bb16.sw.epilog29_crit_edge, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb16.sw.epilog29_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb22:                                          ; preds = %sw.bb15.sw.bb22_crit_edge, %sw.bb15.sw.bb22_crit_edge48
  %arrayidx24 = getelementptr %struct.ltc2992_state, ptr %data, i32 0, i32 5, i32 %channel
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool25.not = icmp eq i32 %11, 0
  br i1 %tobool25.not, label %sw.bb22.sw.epilog29_crit_edge, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb22.sw.epilog29_crit_edge:                    ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.epilog29:                                      ; preds = %sw.bb22.sw.epilog29_crit_edge, %sw.bb16.sw.epilog29_crit_edge, %sw.bb15.sw.epilog29_crit_edge, %sw.bb8.sw.epilog29_crit_edge, %sw.bb7.sw.epilog29_crit_edge, %sw.bb6.sw.epilog29_crit_edge, %sw.bb2.sw.epilog29_crit_edge, %sw.bb.sw.epilog29_crit_edge, %entry.sw.epilog29_crit_edge
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [13 x i16], ptr @switch.table.ltc2992_is_visible, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %12)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %sw.epilog29, %sw.bb22.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog29 ], [ 128, %sw.bb.cleanup_crit_edge ], [ 292, %sw.bb7.cleanup_crit_edge ], [ 420, %sw.bb8.cleanup_crit_edge ], [ 292, %sw.bb16.cleanup_crit_edge ], [ 420, %sw.bb22.cleanup_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2992_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regvals.i.i26.i43 = alloca [4 x i8], align 4
  %regvals.i19.i.i44 = alloca [4 x i8], align 4
  %regvals.i.i.i45 = alloca [4 x i8], align 4
  %regvals.i.i26.i = alloca [4 x i8], align 4
  %regvals.i19.i.i13 = alloca [4 x i8], align 4
  %regvals.i.i.i14 = alloca [4 x i8], align 4
  %regvals.i.i33.i = alloca [4 x i8], align 4
  %regvals.i19.i.i = alloca [4 x i8], align 4
  %regvals.i.i.i = alloca [4 x i8], align 4
  %regvals.i.i25.i.i = alloca [4 x i8], align 4
  %regvals.i23.i.i.i = alloca [4 x i8], align 4
  %regvals.i.i.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp.i = icmp sgt i32 %channel, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  %sub.i = add nsw i32 %channel, -2
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %attr, label %if.then.i.return_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 7, label %sw.bb1.i.i
    i32 8, label %sw.bb4.i.i
    i32 2, label %sw.bb7.i.i
    i32 3, label %sw.bb10.i.i
    i32 12, label %if.then.i.sw.bb13.i.i_crit_edge
    i32 13, label %if.then.i.sw.bb13.i.i_crit_edge86
  ]

if.then.i.sw.bb13.i.i_crit_edge86:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i

if.then.i.sw.bb13.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %min.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 2
  br label %sw.epilog.i.i

sw.bb4.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %max.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 1
  br label %sw.epilog.i.i

sw.bb7.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %min_thresh.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 4
  br label %sw.epilog.i.i

sw.bb10.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_thresh.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 3
  br label %sw.epilog.i.i

sw.bb13.i.i:                                      ; preds = %if.then.i.sw.bb13.i.i_crit_edge, %if.then.i.sw.bb13.i.i_crit_edge86
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %attr)
  %cmp.i.i.i = icmp eq i32 %attr, 13
  %max_alarm_msk.i.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 7
  %min_alarm_msk.i.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 6
  %mask.0.in.in.i.i.i = select i1 %cmp.i.i.i, ptr %max_alarm_msk.i.i.i, ptr %min_alarm_msk.i.i.i
  %4 = ptrtoint ptr %mask.0.in.in.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %mask.0.in.i.i.i = load i8, ptr %mask.0.in.in.i.i.i, align 1
  %alarm.i.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 5
  %5 = ptrtoint ptr %alarm.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %alarm.i.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i.i) #7
  %regmap.i.i.i.i = getelementptr inbounds %struct.ltc2992_state, ptr %2, i32 0, i32 4
  %7 = ptrtoint ptr %regvals.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %regvals.i.i.i.i, align 4
  %8 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i.i.i.i, align 4
  %conv.i.i.i.i = zext i8 %6 to i32
  %call.i.i.i.i = call i32 @regmap_bulk_read(ptr noundef %9, i32 noundef %conv.i.i.i.i, ptr noundef nonnull %regvals.i.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %ltc2992_read_reg.exit.thread.i.i.i, label %if.end7.i.i.i

ltc2992_read_reg.exit.thread.i.i.i:               ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i.i) #7
  br label %return

if.end7.i.i.i:                                    ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %regvals.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %regvals.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i.i) #7
  %and33.i.i.i = and i8 %11, %mask.0.in.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and33.i.i.i)
  %tobool.i.i.i = icmp ne i8 %and33.i.i.i, 0
  %lnot.ext.i.i.i = zext i1 %tobool.i.i.i to i32
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %lnot.ext.i.i.i, ptr %val, align 4
  %neg.i.i.i = xor i8 %mask.0.in.i.i.i, -1
  %and9.i.i.i = and i8 %11, %neg.i.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i23.i.i.i) #7
  %13 = ptrtoint ptr %regvals.i23.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %regvals.i23.i.i.i, align 4
  store i8 %and9.i.i.i, ptr %regvals.i23.i.i.i, align 4
  %14 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i30.i.i.i = call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef %conv.i.i.i.i, ptr noundef nonnull %regvals.i23.i.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i23.i.i.i) #7
  br label %return

sw.epilog.i.i:                                    ; preds = %sw.bb10.i.i, %sw.bb7.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %reg.0.in.in.i.i = phi ptr [ %max_thresh.i.i, %sw.bb10.i.i ], [ %min_thresh.i.i, %sw.bb7.i.i ], [ %max.i.i, %sw.bb4.i.i ], [ %min.i.i, %sw.bb1.i.i ], [ %arrayidx.i.i, %sw.bb.i.i ]
  %16 = ptrtoint ptr %reg.0.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %reg.0.in.i.i = load i8, ptr %reg.0.in.in.i.i, align 1
  %reg.0.i.i = zext i8 %reg.0.in.i.i to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i25.i.i) #7
  %regmap.i.i26.i.i = getelementptr inbounds %struct.ltc2992_state, ptr %2, i32 0, i32 4
  %17 = ptrtoint ptr %regvals.i.i25.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %regvals.i.i25.i.i, align 4
  %18 = ptrtoint ptr %regmap.i.i26.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i26.i.i, align 4
  %call.i.i28.i.i = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef %reg.0.i.i, ptr noundef nonnull %regvals.i.i25.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28.i.i)
  %cmp.i.i29.i.i = icmp slt i32 %call.i.i28.i.i, 0
  br i1 %cmp.i.i29.i.i, label %ltc2992_read_reg.exit.thread.i30.i.i, label %if.end.i.i.i

ltc2992_read_reg.exit.thread.i30.i.i:             ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i25.i.i) #7
  br label %return

if.end.i.i.i:                                     ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i.i = getelementptr inbounds [4 x i8], ptr %regvals.i.i25.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %22 = ptrtoint ptr %regvals.i.i25.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %regvals.i.i25.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i25.i.i) #7
  %conv8.i.1.i.i.i = zext i8 %23 to i32
  %shl.i.1.i.i.i = shl nuw nsw i32 %conv8.i.1.i.i.i, 8
  %conv8.i.i.i.i = zext i8 %21 to i32
  %or.i.1.i.i.i = or i32 %shl.i.1.i.i.i, %conv8.i.i.i.i
  %shr9.i.i.i = lshr i32 %or.i.1.i.i.i, 4
  %mul.i.i.i = mul nuw nsw i32 %shr9.i.i.i, 500
  %add.i.i.i = add nuw nsw i32 %mul.i.i.i, 500
  %div2.i.i.i = udiv i32 %add.i.i.i, 1000
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div2.i.i.i, ptr %val, align 4
  br label %return

if.end.i:                                         ; preds = %sw.bb
  %25 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %attr, label %if.end.i.return_crit_edge [
    i32 1, label %if.end.i.sw.epilog.i_crit_edge
    i32 7, label %sw.bb2.i
    i32 8, label %sw.bb5.i
    i32 2, label %sw.bb8.i
    i32 3, label %sw.bb11.i
    i32 12, label %if.end.i.sw.bb14.i_crit_edge
    i32 13, label %if.end.i.sw.bb14.i_crit_edge87
  ]

if.end.i.sw.bb14.i_crit_edge87:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

if.end.i.sw.bb14.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb14.i

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %if.end.i.sw.bb14.i_crit_edge, %if.end.i.sw.bb14.i_crit_edge87
  %26 = mul i32 %channel, 50
  %conv.i.i = add i32 %26, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i) #7
  %regmap.i.i.i = getelementptr inbounds %struct.ltc2992_state, ptr %2, i32 0, i32 4
  %27 = ptrtoint ptr %regvals.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %regvals.i.i.i, align 4
  %28 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i.i = and i32 %conv.i.i, 255
  %call.i.i.i = call i32 @regmap_bulk_read(ptr noundef %29, i32 noundef %conv.i.i.i, ptr noundef nonnull %regvals.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i31.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i31.i, label %ltc2992_read_reg.exit.thread.i.i, label %if.end4.i.i

ltc2992_read_reg.exit.thread.i.i:                 ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i) #7
  br label %return

if.end4.i.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %attr)
  %cmp.i.i = icmp eq i32 %attr, 13
  %..i.i = select i1 %cmp.i.i, i32 8, i32 4
  %30 = ptrtoint ptr %regvals.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %regvals.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i) #7
  %conv8.i.i.i = zext i8 %31 to i32
  %and.i.i = and i32 %..i.i, %conv8.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.i = icmp ne i32 %and.i.i, 0
  %lnot.ext.i.i = zext i1 %tobool.i.i to i32
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %lnot.ext.i.i, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i19.i.i) #7
  %33 = ptrtoint ptr %regvals.i19.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %regvals.i19.i.i, align 4
  %34 = trunc i32 %..i.i to i8
  %35 = xor i8 %34, -1
  %conv2.i.i.i = and i8 %31, %35
  store i8 %conv2.i.i.i, ptr %regvals.i19.i.i, align 4
  %36 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i26.i.i = call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef %conv.i.i.i, ptr noundef nonnull %regvals.i19.i.i, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i19.i.i) #7
  br label %return

sw.epilog.i:                                      ; preds = %sw.bb11.i, %sw.bb8.i, %sw.bb5.i, %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 36, %sw.bb11.i ], [ 38, %sw.bb8.i ], [ 32, %sw.bb5.i ], [ 34, %sw.bb2.i ], [ 30, %if.end.i.sw.epilog.i_crit_edge ]
  %mul12.i = mul i32 %channel, 50
  %add13.i = add i32 %.sink.i, %mul12.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i33.i) #7
  %regmap.i.i34.i = getelementptr inbounds %struct.ltc2992_state, ptr %2, i32 0, i32 4
  %38 = ptrtoint ptr %regvals.i.i33.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %regvals.i.i33.i, align 4
  %39 = ptrtoint ptr %regmap.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i.i34.i, align 4
  %conv.i.i35.i = and i32 %add13.i, 254
  %call.i.i36.i = call i32 @regmap_bulk_read(ptr noundef %40, i32 noundef %conv.i.i35.i, ptr noundef nonnull %regvals.i.i33.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.i)
  %cmp.i.i37.i = icmp slt i32 %call.i.i36.i, 0
  br i1 %cmp.i.i37.i, label %ltc2992_read_reg.exit.thread.i38.i, label %if.end.i.i

ltc2992_read_reg.exit.thread.i38.i:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i33.i) #7
  br label %return

if.end.i.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i = getelementptr inbounds [4 x i8], ptr %regvals.i.i33.i, i32 0, i32 1
  %41 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i.i.i, align 1
  %43 = ptrtoint ptr %regvals.i.i33.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %regvals.i.i33.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i33.i) #7
  %conv8.i.1.i.i = zext i8 %44 to i32
  %shl.i.1.i.i = shl nuw nsw i32 %conv8.i.1.i.i, 8
  %conv8.i.i39.i = zext i8 %42 to i32
  %or.i.1.i.i = or i32 %shl.i.1.i.i, %conv8.i.i39.i
  %shr9.i.i = lshr i32 %or.i.1.i.i, 4
  %mul.i.i = mul nuw nsw i32 %shr9.i.i, 25000
  %add.i.i = add nuw nsw i32 %mul.i.i, 500
  %div2.i.i = udiv i32 %add.i.i, 1000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div2.i.i, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i15 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i15 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i15, align 4
  %48 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 1, label %sw.bb1.sw.epilog.i32_crit_edge
    i32 7, label %sw.bb1.i
    i32 8, label %sw.bb4.i
    i32 2, label %sw.bb7.i
    i32 3, label %sw.bb10.i
    i32 12, label %sw.bb1.sw.bb13.i_crit_edge
    i32 13, label %sw.bb1.sw.bb13.i_crit_edge88
  ]

sw.bb1.sw.bb13.i_crit_edge88:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

sw.bb1.sw.bb13.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i

sw.bb1.sw.epilog.i32_crit_edge:                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i32

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i32

sw.bb4.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i32

sw.bb7.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i32

sw.bb10.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i32

sw.bb13.i:                                        ; preds = %sw.bb1.sw.bb13.i_crit_edge, %sw.bb1.sw.bb13.i_crit_edge88
  %49 = mul i32 %channel, 50
  %conv.i.i16 = add i32 %49, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i14) #7
  %regmap.i.i.i17 = getelementptr inbounds %struct.ltc2992_state, ptr %47, i32 0, i32 4
  %50 = ptrtoint ptr %regvals.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %regvals.i.i.i14, align 4
  %51 = ptrtoint ptr %regmap.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i.i.i17, align 4
  %conv.i.i.i18 = and i32 %conv.i.i16, 255
  %call.i.i.i19 = call i32 @regmap_bulk_read(ptr noundef %52, i32 noundef %conv.i.i.i18, ptr noundef nonnull %regvals.i.i.i14, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i19)
  %cmp.i.i.i20 = icmp slt i32 %call.i.i.i19, 0
  br i1 %cmp.i.i.i20, label %ltc2992_read_reg.exit.thread.i.i21, label %if.end4.i.i30

ltc2992_read_reg.exit.thread.i.i21:               ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i14) #7
  br label %return

if.end4.i.i30:                                    ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %attr)
  %cmp.i.i22 = icmp eq i32 %attr, 13
  %..i.i23 = select i1 %cmp.i.i22, i32 32, i32 16
  %53 = ptrtoint ptr %regvals.i.i.i14 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %regvals.i.i.i14, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i14) #7
  %conv8.i.i.i24 = zext i8 %54 to i32
  %and.i.i25 = and i32 %..i.i23, %conv8.i.i.i24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i25)
  %tobool.i.i26 = icmp ne i32 %and.i.i25, 0
  %lnot.ext.i.i27 = zext i1 %tobool.i.i26 to i32
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %lnot.ext.i.i27, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i19.i.i13) #7
  %56 = ptrtoint ptr %regvals.i19.i.i13 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -1, ptr %regvals.i19.i.i13, align 4
  %57 = trunc i32 %..i.i23 to i8
  %58 = xor i8 %57, -1
  %conv2.i.i.i28 = and i8 %54, %58
  store i8 %conv2.i.i.i28, ptr %regvals.i19.i.i13, align 4
  %59 = ptrtoint ptr %regmap.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i.i.i17, align 4
  %call.i26.i.i29 = call i32 @regmap_bulk_write(ptr noundef %60, i32 noundef %conv.i.i.i18, ptr noundef nonnull %regvals.i19.i.i13, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i19.i.i13) #7
  br label %return

sw.epilog.i32:                                    ; preds = %sw.bb10.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb1.sw.epilog.i32_crit_edge
  %.sink.i31 = phi i32 [ 26, %sw.bb10.i ], [ 28, %sw.bb7.i ], [ 22, %sw.bb4.i ], [ 24, %sw.bb1.i ], [ 20, %sw.bb1.sw.epilog.i32_crit_edge ]
  %mul11.i = mul i32 %channel, 50
  %add12.i = add i32 %.sink.i31, %mul11.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i26.i) #7
  %regmap.i.i27.i = getelementptr inbounds %struct.ltc2992_state, ptr %47, i32 0, i32 4
  %61 = ptrtoint ptr %regvals.i.i26.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %regvals.i.i26.i, align 4
  %62 = ptrtoint ptr %regmap.i.i27.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i.i27.i, align 4
  %conv.i.i28.i = and i32 %add12.i, 254
  %call.i.i29.i = call i32 @regmap_bulk_read(ptr noundef %63, i32 noundef %conv.i.i28.i, ptr noundef nonnull %regvals.i.i26.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i)
  %cmp.i.i30.i = icmp slt i32 %call.i.i29.i, 0
  br i1 %cmp.i.i30.i, label %ltc2992_read_reg.exit.thread.i31.i, label %if.end.i.i41

ltc2992_read_reg.exit.thread.i31.i:               ; preds = %sw.epilog.i32
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i26.i) #7
  br label %return

if.end.i.i41:                                     ; preds = %sw.epilog.i32
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i.i33 = getelementptr inbounds [4 x i8], ptr %regvals.i.i26.i, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx.i.i.i33 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx.i.i.i33, align 1
  %66 = ptrtoint ptr %regvals.i.i26.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %regvals.i.i26.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i26.i) #7
  %conv8.i.1.i.i34 = zext i8 %67 to i32
  %shl.i.1.i.i35 = shl nuw nsw i32 %conv8.i.1.i.i34, 8
  %conv8.i.i32.i = zext i8 %65 to i32
  %or.i.1.i.i36 = or i32 %shl.i.1.i.i35, %conv8.i.i32.i
  %shr11.i.i = lshr i32 %or.i.1.i.i36, 4
  %mul.i.i37 = mul nuw nsw i32 %shr11.i.i, 12500
  %arrayidx.i.i38 = getelementptr %struct.ltc2992_state, ptr %47, i32 0, i32 5, i32 %channel
  %68 = ptrtoint ptr %arrayidx.i.i38 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i.i38, align 4
  %div8.i.i = lshr i32 %69, 1
  %add.i.i39 = add nuw i32 %mul.i.i37, %div8.i.i
  %div2.i.i40 = udiv i32 %add.i.i39, %69
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div2.i.i40, ptr %val, align 4
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i46 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %71 = ptrtoint ptr %driver_data.i.i46 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %driver_data.i.i46, align 4
  %73 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %attr, label %sw.bb3.return_crit_edge [
    i32 9, label %sw.bb3.sw.epilog.i74_crit_edge
    i32 11, label %sw.bb1.i47
    i32 10, label %sw.bb4.i48
    i32 18, label %sw.bb7.i49
    i32 19, label %sw.bb10.i50
    i32 25, label %sw.bb3.sw.bb13.i56_crit_edge
    i32 26, label %sw.bb3.sw.bb13.i56_crit_edge89
  ]

sw.bb3.sw.bb13.i56_crit_edge89:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i56

sw.bb3.sw.bb13.i56_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb13.i56

sw.bb3.sw.epilog.i74_crit_edge:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i74

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i47:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i74

sw.bb4.i48:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i74

sw.bb7.i49:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i74

sw.bb10.i50:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i74

sw.bb13.i56:                                      ; preds = %sw.bb3.sw.bb13.i56_crit_edge, %sw.bb3.sw.bb13.i56_crit_edge89
  %74 = mul i32 %channel, 50
  %conv.i.i51 = add i32 %74, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i45) #7
  %regmap.i.i.i52 = getelementptr inbounds %struct.ltc2992_state, ptr %72, i32 0, i32 4
  %75 = ptrtoint ptr %regvals.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %regvals.i.i.i45, align 4
  %76 = ptrtoint ptr %regmap.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i.i.i52, align 4
  %conv.i.i.i53 = and i32 %conv.i.i51, 255
  %call.i.i.i54 = call i32 @regmap_bulk_read(ptr noundef %77, i32 noundef %conv.i.i.i53, ptr noundef nonnull %regvals.i.i.i45, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i54)
  %cmp.i.i.i55 = icmp slt i32 %call.i.i.i54, 0
  br i1 %cmp.i.i.i55, label %ltc2992_read_reg.exit.thread.i.i57, label %if.end4.i.i66

ltc2992_read_reg.exit.thread.i.i57:               ; preds = %sw.bb13.i56
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i45) #7
  br label %return

if.end4.i.i66:                                    ; preds = %sw.bb13.i56
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %attr)
  %cmp.i.i58 = icmp eq i32 %attr, 26
  %..i.i59 = select i1 %cmp.i.i58, i32 128, i32 64
  %78 = ptrtoint ptr %regvals.i.i.i45 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %regvals.i.i.i45, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i45) #7
  %conv8.i.i.i60 = zext i8 %79 to i32
  %and.i.i61 = and i32 %..i.i59, %conv8.i.i.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i61)
  %tobool.i.i62 = icmp ne i32 %and.i.i61, 0
  %lnot.ext.i.i63 = zext i1 %tobool.i.i62 to i32
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %lnot.ext.i.i63, ptr %val, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i19.i.i44) #7
  %81 = ptrtoint ptr %regvals.i19.i.i44 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %regvals.i19.i.i44, align 4
  %82 = trunc i32 %..i.i59 to i8
  %83 = xor i8 %82, -1
  %conv2.i.i.i64 = and i8 %79, %83
  store i8 %conv2.i.i.i64, ptr %regvals.i19.i.i44, align 4
  %84 = ptrtoint ptr %regmap.i.i.i52 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i.i.i52, align 4
  %call.i26.i.i65 = call i32 @regmap_bulk_write(ptr noundef %85, i32 noundef %conv.i.i.i53, ptr noundef nonnull %regvals.i19.i.i44, i32 noundef 1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i19.i.i44) #7
  br label %return

sw.epilog.i74:                                    ; preds = %sw.bb10.i50, %sw.bb7.i49, %sw.bb4.i48, %sw.bb1.i47, %sw.bb3.sw.epilog.i74_crit_edge
  %.sink.i67 = phi i32 [ 14, %sw.bb10.i50 ], [ 17, %sw.bb7.i49 ], [ 8, %sw.bb4.i48 ], [ 11, %sw.bb1.i47 ], [ 5, %sw.bb3.sw.epilog.i74_crit_edge ]
  %mul11.i68 = mul i32 %channel, 50
  %add12.i69 = add i32 %.sink.i67, %mul11.i68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i26.i43) #7
  %regmap.i.i27.i70 = getelementptr inbounds %struct.ltc2992_state, ptr %72, i32 0, i32 4
  %86 = ptrtoint ptr %regvals.i.i26.i43 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %regvals.i.i26.i43, align 4
  %87 = ptrtoint ptr %regmap.i.i27.i70 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i.i27.i70, align 4
  %conv.i.i28.i71 = and i32 %add12.i69, 255
  %call.i.i29.i72 = call i32 @regmap_bulk_read(ptr noundef %88, i32 noundef %conv.i.i28.i71, ptr noundef nonnull %regvals.i.i26.i43, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i29.i72)
  %cmp.i.i30.i73 = icmp slt i32 %call.i.i29.i72, 0
  br i1 %cmp.i.i30.i73, label %ltc2992_read_reg.exit.thread.i31.i75, label %if.end.i.i83

ltc2992_read_reg.exit.thread.i31.i75:             ; preds = %sw.epilog.i74
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i26.i43) #7
  br label %return

if.end.i.i83:                                     ; preds = %sw.epilog.i74
  %arrayidx.i.i.i76 = getelementptr inbounds [4 x i8], ptr %regvals.i.i26.i43, i32 0, i32 2
  %89 = ptrtoint ptr %arrayidx.i.i.i76 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx.i.i.i76, align 2
  %arrayidx.i.1.i.i = getelementptr inbounds [4 x i8], ptr %regvals.i.i26.i43, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.i.1.i.i, align 1
  %93 = ptrtoint ptr %regvals.i.i26.i43 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %regvals.i.i26.i43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i26.i43) #7
  %conv8.i.2.i.i = zext i8 %94 to i32
  %shl.i.2.i.i = shl nuw nsw i32 %conv8.i.2.i.i, 16
  %conv8.i.1.i.i77 = zext i8 %92 to i32
  %shl.i.1.i.i78 = shl nuw nsw i32 %conv8.i.1.i.i77, 8
  %conv8.i.i32.i79 = zext i8 %90 to i32
  %or.i.1.i.i80 = or i32 %shl.i.1.i.i78, %conv8.i.i32.i79
  %or.i.2.i.i = or i32 %or.i.1.i.i80, %shl.i.2.i.i
  %conv212.i.i = zext i32 %or.i.2.i.i to i64
  %arrayidx.i.i81 = getelementptr %struct.ltc2992_state, ptr %72, i32 0, i32 5, i32 %channel
  %95 = ptrtoint ptr %arrayidx.i.i81 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i81, align 4
  %mul.i.i82 = mul i32 %96, 1000
  %mul.i.i.i.i = mul nuw nsw i64 %conv212.i.i, 312500000
  %rl.sroa.0.0.extract.shift.i.i.i = lshr i64 %mul.i.i.i.i, 32
  %rh.sroa.12.0.extract.trunc.i.i.i = trunc i64 %rl.sroa.0.0.extract.shift.i.i.i to i32
  %rem177.i.i.i = urem i32 %rh.sroa.12.0.extract.trunc.i.i.i, %mul.i.i82
  %rl.sroa.16.0.insert.ext682.i.i.i = and i64 %mul.i.i.i.i, 4294967264
  %rl.sroa.0.0.insert.ext657.i.i.i = zext i32 %rem177.i.i.i to i64
  %rl.sroa.0.0.insert.shift658.i.i.i = shl nuw nsw i64 %rl.sroa.0.0.insert.ext657.i.i.i, 32
  %rl.sroa.0.0.insert.insert660.i.i.i = or i64 %rl.sroa.0.0.insert.shift658.i.i.i, %rl.sroa.16.0.insert.ext682.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rl.sroa.0.0.insert.insert660.i.i.i)
  %cmp389.i.i.i = icmp ult i64 %rl.sroa.0.0.insert.insert660.i.i.i, 4294967296
  br i1 %cmp389.i.i.i, label %if.then397.i.i.i, label %if.else403.i.i.i, !prof !87

if.then397.i.i.i:                                 ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #9
  %conv398.i.i.i = trunc i64 %mul.i.i.i.i to i32
  %div401.i.i.i = udiv i32 %conv398.i.i.i, %mul.i.i82
  br label %mul_u64_u32_div.exit.i.i

if.else403.i.i.i:                                 ; preds = %if.end.i.i83
  call void @__sanitizer_cov_trace_pc() #9
  %97 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul.i.i82, i64 %rl.sroa.0.0.insert.insert660.i.i.i) #11, !srcloc !88
  %asmresult1.i604.i.i.i = extractvalue { i64, i64 } %97, 1
  %rl.sroa.16.0.extract.trunc694.i.i.i = trunc i64 %asmresult1.i604.i.i.i to i32
  br label %mul_u64_u32_div.exit.i.i

mul_u64_u32_div.exit.i.i:                         ; preds = %if.else403.i.i.i, %if.then397.i.i.i
  %rl.sroa.16.0.i.i.i = phi i32 [ %div401.i.i.i, %if.then397.i.i.i ], [ %rl.sroa.16.0.extract.trunc694.i.i.i, %if.else403.i.i.i ]
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %rl.sroa.16.0.i.i.i, ptr %val, align 4
  br label %return

return:                                           ; preds = %mul_u64_u32_div.exit.i.i, %ltc2992_read_reg.exit.thread.i31.i75, %if.end4.i.i66, %ltc2992_read_reg.exit.thread.i.i57, %sw.bb3.return_crit_edge, %if.end.i.i41, %ltc2992_read_reg.exit.thread.i31.i, %if.end4.i.i30, %ltc2992_read_reg.exit.thread.i.i21, %sw.bb1.return_crit_edge, %if.end.i.i, %ltc2992_read_reg.exit.thread.i38.i, %if.end4.i.i, %ltc2992_read_reg.exit.thread.i.i, %if.end.i.return_crit_edge, %if.end.i.i.i, %ltc2992_read_reg.exit.thread.i30.i.i, %if.end7.i.i.i, %ltc2992_read_reg.exit.thread.i.i.i, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -95, %if.end.i.return_crit_edge ], [ -95, %if.then.i.return_crit_edge ], [ %call.i30.i.i.i, %if.end7.i.i.i ], [ %call.i.i.i.i, %ltc2992_read_reg.exit.thread.i.i.i ], [ 0, %if.end.i.i.i ], [ %call.i.i28.i.i, %ltc2992_read_reg.exit.thread.i30.i.i ], [ %call.i26.i.i, %if.end4.i.i ], [ %call.i.i.i, %ltc2992_read_reg.exit.thread.i.i ], [ 0, %if.end.i.i ], [ %call.i.i36.i, %ltc2992_read_reg.exit.thread.i38.i ], [ -95, %sw.bb1.return_crit_edge ], [ %call.i26.i.i29, %if.end4.i.i30 ], [ %call.i.i.i19, %ltc2992_read_reg.exit.thread.i.i21 ], [ 0, %if.end.i.i41 ], [ %call.i.i29.i, %ltc2992_read_reg.exit.thread.i31.i ], [ -95, %sw.bb3.return_crit_edge ], [ %call.i26.i.i65, %if.end4.i.i66 ], [ %call.i.i.i54, %ltc2992_read_reg.exit.thread.i.i57 ], [ 0, %mul_u64_u32_div.exit.i.i ], [ %call.i.i29.i72, %ltc2992_read_reg.exit.thread.i31.i75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2992_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %regvals.i.i.i36 = alloca [4 x i8], align 4
  %regvals.i.i.i21 = alloca [4 x i8], align 4
  %regvals.i.i.i = alloca [4 x i8], align 4
  %regvals.i.i.i.i = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb3
    i32 4, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond.i = icmp eq i32 %attr, 1
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.ltc2992_state, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 1, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i19 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp.i = icmp sgt i32 %channel, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb1
  %sub.i = add nsw i32 %channel, -2
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %if.then.i.return_crit_edge [
    i32 2, label %sw.bb.i.i
    i32 3, label %sw.bb1.i.i
  ]

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %min_thresh.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 4
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_thresh.i.i = getelementptr [4 x %struct.ltc2992_gpio_regs], ptr @ltc2992_gpio_addr_map, i32 0, i32 %sub.i, i32 3
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %sw.bb.i.i
  %reg.0.in.in.i.i = phi ptr [ %max_thresh.i.i, %sw.bb1.i.i ], [ %min_thresh.i.i, %sw.bb.i.i ]
  %8 = ptrtoint ptr %reg.0.in.in.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %reg.0.in.i.i = load i8, ptr %reg.0.in.in.i.i, align 1
  %reg.0.i.i = zext i8 %reg.0.in.i.i to i32
  %mul.i.i.i = mul i32 %val, 1000
  %add.i.i.i = add i32 %mul.i.i.i, 250
  %div1.i.i.i = udiv i32 %add.i.i.i, 500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i.i) #7
  %9 = ptrtoint ptr %regvals.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %regvals.i.i.i.i, align 4
  %div1.i.tr.i.i = trunc i32 %div1.i.i.i to i8
  %conv2.i.i.i.i = shl i8 %div1.i.tr.i.i, 4
  %arrayidx.i.i.i.i = getelementptr inbounds [4 x i8], ptr %regvals.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv2.i.i.i.i, ptr %arrayidx.i.i.i.i, align 1
  %shr.i.1.i.i.i = lshr i32 %div1.i.i.i, 4
  %conv2.i.1.i.i.i = trunc i32 %shr.i.1.i.i.i to i8
  store i8 %conv2.i.1.i.i.i, ptr %regvals.i.i.i.i, align 4
  %regmap.i.i.i.i = getelementptr inbounds %struct.ltc2992_state, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %regmap.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @regmap_bulk_write(ptr noundef %12, i32 noundef %reg.0.i.i, ptr noundef nonnull %regvals.i.i.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i.i) #7
  br label %return

if.end.i:                                         ; preds = %sw.bb1
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %attr, label %if.end.i.return_crit_edge [
    i32 2, label %if.end.i.sw.epilog.i_crit_edge
    i32 3, label %sw.bb2.i
  ]

if.end.i.sw.epilog.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb2.i, %if.end.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 36, %sw.bb2.i ], [ 38, %if.end.i.sw.epilog.i_crit_edge ]
  %mul3.i = mul i32 %channel, 50
  %add4.i = add i32 %.sink.i, %mul3.i
  %mul.i.i = mul i32 %val, 1000
  %add.i.i = add i32 %mul.i.i, 12500
  %div1.i.i = udiv i32 %add.i.i, 25000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i) #7
  %14 = ptrtoint ptr %regvals.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %regvals.i.i.i, align 4
  %div1.i.tr.i = trunc i32 %div1.i.i to i8
  %conv2.i.i.i = shl i8 %div1.i.tr.i, 4
  %arrayidx.i.i.i = getelementptr inbounds [4 x i8], ptr %regvals.i.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv2.i.i.i, ptr %arrayidx.i.i.i, align 1
  %shr.i.1.i.i = lshr i32 %div1.i.i, 4
  %conv2.i.1.i.i = trunc i32 %shr.i.1.i.i to i8
  store i8 %conv2.i.1.i.i, ptr %regvals.i.i.i, align 4
  %regmap.i.i.i = getelementptr inbounds %struct.ltc2992_state, ptr %6, i32 0, i32 4
  %16 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i.i, align 4
  %conv5.i.i.i = and i32 %add4.i, 254
  %call.i.i.i = call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef %conv5.i.i.i, ptr noundef nonnull %regvals.i.i.i, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i) #7
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i22 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i22, align 4
  %20 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %attr, label %sw.bb3.return_crit_edge [
    i32 2, label %sw.bb3.sw.epilog.i34_crit_edge
    i32 3, label %sw.bb1.i
  ]

sw.bb3.sw.epilog.i34_crit_edge:                   ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i34

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i34

sw.epilog.i34:                                    ; preds = %sw.bb1.i, %sw.bb3.sw.epilog.i34_crit_edge
  %.sink.i23 = phi i32 [ 26, %sw.bb1.i ], [ 28, %sw.bb3.sw.epilog.i34_crit_edge ]
  %mul2.i = mul i32 %channel, 50
  %add3.i = add i32 %.sink.i23, %mul2.i
  %arrayidx.i.i = getelementptr %struct.ltc2992_state, ptr %19, i32 0, i32 5, i32 %channel
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i.i24 = mul i32 %22, %val
  %add.i.i25 = add i32 %mul.i.i24, 6250
  %div1.i.i26 = udiv i32 %add.i.i25, 12500
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i21) #7
  %23 = ptrtoint ptr %regvals.i.i.i21 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %regvals.i.i.i21, align 4
  %div1.tr.i.i = trunc i32 %div1.i.i26 to i8
  %conv2.i.i.i27 = shl i8 %div1.tr.i.i, 4
  %arrayidx.i.i.i28 = getelementptr inbounds [4 x i8], ptr %regvals.i.i.i21, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.i.i.i28 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv2.i.i.i27, ptr %arrayidx.i.i.i28, align 1
  %shr.i.1.i.i29 = lshr i32 %div1.i.i26, 4
  %conv2.i.1.i.i30 = trunc i32 %shr.i.1.i.i29 to i8
  store i8 %conv2.i.1.i.i30, ptr %regvals.i.i.i21, align 4
  %regmap.i.i.i31 = getelementptr inbounds %struct.ltc2992_state, ptr %19, i32 0, i32 4
  %25 = ptrtoint ptr %regmap.i.i.i31 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i.i31, align 4
  %conv5.i.i.i32 = and i32 %add3.i, 254
  %call.i.i.i33 = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef %conv5.i.i.i32, ptr noundef nonnull %regvals.i.i.i21, i32 noundef 2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i21) #7
  br label %return

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i37 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %27 = ptrtoint ptr %driver_data.i.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i37, align 4
  %29 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %attr, label %sw.bb5.return_crit_edge [
    i32 18, label %sw.bb5.sw.epilog.i51_crit_edge
    i32 19, label %sw.bb1.i38
  ]

sw.bb5.sw.epilog.i51_crit_edge:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i51

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i38:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i51

sw.epilog.i51:                                    ; preds = %sw.bb1.i38, %sw.bb5.sw.epilog.i51_crit_edge
  %.sink.i39 = phi i32 [ 14, %sw.bb1.i38 ], [ 17, %sw.bb5.sw.epilog.i51_crit_edge ]
  %mul2.i40 = mul i32 %channel, 50
  %add3.i41 = add i32 %.sink.i39, %mul2.i40
  %conv.i.i = sext i32 %val to i64
  %arrayidx.i.i42 = getelementptr %struct.ltc2992_state, ptr %28, i32 0, i32 5, i32 %channel
  %30 = ptrtoint ptr %arrayidx.i.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i42, align 4
  %mul.i.i43 = mul i32 %31, 1000
  %call.i.i44 = tail call fastcc i64 @mul_u64_u32_div(i64 noundef %conv.i.i, i32 noundef %mul.i.i43, i32 noundef 312500000) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvals.i.i.i36) #7
  %32 = ptrtoint ptr %regvals.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %regvals.i.i.i36, align 4
  %conv2.i.i.i45 = trunc i64 %call.i.i44 to i8
  %arrayidx.i.i.i46 = getelementptr inbounds [4 x i8], ptr %regvals.i.i.i36, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx.i.i.i46 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv2.i.i.i45, ptr %arrayidx.i.i.i46, align 2
  %shr.i.15.i.i = lshr i64 %call.i.i44, 8
  %conv2.i.1.i.i47 = trunc i64 %shr.i.15.i.i to i8
  %arrayidx.i.1.i.i = getelementptr inbounds [4 x i8], ptr %regvals.i.i.i36, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv2.i.1.i.i47, ptr %arrayidx.i.1.i.i, align 1
  %shr.i.26.i.i = lshr i64 %call.i.i44, 16
  %conv2.i.2.i.i = trunc i64 %shr.i.26.i.i to i8
  store i8 %conv2.i.2.i.i, ptr %regvals.i.i.i36, align 4
  %regmap.i.i.i48 = getelementptr inbounds %struct.ltc2992_state, ptr %28, i32 0, i32 4
  %35 = ptrtoint ptr %regmap.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i.i.i48, align 4
  %conv5.i.i.i49 = and i32 %add3.i41, 255
  %call.i.i.i50 = call i32 @regmap_bulk_write(ptr noundef %36, i32 noundef %conv5.i.i.i49, ptr noundef nonnull %regvals.i.i.i36, i32 noundef 3) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvals.i.i.i36) #7
  br label %return

return:                                           ; preds = %sw.epilog.i51, %sw.bb5.return_crit_edge, %sw.epilog.i34, %sw.bb3.return_crit_edge, %sw.epilog.i, %if.end.i.return_crit_edge, %sw.epilog.i.i, %if.then.i.return_crit_edge, %sw.bb.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call.i.i, %sw.bb.i ], [ -95, %sw.bb.return_crit_edge ], [ %call.i.i.i, %sw.epilog.i ], [ -95, %if.end.i.return_crit_edge ], [ %call.i.i.i.i, %sw.epilog.i.i ], [ -95, %if.then.i.return_crit_edge ], [ %call.i.i.i33, %sw.epilog.i34 ], [ -95, %sw.bb3.return_crit_edge ], [ %call.i.i.i50, %sw.epilog.i51 ], [ -95, %sw.bb5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @mul_u64_u32_div(i64 noundef %a, i32 noundef %mul, i32 noundef %divisor) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %u.sroa.0.0.extract.shift = lshr i64 %a, 32
  %conv.i = and i64 %a, 4294967295
  %conv1.i = zext i32 %mul to i64
  %mul.i = mul nuw i64 %conv.i, %conv1.i
  %rl.sroa.0.0.extract.shift = lshr i64 %mul.i, 32
  %mul.i575 = mul nuw i64 %u.sroa.0.0.extract.shift, %conv1.i
  %add = add nuw i64 %rl.sroa.0.0.extract.shift, %mul.i575
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp171 = icmp ult i64 %add, 4294967296
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !87

if.then175:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rh.sroa.12.0.extract.trunc = trunc i64 %add to i32
  %rh.sroa.12.0.extract.trunc.frozen = freeze i32 %rh.sroa.12.0.extract.trunc
  %div179 = udiv i32 %rh.sroa.12.0.extract.trunc.frozen, %divisor
  %0 = mul i32 %div179, %divisor
  %rem177.decomposed = sub i32 %rh.sroa.12.0.extract.trunc.frozen, %0
  br label %if.else387

if.else181:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor, i64 %add) #11, !srcloc !88
  %asmresult.i577 = extractvalue { i64, i64 } %1, 0
  %asmresult1.i = extractvalue { i64, i64 } %1, 1
  %shr.i = lshr i64 %asmresult.i577, 32
  %conv.i578 = trunc i64 %shr.i to i32
  %rh.sroa.12.0.extract.trunc645 = trunc i64 %asmresult1.i to i32
  br label %if.else387

if.else387:                                       ; preds = %if.else181, %if.then175
  %rh.sroa.12.0 = phi i32 [ %div179, %if.then175 ], [ %rh.sroa.12.0.extract.trunc645, %if.else181 ]
  %__rem.0 = phi i32 [ %rem177.decomposed, %if.then175 ], [ %conv.i578, %if.else181 ]
  %rl.sroa.16.0.insert.ext682 = and i64 %mul.i, 4294967295
  %rl.sroa.0.0.insert.ext657 = zext i32 %__rem.0 to i64
  %rl.sroa.0.0.insert.shift658 = shl nuw i64 %rl.sroa.0.0.insert.ext657, 32
  %rl.sroa.0.0.insert.insert660 = or i64 %rl.sroa.0.0.insert.shift658, %rl.sroa.16.0.insert.ext682
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rl.sroa.0.0.insert.insert660)
  %cmp389 = icmp ult i64 %rl.sroa.0.0.insert.insert660, 4294967296
  br i1 %cmp389, label %if.then397, label %if.else403, !prof !87

if.then397:                                       ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #9
  %conv398 = trunc i64 %mul.i to i32
  %div401 = udiv i32 %conv398, %divisor
  br label %if.end407

if.else403:                                       ; preds = %if.else387
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %divisor, i64 %rl.sroa.0.0.insert.insert660) #11, !srcloc !88
  %asmresult1.i604 = extractvalue { i64, i64 } %2, 1
  %rl.sroa.16.0.extract.trunc694 = trunc i64 %asmresult1.i604 to i32
  br label %if.end407

if.end407:                                        ; preds = %if.else403, %if.then397
  %rl.sroa.16.0 = phi i32 [ %div401, %if.then397 ], [ %rl.sroa.16.0.extract.trunc694, %if.else403 ]
  %rl.sroa.16.0.insert.ext687 = zext i32 %rl.sroa.16.0 to i64
  %rl.sroa.0.0.insert.ext664 = zext i32 %rh.sroa.12.0 to i64
  %rl.sroa.0.0.insert.shift665 = shl nuw i64 %rl.sroa.0.0.insert.ext664, 32
  %rl.sroa.0.0.insert.insert667 = or i64 %rl.sroa.0.0.insert.shift665, %rl.sroa.16.0.insert.ext687
  ret i64 %rl.sroa.0.0.insert.insert667
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !31, !33, !34, !35, !36, !37, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_ltc2992__288_970_ltc2992_i2c_driver_init6, !1, !"__initcall__kmod_ltc2992__288_970_ltc2992_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ltc2992.c", i32 970, i32 1}
!2 = !{ptr @__exitcall_ltc2992_i2c_driver_exit, !1, !"__exitcall_ltc2992_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ltc2992.c", i32 972, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ltc2992.c", i32 973, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ltc2992.c", i32 974, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ltc2992.c", i32 963, i32 11}
!12 = !{ptr @ltc2992_i2c_driver, !13, !"ltc2992_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ltc2992.c", i32 961, i32 26}
!14 = !{ptr @ltc2992_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ltc2992.c", i32 931, i32 15}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ltc2992_regmap_config, !18, !"ltc2992_regmap_config", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ltc2992.c", i32 884, i32 35}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ltc2992.c", i32 901, i32 41}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/ltc2992.c", i32 912, i32 41}
!23 = !{ptr @ltc2992_config_gpio.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/ltc2992.c", i32 312, i32 2}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/ltc2992.c", i32 315, i32 60}
!28 = !{ptr @ltc2992_config_gpio.lock_key, !29, !"lock_key", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/ltc2992.c", i32 334, i32 8}
!30 = !{ptr @ltc2992_config_gpio.request_key, !29, !"request_key", i1 false, i1 false}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/ltc2992.c", i32 336, i32 3}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @ltc2992_config_gpio._entry, !32, !"_entry", i1 false, i1 false}
!38 = !{ptr @ltc2992_config_gpio._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/ltc2992.c", i32 184, i32 2}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/ltc2992.c", i32 184, i32 11}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ltc2992.c", i32 184, i32 20}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/ltc2992.c", i32 184, i32 29}
!47 = distinct !{null, !48, !"ltc2992_gpio_names", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ltc2992.c", i32 183, i32 20}
!49 = !{ptr @ltc2992_gpio_addr_map, !50, !"ltc2992_gpio_addr_map", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/ltc2992.c", i32 132, i32 39}
!51 = !{ptr @ltc2992_chip_info, !52, !"ltc2992_chip_info", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/ltc2992.c", i32 879, i32 37}
!53 = !{ptr @ltc2992_hwmon_ops, !54, !"ltc2992_hwmon_ops", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/ltc2992.c", i32 808, i32 31}
!55 = !{ptr @ltc2992_info, !56, !"ltc2992_info", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/ltc2992.c", i32 871, i32 41}
!57 = !{ptr @ltc2992_chip, !58, !"ltc2992_chip", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/ltc2992.c", i32 819, i32 40}
!59 = !{ptr @ltc2992_chip_config, !60, !"ltc2992_chip_config", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/ltc2992.c", i32 814, i32 18}
!61 = !{ptr @ltc2992_in, !62, !"ltc2992_in", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/ltc2992.c", i32 840, i32 40}
!63 = !{ptr @ltc2992_in_config, !64, !"ltc2992_in_config", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/ltc2992.c", i32 824, i32 18}
!65 = !{ptr @ltc2992_curr, !66, !"ltc2992_curr", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/ltc2992.c", i32 853, i32 40}
!67 = !{ptr @ltc2992_curr_config, !68, !"ltc2992_curr_config", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/ltc2992.c", i32 845, i32 18}
!69 = !{ptr @ltc2992_power, !70, !"ltc2992_power", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/ltc2992.c", i32 866, i32 40}
!71 = !{ptr @ltc2992_power_config, !72, !"ltc2992_power_config", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/ltc2992.c", i32 858, i32 18}
!73 = !{ptr @ltc2992_of_match, !74, !"ltc2992_of_match", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/ltc2992.c", i32 949, i32 34}
!75 = !{ptr @ltc2992_i2c_id, !76, !"ltc2992_i2c_id", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/ltc2992.c", i32 955, i32 35}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{!"auto-init"}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2148886465, i64 2148886745, i64 2148887079, i64 2148887413}
