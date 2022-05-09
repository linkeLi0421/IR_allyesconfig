; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/lm3630a_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/lm3630a_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.lm3630a_chip = type { ptr, %struct.delayed_work, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.pwm_state }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.lm3630a_platform_data = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.pwm_device = type { ptr, i32, i32, i32, ptr, ptr, %struct.pwm_args, %struct.pwm_state, %struct.pwm_state }
%struct.pwm_args = type { i64, i32 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }

@__initcall__kmod_lm3630a_bl__301_627_lm3630a_i2c_driver_init6 = internal global ptr @lm3630a_i2c_driver_init, section ".initcall6.init", align 4
@lm3630a_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm3630a_probe, ptr @lm3630a_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm3630a_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm3630a_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm3630a_i2c_driver_exit = internal global ptr @lm3630a_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [70 x i8] c"lm3630a_bl.description=Texas Instruments Backlight driver for LM3630A\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [56 x i8] c"lm3630a_bl.author=Daniel Jeong <gshark.jeong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [48 x i8] c"lm3630a_bl.author=LDD MLP <ldd-mlp@list.ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [51 x i8] c"lm3630a_bl.file=drivers/video/backlight/lm3630a_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [26 x i8] c"lm3630a_bl.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lm3630a_bl\00", [21 x i8] zeroinitializer }, align 32
@lm3630a_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm3630a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lm3630a_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm3630a_bl\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fail : i2c functionality check\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lm3630a_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/video/backlight/lm3630a_bl.c\00", [59 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry_ptr = internal global ptr @lm3630a_probe._entry, section ".printk_index", align 4
@lm3630a_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm3630a_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 80, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lm3630a_bl:512:(&lm3630a_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fail : allocate reg. map: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry_ptr.9 = internal global ptr @lm3630a_probe._entry.7, section ".printk_index", align 4
@lm3630a_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fail : parse node\0A\00", [45 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry_ptr.12 = internal global ptr @lm3630a_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 551, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fail : init chip\0A\00", [46 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry_ptr.16 = internal global ptr @lm3630a_probe._entry.14, section ".printk_index", align 4
@lm3630a_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 557, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"fail : backlight register.\0A\00", [36 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry_ptr.19 = internal global ptr @lm3630a_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3630a-pwm\00", [20 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 564, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fail : get pwm device\0A\00", [41 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry_ptr.23 = internal global ptr @lm3630a_probe._entry.21, section ".printk_index", align 4
@lm3630a_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 578, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"LM3630A backlight register OK.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lm3630a_probe._entry_ptr.27 = internal global ptr @lm3630a_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,linear-mapping-mode\00", [41 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"default-brightness\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-brightness\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-sources\00", [20 x i8] zeroinitializer }, align 32
@lm3630a_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 109, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c failed to access register\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lm3630a_chip_init\00", [46 x i8] zeroinitializer }, align 32
@lm3630a_chip_init._entry_ptr = internal global ptr @lm3630a_chip_init._entry, section ".printk_index", align 4
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3630a_leda\00", [19 x i8] zeroinitializer }, align 32
@lm3630a_bank_a_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @lm3630a_bank_a_update_status, ptr @lm3630a_bank_a_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm3630a_ledb\00", [19 x i8] zeroinitializer }, align 32
@lm3630a_bank_b_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 1, ptr @lm3630a_bank_b_update_status, ptr @lm3630a_bank_b_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@lm3630a_bank_a_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 215, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"i2c failed to access (%pe)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lm3630a_bank_a_update_status\00", [35 x i8] zeroinitializer }, align 32
@lm3630a_bank_a_update_status._entry_ptr = internal global ptr @lm3630a_bank_a_update_status._entry, section ".printk_index", align 4
@lm3630a_bank_a_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.40, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lm3630a_bank_a_get_brightness\00", [34 x i8] zeroinitializer }, align 32
@lm3630a_bank_a_get_brightness._entry_ptr = internal global ptr @lm3630a_bank_a_get_brightness._entry, section ".printk_index", align 4
@lm3630a_bank_b_update_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.41, ptr @.str.3, i32 290, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lm3630a_bank_b_update_status\00", [35 x i8] zeroinitializer }, align 32
@lm3630a_bank_b_update_status._entry_ptr = internal global ptr @lm3630a_bank_b_update_status._entry, section ".printk_index", align 4
@lm3630a_bank_b_get_brightness._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.42, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"lm3630a_bank_b_get_brightness\00", [34 x i8] zeroinitializer }, align 32
@lm3630a_bank_b_get_brightness._entry_ptr = internal global ptr @lm3630a_bank_b_get_brightness._entry, section ".printk_index", align 4
@lm3630a_intr_config.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&pchip->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@lm3630a_intr_config.__key.44 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&pchip->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lm3630a-irqthd\00", [17 x i8] zeroinitializer }, align 32
@lm3630a_intr_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"create irq thread fail\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lm3630a_intr_config\00", [44 x i8] zeroinitializer }, align 32
@lm3630a_intr_config._entry_ptr = internal global ptr @lm3630a_intr_config._entry, section ".printk_index", align 4
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm3630a_irq\00", [20 x i8] zeroinitializer }, align 32
@lm3630a_intr_config._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.49, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"request threaded irq fail\0A\00", [37 x i8] zeroinitializer }, align 32
@lm3630a_intr_config._entry_ptr.53 = internal global ptr @lm3630a_intr_config._entry.51, section ".printk_index", align 4
@lm3630a_delayed_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.3, i32 124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"i2c failed to access REG_INT_STATUS Register\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lm3630a_delayed_func\00", [43 x i8] zeroinitializer }, align 32
@lm3630a_delayed_func._entry_ptr = internal global ptr @lm3630a_delayed_func._entry, section ".printk_index", align 4
@lm3630a_delayed_func._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 128, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"REG_INT_STATUS Register is 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@lm3630a_delayed_func._entry_ptr.58 = internal global ptr @lm3630a_delayed_func._entry.56, section ".printk_index", align 4
@lm3630a_isr_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.59, ptr @.str.3, i32 141, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm3630a_isr_func\00", [47 x i8] zeroinitializer }, align 32
@lm3630a_isr_func._entry_ptr = internal global ptr @lm3630a_isr_func._entry, section ".printk_index", align 4
@lm3630a_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.60, ptr @.str.3, i32 589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lm3630a_remove\00", [17 x i8] zeroinitializer }, align 32
@lm3630a_remove._entry_ptr = internal global ptr @lm3630a_remove._entry, section ".printk_index", align 4
@lm3630a_remove._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.60, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lm3630a_remove._entry_ptr.62 = internal global ptr @lm3630a_remove._entry.61, section ".printk_index", align 4
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"lm3630a_i2c_driver\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 617, i32 26 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 619, i32 14 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"lm3630a_match_table\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 610, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant [11 x i8] c"lm3630a_id\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 603, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 502, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"lm3630a_regmap\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 370, i32 35 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 512, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 515, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 535, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 541, i32 61 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 551, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 557, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 562, i32 42 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 564, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 578, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 411, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 428, i32 9 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 449, i32 42 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 457, i32 39 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 466, i32 39 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 382, i32 48 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 109, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 346, i32 51 }
@___asan_gen_.177 = private unnamed_addr constant [19 x i8] c"lm3630a_bank_a_ops\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 255, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 359, i32 51 }
@___asan_gen_.183 = private unnamed_addr constant [19 x i8] c"lm3630a_bank_b_ops\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 330, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 215, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 251, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 290, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 326, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 155, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 156, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 158, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 163, i32 44 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 164, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 123, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 128, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 141, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 589, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.277 = private constant [40 x i8] c"../drivers/video/backlight/lm3630a_bl.c\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.277, i32 593, i32 3 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_lm3630a_i2c_driver_exit, ptr @__initcall__kmod_lm3630a_bl__301_627_lm3630a_i2c_driver_init6, ptr @lm3630a_bank_a_get_brightness._entry, ptr @lm3630a_bank_a_get_brightness._entry_ptr, ptr @lm3630a_bank_a_update_status._entry, ptr @lm3630a_bank_a_update_status._entry_ptr, ptr @lm3630a_bank_b_get_brightness._entry, ptr @lm3630a_bank_b_get_brightness._entry_ptr, ptr @lm3630a_bank_b_update_status._entry, ptr @lm3630a_bank_b_update_status._entry_ptr, ptr @lm3630a_chip_init._entry, ptr @lm3630a_chip_init._entry_ptr, ptr @lm3630a_delayed_func._entry, ptr @lm3630a_delayed_func._entry.56, ptr @lm3630a_delayed_func._entry_ptr, ptr @lm3630a_delayed_func._entry_ptr.58, ptr @lm3630a_i2c_driver_exit, ptr @lm3630a_intr_config._entry, ptr @lm3630a_intr_config._entry.51, ptr @lm3630a_intr_config._entry_ptr, ptr @lm3630a_intr_config._entry_ptr.53, ptr @lm3630a_isr_func._entry, ptr @lm3630a_isr_func._entry_ptr, ptr @lm3630a_probe._entry, ptr @lm3630a_probe._entry.10, ptr @lm3630a_probe._entry.14, ptr @lm3630a_probe._entry.17, ptr @lm3630a_probe._entry.21, ptr @lm3630a_probe._entry.24, ptr @lm3630a_probe._entry.7, ptr @lm3630a_probe._entry_ptr, ptr @lm3630a_probe._entry_ptr.12, ptr @lm3630a_probe._entry_ptr.16, ptr @lm3630a_probe._entry_ptr.19, ptr @lm3630a_probe._entry_ptr.23, ptr @lm3630a_probe._entry_ptr.27, ptr @lm3630a_probe._entry_ptr.9, ptr @lm3630a_remove._entry, ptr @lm3630a_remove._entry.61, ptr @lm3630a_remove._entry_ptr, ptr @lm3630a_remove._entry_ptr.62, ptr @lm3630a_i2c_driver, ptr @.str, ptr @lm3630a_match_table, ptr @lm3630a_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lm3630a_probe._key, ptr @lm3630a_regmap, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @lm3630a_bank_a_ops, ptr @.str.37, ptr @lm3630a_bank_b_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @lm3630a_intr_config.__key, ptr @.str.43, ptr @lm3630a_intr_config.__key.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [72 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_bank_a_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_bank_b_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_bank_a_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_bank_a_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_bank_b_update_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_bank_b_get_brightness._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_intr_config.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_intr_config.__key.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_intr_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_intr_config._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_delayed_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_delayed_func._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_isr_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3630a_remove._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm3630a_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm3630a_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lm3630a_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %props.i = alloca %struct.backlight_properties, align 4
  %sources.i.i.i = alloca [2 x i32], align 4
  %label.i.i = alloca ptr, align 4
  %bank.i.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #5
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 160, i32 noundef 3520) #5
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 8
  %call10 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm3630a_regmap, ptr noundef nonnull @lm3630a_probe._key, ptr noundef nonnull @.str.6) #5
  %regmap = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call10, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end20

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %10) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then21, label %if.end20.if.end35_crit_edge

if.end20.if.end35_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then21:                                        ; preds = %if.end20
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  %call.i146 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 40, i32 noundef 3520) #5
  %cmp24 = icmp eq ptr %call.i146, null
  br i1 %cmp24, label %if.then21.cleanup_crit_edge, label %if.end26

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end26:                                         ; preds = %if.then21
  %leda_max_brt = getelementptr inbounds %struct.lm3630a_platform_data, ptr %call.i146, i32 0, i32 2
  %14 = ptrtoint ptr %leda_max_brt to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 255, ptr %leda_max_brt, align 4
  %ledb_max_brt = getelementptr inbounds %struct.lm3630a_platform_data, ptr %call.i146, i32 0, i32 6
  %15 = ptrtoint ptr %ledb_max_brt to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 255, ptr %ledb_max_brt, align 4
  %leda_init_brt = getelementptr inbounds %struct.lm3630a_platform_data, ptr %call.i146, i32 0, i32 1
  %16 = ptrtoint ptr %leda_init_brt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 255, ptr %leda_init_brt, align 4
  %ledb_init_brt = getelementptr inbounds %struct.lm3630a_platform_data, ptr %call.i146, i32 0, i32 5
  %17 = ptrtoint ptr %ledb_init_brt to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 255, ptr %ledb_init_brt, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 8
  %call.i147 = tail call ptr @device_get_next_child_node(ptr noundef %19, ptr noundef null) #5
  %tobool.not26.i = icmp eq ptr %call.i147, null
  br i1 %tobool.not26.i, label %if.end26.do.end32_crit_edge, label %for.body.lr.ph.i

if.end26.do.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

for.body.lr.ph.i:                                 ; preds = %if.end26
  %20 = getelementptr inbounds [2 x i32], ptr %sources.i.i.i, i32 0, i32 1
  %leda_ctrl.i.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %call.i146, i32 0, i32 3
  %ledb_ctrl30.i.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %call.i146, i32 0, i32 7
  %ledb_label.i.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %call.i146, i32 0, i32 4
  %arrayidx.i.i.i.1 = getelementptr inbounds [2 x i32], ptr %sources.i.i.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %node.028.i = phi ptr [ %call.i147, %for.body.lr.ph.i ], [ %call4.i, %for.inc.i.for.body.i_crit_edge ]
  %seen_led_sources.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %or.i.i, %for.inc.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %label.i.i) #5
  %21 = ptrtoint ptr %label.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %label.i.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bank.i.i) #5
  %22 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %bank.i.i, align 4, !annotation !152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #5
  %23 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i.i, align 4, !annotation !152
  %call.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.028.i, ptr noundef nonnull @.str.28, ptr noundef nonnull %bank.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %for.body.i.if.then.i_crit_edge

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end.i.i:                                       ; preds = %for.body.i
  %24 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch.i.i = icmp ult i32 %25, 2
  br i1 %switch.i.i, label %if.end3.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  %shl.i.i = shl nuw nsw i32 1, %25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sources.i.i.i) #5
  %26 = ptrtoint ptr %sources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %sources.i.i.i, align 4, !annotation !152
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %20, align 4, !annotation !152
  %call.i.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.028.i, ptr noundef nonnull @.str.33, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end3.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge, label %if.else.i.i.i

if.end3.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_parse_led_sources.exit.thread94.i.i

if.else.i.i.i:                                    ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i.i)
  %cmp1.i.i.i = icmp ugt i32 %call.i.i.i.i, 2
  br i1 %cmp1.i.i.i, label %if.else.i.i.i.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge, label %if.end3.i.i.i

if.else.i.i.i.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_parse_led_sources.exit.thread.i.i

if.end3.i.i.i:                                    ; preds = %if.else.i.i.i
  %call4.i.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.028.i, ptr noundef nonnull @.str.33, ptr noundef nonnull %sources.i.i.i, i32 noundef %call.i.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.cond.preheader.i.i.i, label %if.end3.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge

if.end3.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge: ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_parse_led_sources.exit.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp728.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %cmp728.not.i.i.i, label %for.cond.preheader.i.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge, label %for.body.i.i.i

for.cond.preheader.i.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_parse_led_sources.exit.thread94.i.i

for.body.i.i.i:                                   ; preds = %for.cond.preheader.i.i.i
  %28 = ptrtoint ptr %sources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sources.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %switch.i.i.i = icmp ult i32 %29, 2
  br i1 %switch.i.i.i, label %if.end12.i.i.i, label %for.body.i.i.i.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge

for.body.i.i.i.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_parse_led_sources.exit.thread.i.i

if.end12.i.i.i:                                   ; preds = %for.body.i.i.i
  %shl.i.i.i = shl nuw nsw i32 1, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i.i)
  %exitcond.not.i.i.i = icmp eq i32 %call.i.i.i.i, 1
  br i1 %exitcond.not.i.i.i, label %if.end12.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge, label %for.body.i.i.i.1

if.end12.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_parse_led_sources.exit.i.i

for.body.i.i.i.1:                                 ; preds = %if.end12.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %switch.i.i.i.1 = icmp ult i32 %31, 2
  br i1 %switch.i.i.i.1, label %if.end12.i.i.i.1, label %for.body.i.i.i.1.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge

for.body.i.i.i.1.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_parse_led_sources.exit.thread.i.i

if.end12.i.i.i.1:                                 ; preds = %for.body.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #7
  %shl.i.i.i.1 = shl nuw nsw i32 1, %31
  %or.i.i.i.1 = or i32 %shl.i.i.i.1, %shl.i.i.i
  br label %lm3630a_parse_led_sources.exit.i.i

lm3630a_parse_led_sources.exit.thread.i.i:        ; preds = %for.body.i.i.i.1.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge, %for.body.i.i.i.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge, %if.else.i.i.i.lm3630a_parse_led_sources.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sources.i.i.i) #5
  br label %if.then.i

lm3630a_parse_led_sources.exit.thread94.i.i:      ; preds = %for.cond.preheader.i.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge, %if.end3.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ 0, %for.cond.preheader.i.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge ], [ %shl.i.i, %if.end3.i.i.lm3630a_parse_led_sources.exit.thread94.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sources.i.i.i) #5
  br label %if.end7.i.i

lm3630a_parse_led_sources.exit.i.i:               ; preds = %if.end12.i.i.i.1, %if.end12.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge, %if.end3.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call4.i.i.i, %if.end3.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge ], [ %shl.i.i.i, %if.end12.i.i.i.lm3630a_parse_led_sources.exit.i.i_crit_edge ], [ %or.i.i.i.1, %if.end12.i.i.i.1 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sources.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i.i)
  %cmp5.i.i = icmp slt i32 %retval.0.i.i.i, 0
  br i1 %cmp5.i.i, label %lm3630a_parse_led_sources.exit.i.i.if.then.i_crit_edge, label %lm3630a_parse_led_sources.exit.i.i.if.end7.i.i_crit_edge

lm3630a_parse_led_sources.exit.i.i.if.end7.i.i_crit_edge: ; preds = %lm3630a_parse_led_sources.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

lm3630a_parse_led_sources.exit.i.i.if.then.i_crit_edge: ; preds = %lm3630a_parse_led_sources.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end7.i.i:                                      ; preds = %lm3630a_parse_led_sources.exit.i.i.if.end7.i.i_crit_edge, %lm3630a_parse_led_sources.exit.thread94.i.i
  %retval.0.i97.i.i = phi i32 [ %retval.0.i.ph.i.i, %lm3630a_parse_led_sources.exit.thread94.i.i ], [ %retval.0.i.i.i, %lm3630a_parse_led_sources.exit.i.i.if.end7.i.i_crit_edge ]
  %and.i.i = and i32 %retval.0.i97.i.i, %seen_led_sources.027.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool8.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end7.i.i.if.then.i_crit_edge

if.end7.i.i.if.then.i_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end10.i.i:                                     ; preds = %if.end7.i.i
  %or.i.i = or i32 %retval.0.i97.i.i, %seen_led_sources.027.i
  %call.i88.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %node.028.i, ptr noundef nonnull @.str.29) #5
  %32 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool12.not.i.i = icmp eq i32 %33, 0
  br i1 %tobool12.not.i.i, label %if.else.i.i, label %if.then13.i.i

if.then13.i.i:                                    ; preds = %if.end10.i.i
  %34 = and i32 %retval.0.i97.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %.not.i.i = icmp eq i32 %34, 2
  br i1 %.not.i.i, label %if.end19.i.i, label %if.then13.i.i.if.then.i_crit_edge

if.then13.i.i.if.then.i_crit_edge:                ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end19.i.i:                                     ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond.i.i = select i1 %call.i88.i.i, i32 10, i32 2
  br label %if.end32.sink.split.i.i

if.else.i.i:                                      ; preds = %if.end10.i.i
  %and21.i.i = and i32 %retval.0.i97.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i.i)
  %tobool22.not.i.i = icmp eq i32 %and21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.else.i.i.if.then.i_crit_edge, label %if.end24.i.i

if.else.i.i.if.then.i_crit_edge:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.end24.i.i:                                     ; preds = %if.else.i.i
  %cond26.i.i = select i1 %call.i88.i.i, i32 20, i32 4
  %35 = ptrtoint ptr %leda_ctrl.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond26.i.i, ptr %leda_ctrl.i.i, align 4
  %and27.i.i = and i32 %retval.0.i97.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i.i)
  %tobool28.not.i.i = icmp eq i32 %and27.i.i, 0
  br i1 %tobool28.not.i.i, label %if.end24.i.i.if.end32.i.i_crit_edge, label %if.end24.i.i.if.end32.sink.split.i.i_crit_edge

if.end24.i.i.if.end32.sink.split.i.i_crit_edge:   ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.sink.split.i.i

if.end24.i.i.if.end32.i.i_crit_edge:              ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end32.i.i

if.end32.sink.split.i.i:                          ; preds = %if.end24.i.i.if.end32.sink.split.i.i_crit_edge, %if.end19.i.i
  %.sink.i.i = phi i32 [ %cond.i.i, %if.end19.i.i ], [ 1, %if.end24.i.i.if.end32.sink.split.i.i_crit_edge ]
  %36 = ptrtoint ptr %ledb_ctrl30.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink.i.i, ptr %ledb_ctrl30.i.i, align 4
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end32.sink.split.i.i, %if.end24.i.i.if.end32.i.i_crit_edge
  %call33.i.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %node.028.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %label.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %if.then35.i.i, label %if.end32.i.i.if.end40.i.i_crit_edge

if.end32.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i.i

if.then35.i.i:                                    ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool36.not.i.i = icmp eq i32 %38, 0
  %39 = ptrtoint ptr %label.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %label.i.i, align 4
  %ledb_label.sink.i.i = select i1 %tobool36.not.i.i, ptr %call.i146, ptr %ledb_label.i.i
  %41 = ptrtoint ptr %ledb_label.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %ledb_label.sink.i.i, align 4
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then35.i.i, %if.end32.i.i.if.end40.i.i_crit_edge
  %call.i89.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.028.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %val.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i.i)
  %tobool42.not.i.i = icmp eq i32 %call.i89.i.i, 0
  br i1 %tobool42.not.i.i, label %if.then43.i.i, label %if.end40.i.i.if.end48.i.i_crit_edge

if.end40.i.i.if.end48.i.i_crit_edge:              ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48.i.i

if.then43.i.i:                                    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool44.not.i.i = icmp eq i32 %43, 0
  %44 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val.i.i, align 4
  %ledb_init_brt.sink.i.i = select i1 %tobool44.not.i.i, ptr %leda_init_brt, ptr %ledb_init_brt
  %46 = ptrtoint ptr %ledb_init_brt.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ledb_init_brt.sink.i.i, align 4
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then43.i.i, %if.end40.i.i.if.end48.i.i_crit_edge
  %call.i90.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %node.028.i, ptr noundef nonnull @.str.32, ptr noundef nonnull %val.i.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i90.i.i)
  %tobool50.not.i.i = icmp eq i32 %call.i90.i.i, 0
  br i1 %tobool50.not.i.i, label %if.then51.i.i, label %if.end48.i.i.for.inc.i_crit_edge

if.end48.i.i.for.inc.i_crit_edge:                 ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then51.i.i:                                    ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %bank.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool52.not.i.i = icmp eq i32 %48, 0
  %49 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val.i.i, align 4
  %leda_max_brt.i.ledb_max_brt.i.i = select i1 %tobool52.not.i.i, ptr %leda_max_brt, ptr %ledb_max_brt
  %51 = ptrtoint ptr %leda_max_brt.i.ledb_max_brt.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %leda_max_brt.i.ledb_max_brt.i.i, align 4
  br label %for.inc.i

if.then.i:                                        ; preds = %if.else.i.i.if.then.i_crit_edge, %if.then13.i.i.if.then.i_crit_edge, %if.end7.i.i.if.then.i_crit_edge, %lm3630a_parse_led_sources.exit.i.i.if.then.i_crit_edge, %lm3630a_parse_led_sources.exit.thread.i.i, %if.end.i.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -22, %lm3630a_parse_led_sources.exit.thread.i.i ], [ %call.i.i.i, %for.body.i.if.then.i_crit_edge ], [ -22, %if.end.i.i.if.then.i_crit_edge ], [ %retval.0.i.i.i, %lm3630a_parse_led_sources.exit.i.i.if.then.i_crit_edge ], [ -22, %if.end7.i.i.if.then.i_crit_edge ], [ -22, %if.then13.i.i.if.then.i_crit_edge ], [ -22, %if.else.i.i.if.then.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i.i) #5
  call void @fwnode_handle_put(ptr noundef nonnull %node.028.i) #5
  br label %do.end32

for.inc.i:                                        ; preds = %if.then51.i.i, %if.end48.i.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bank.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %label.i.i) #5
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i, align 8
  %call4.i = call ptr @device_get_next_child_node(ptr noundef %53, ptr noundef nonnull %node.028.i) #5
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %for.inc.i.if.end35_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end35_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

do.end32:                                         ; preds = %if.then.i, %if.end26.do.end32_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %if.end26.do.end32_crit_edge ], [ %retval.0.i.ph.i, %if.then.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end35:                                         ; preds = %for.inc.i.if.end35_crit_edge, %if.end20.if.end35_crit_edge
  %pdata.0 = phi ptr [ %1, %if.end20.if.end35_crit_edge ], [ %call.i146, %for.inc.i.if.end35_crit_edge ]
  %pdata36 = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 4
  %54 = ptrtoint ptr %pdata36 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %pdata.0, ptr %pdata36, align 8
  %call38 = call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 7) #5
  %enable_gpio = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 7
  %55 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call38, ptr %enable_gpio, align 4
  %cmp.i148 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then41, label %if.end44

if.then41:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %call38 to i32
  br label %cleanup

if.end44:                                         ; preds = %if.end35
  %57 = ptrtoint ptr %pdata36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata36, align 8
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %59 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap, align 8
  %call.i.i149 = call i32 @regmap_write(ptr noundef %60, i32 noundef 80, i32 noundef 3) #5
  %pwm_ctrl.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %58, i32 0, i32 9
  %61 = ptrtoint ptr %pwm_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pwm_ctrl.i, align 4
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 8
  %call.i.i.i150 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 1, i32 noundef 7, i32 noundef %62, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or.i = or i32 %call.i.i.i150, %call.i.i149
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 8
  %call.i42.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 2, i32 noundef 56) #5
  %or4.i = or i32 %or.i, %call.i42.i
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 8
  %call.i.i44.i = call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 5, i32 noundef 31, i32 noundef 31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or6.i = or i32 %or4.i, %call.i.i44.i
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 8
  %call.i46.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 6, i32 noundef 31) #5
  %or8.i = or i32 %or6.i, %call.i46.i
  %leda_ctrl.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %58, i32 0, i32 3
  %71 = ptrtoint ptr %leda_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %leda_ctrl.i, align 4
  %73 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap, align 8
  %call.i.i48.i = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 0, i32 noundef 20, i32 noundef %72, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or10.i = or i32 %or8.i, %call.i.i48.i
  %ledb_ctrl.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %58, i32 0, i32 7
  %75 = ptrtoint ptr %ledb_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ledb_ctrl.i, align 4
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 8
  %call.i.i50.i = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 0, i32 noundef 11, i32 noundef %76, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %or12.i = or i32 %or10.i, %call.i.i50.i
  call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %leda_init_brt.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %58, i32 0, i32 1
  %79 = ptrtoint ptr %leda_init_brt.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %leda_init_brt.i, align 4
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 8
  %call.i52.i = call i32 @regmap_write(ptr noundef %82, i32 noundef 3, i32 noundef %80) #5
  %or14.i = or i32 %or12.i, %call.i52.i
  %ledb_init_brt.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %58, i32 0, i32 5
  %83 = ptrtoint ptr %ledb_init_brt.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ledb_init_brt.i, align 4
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 8
  %call.i54.i = call i32 @regmap_write(ptr noundef %86, i32 noundef 4, i32 noundef %84) #5
  %or16.i = or i32 %or14.i, %call.i54.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16.i)
  %cmp.i151 = icmp slt i32 %or16.i, 0
  br i1 %cmp.i151, label %do.end50, label %if.end52

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.34) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %89 = ptrtoint ptr %pdata36 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %pdata36, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props.i) #5
  %91 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 1
  %92 = getelementptr inbounds %struct.backlight_properties, ptr %props.i, i32 0, i32 4
  %93 = call ptr @memset(ptr %props.i, i32 255, i32 28)
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 1, ptr %92, align 4
  %leda_ctrl.i153 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %90, i32 0, i32 3
  %95 = ptrtoint ptr %leda_ctrl.i153 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %leda_ctrl.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp.not.i = icmp eq i32 %96, 0
  br i1 %cmp.not.i, label %if.end52.if.end9.i_crit_edge, label %if.then.i157

if.end52.if.end9.i_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i157:                                     ; preds = %if.end52
  %leda_init_brt.i154 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %90, i32 0, i32 1
  %97 = ptrtoint ptr %leda_init_brt.i154 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %leda_init_brt.i154, align 4
  %99 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %props.i, align 4
  %leda_max_brt.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %90, i32 0, i32 2
  %100 = ptrtoint ptr %leda_max_brt.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %leda_max_brt.i, align 4
  %102 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %91, align 4
  %103 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %90, align 4
  %tobool.not.i155 = icmp eq ptr %104, null
  %spec.select.i = select i1 %tobool.not.i155, ptr @.str.36, ptr %104
  %105 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %call.i, align 8
  %call.i156 = call ptr @devm_backlight_device_register(ptr noundef %106, ptr noundef nonnull %spec.select.i, ptr noundef %106, ptr noundef %call.i, ptr noundef nonnull @lm3630a_bank_a_ops, ptr noundef nonnull %props.i) #5
  %bleda.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 5
  %107 = ptrtoint ptr %bleda.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call.i156, ptr %bleda.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i156, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i157.lm3630a_backlight_register.exit_crit_edge, label %if.then.i157.if.end9.i_crit_edge

if.then.i157.if.end9.i_crit_edge:                 ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9.i

if.then.i157.lm3630a_backlight_register.exit_crit_edge: ; preds = %if.then.i157
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_backlight_register.exit

if.end9.i:                                        ; preds = %if.then.i157.if.end9.i_crit_edge, %if.end52.if.end9.i_crit_edge
  %ledb_ctrl.i158 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %90, i32 0, i32 7
  %108 = ptrtoint ptr %ledb_ctrl.i158 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %ledb_ctrl.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %switch.i = icmp ult i32 %109, 2
  br i1 %switch.i, label %if.end9.i.lm3630a_backlight_register.exit.thread_crit_edge, label %if.then13.i

if.end9.i.lm3630a_backlight_register.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_backlight_register.exit.thread

if.then13.i:                                      ; preds = %if.end9.i
  %ledb_init_brt.i159 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %90, i32 0, i32 5
  %110 = ptrtoint ptr %ledb_init_brt.i159 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ledb_init_brt.i159, align 4
  %112 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %props.i, align 4
  %ledb_max_brt.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %90, i32 0, i32 6
  %113 = ptrtoint ptr %ledb_max_brt.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ledb_max_brt.i, align 4
  %115 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %91, align 4
  %ledb_label.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %90, i32 0, i32 4
  %116 = ptrtoint ptr %ledb_label.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ledb_label.i, align 4
  %tobool16.not.i = icmp eq ptr %117, null
  %spec.select59.i = select i1 %tobool16.not.i, ptr @.str.37, ptr %117
  %118 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call.i, align 8
  %call24.i = call ptr @devm_backlight_device_register(ptr noundef %119, ptr noundef nonnull %spec.select59.i, ptr noundef %119, ptr noundef %call.i, ptr noundef nonnull @lm3630a_bank_b_ops, ptr noundef nonnull %props.i) #5
  %bledb.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 6
  %120 = ptrtoint ptr %bledb.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call24.i, ptr %bledb.i, align 8
  %cmp.i60.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i60.i, label %if.then13.i.lm3630a_backlight_register.exit_crit_edge, label %if.then13.i.lm3630a_backlight_register.exit.thread_crit_edge

if.then13.i.lm3630a_backlight_register.exit.thread_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_backlight_register.exit.thread

if.then13.i.lm3630a_backlight_register.exit_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lm3630a_backlight_register.exit

lm3630a_backlight_register.exit.thread:           ; preds = %if.then13.i.lm3630a_backlight_register.exit.thread_crit_edge, %if.end9.i.lm3630a_backlight_register.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #5
  br label %if.end60

lm3630a_backlight_register.exit:                  ; preds = %if.then13.i.lm3630a_backlight_register.exit_crit_edge, %if.then.i157.lm3630a_backlight_register.exit_crit_edge
  %retval.0.i160.in = phi ptr [ %call24.i, %if.then13.i.lm3630a_backlight_register.exit_crit_edge ], [ %call.i156, %if.then.i157.lm3630a_backlight_register.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props.i) #5
  %cmp54 = icmp slt ptr %retval.0.i160.in, null
  br i1 %cmp54, label %do.end58, label %lm3630a_backlight_register.exit.if.end60_crit_edge

lm3630a_backlight_register.exit.if.end60_crit_edge: ; preds = %lm3630a_backlight_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

do.end58:                                         ; preds = %lm3630a_backlight_register.exit
  call void @__sanitizer_cov_trace_pc() #7
  %retval.0.i160 = ptrtoint ptr %retval.0.i160.in to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup

if.end60:                                         ; preds = %lm3630a_backlight_register.exit.if.end60_crit_edge, %lm3630a_backlight_register.exit.thread
  %pwm_ctrl = getelementptr inbounds %struct.lm3630a_platform_data, ptr %pdata.0, i32 0, i32 9
  %121 = ptrtoint ptr %pwm_ctrl to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %pwm_ctrl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp61.not = icmp eq i32 %122, 0
  br i1 %cmp61.not, label %if.end60.if.end76_crit_edge, label %if.then62

if.end60.if.end76_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

if.then62:                                        ; preds = %if.end60
  %123 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i, align 8
  %call64 = call ptr @devm_pwm_get(ptr noundef %124, ptr noundef nonnull @.str.20) #5
  %pwmd = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 9
  %125 = ptrtoint ptr %pwmd to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call64, ptr %pwmd, align 4
  %cmp.i161 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %do.end70, label %if.end74

do.end70:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  %126 = ptrtoint ptr %pwmd to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %pwmd, align 4
  %128 = ptrtoint ptr %127 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #7
  %pwmd_state = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 10
  %state1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call64, i32 0, i32 7
  %129 = call ptr @memcpy(ptr %pwmd_state, ptr %state1.i.i, i32 24)
  %args1.i.i = getelementptr inbounds %struct.pwm_device, ptr %call64, i32 0, i32 6
  %130 = ptrtoint ptr %args1.i.i to i32
  call void @__asan_load8_noabort(i32 %130)
  %args.sroa.0.0.copyload8.i = load i64, ptr %args1.i.i, align 8
  %args.sroa.5.0.args1.i.sroa_idx.i = getelementptr inbounds %struct.pwm_device, ptr %call64, i32 0, i32 6, i32 1
  %131 = ptrtoint ptr %args.sroa.5.0.args1.i.sroa_idx.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %args.sroa.5.0.copyload9.i = load i32, ptr %args.sroa.5.0.args1.i.sroa_idx.i, align 8
  %132 = ptrtoint ptr %pwmd_state to i32
  call void @__asan_store8_noabort(i32 %132)
  store i64 %args.sroa.0.0.copyload8.i, ptr %pwmd_state, align 8
  %polarity2.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 10, i32 2
  %133 = ptrtoint ptr %polarity2.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %args.sroa.5.0.copyload9.i, ptr %polarity2.i, align 8
  %duty_cycle.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 10, i32 1
  %134 = ptrtoint ptr %duty_cycle.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 0, ptr %duty_cycle.i, align 8
  %usage_power.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 10, i32 4
  %135 = ptrtoint ptr %usage_power.i to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %usage_power.i, align 1
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %if.end60.if.end76_crit_edge
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %136 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %irq, align 4
  %irq77 = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 2
  %138 = ptrtoint ptr %irq77 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %irq77, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool79.not = icmp eq i32 %137, 0
  br i1 %tobool79.not, label %if.end76.do.end88_crit_edge, label %if.then80

if.end76.do.end88_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

if.then80:                                        ; preds = %if.end76
  %139 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap, align 8
  %call.i.i163 = call i32 @regmap_write(ptr noundef %140, i32 noundef 10, i32 noundef 135) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i163)
  %cmp.i164 = icmp slt i32 %call.i.i163, 0
  br i1 %cmp.i164, label %if.then80.cleanup_crit_edge, label %do.body1.i

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body1.i:                                       ; preds = %if.then80
  %work.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 1
  call void @__init_work(ptr noundef %work.i, i32 noundef 0) #5
  %141 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 1, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @lm3630a_intr_config.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry9.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 1, i32 0, i32 1
  %142 = ptrtoint ptr %entry9.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store volatile ptr %entry9.i, ptr %entry9.i, align 4
  %prev.i.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 1, i32 0, i32 1, i32 1
  %143 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %entry9.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %144 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr @lm3630a_delayed_func, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 1, i32 1
  call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.45, ptr noundef nonnull @lm3630a_intr_config.__key.44) #5
  %call18.i = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.46, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.47) #5
  %irqthread.i = getelementptr inbounds %struct.lm3630a_chip, ptr %call.i, i32 0, i32 3
  %145 = ptrtoint ptr %irqthread.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %call18.i, ptr %irqthread.i, align 4
  %tobool.not.i165 = icmp eq ptr %call18.i, null
  br i1 %tobool.not.i165, label %do.end23.i, label %if.end24.i

do.end23.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.48) #8
  br label %cleanup

if.end24.i:                                       ; preds = %do.body1.i
  %148 = ptrtoint ptr %irq77 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %irq77, align 8
  %call25.i = call i32 @request_threaded_irq(i32 noundef %149, ptr noundef null, ptr noundef nonnull @lm3630a_isr_func, i32 noundef 8194, ptr noundef nonnull @.str.50, ptr noundef %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.do.end88_crit_edge, label %do.end30.i

if.end24.i.do.end88_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end88

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %150 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %call.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.52) #8
  %152 = ptrtoint ptr %irqthread.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %irqthread.i, align 4
  call void @destroy_workqueue(ptr noundef %153) #5
  br label %cleanup

do.end88:                                         ; preds = %if.end24.i.do.end88_crit_edge, %if.end76.do.end88_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.25) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %do.end30.i, %do.end23.i, %if.then80.cleanup_crit_edge, %do.end70, %do.end58, %do.end50, %if.then41, %do.end32, %if.then21.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %10, %if.then13 ], [ %retval.0.i.ph, %do.end32 ], [ %56, %if.then41 ], [ %or16.i, %do.end50 ], [ %retval.0.i160, %do.end58 ], [ %128, %do.end70 ], [ 0, %do.end88 ], [ -95, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.then21.cleanup_crit_edge ], [ %call.i.i163, %if.then80.cleanup_crit_edge ], [ -12, %do.end23.i ], [ -12, %do.end30.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 3, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 8
  %call.i25 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp3 = icmp slt i32 %call.i25, 0
  br i1 %cmp3, label %do.end7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %if.end.if.end9_crit_edge
  %irq = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end9.if.end14_crit_edge, label %if.then10

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call ptr @free_irq(i32 noundef %11, ptr noundef %1) #5
  %irqthread = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %irqthread to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irqthread, align 4
  tail call void @flush_workqueue(ptr noundef %13) #5
  %14 = ptrtoint ptr %irqthread to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irqthread, align 4
  tail call void @destroy_workqueue(ptr noundef %15) #5
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end9.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pwm_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_bank_a_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %pwm_ctrl1 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pwm_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwm_ctrl1, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 1
  %8 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_brightness, align 4
  %pwm_period.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwm_period.i, align 4
  %conv.i = zext i32 %11 to i64
  %pwmd_state.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %pwmd_state.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %pwmd_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.i = icmp ugt i32 %7, %9
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.cleanup_crit_edge, label %if.end.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  %conv.i.i = zext i32 %7 to i64
  %mul.i.i = mul nuw i64 %conv.i, %conv.i.i
  %div276.i.i = lshr i32 %9, 1
  %conv1.i.i = zext i32 %div276.i.i to i64
  %add.i.i = add nuw i64 %mul.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp174.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp174.i.i, label %if.then178.i.i, label %if.else184.i.i, !prof !153

if.then178.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv179.i.i = trunc i64 %add.i.i to i32
  %div182.i.i = udiv i32 %conv179.i.i, %9
  %conv183.i.i = zext i32 %div182.i.i to i64
  br label %if.end.i

if.else184.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %add.i.i) #9, !srcloc !154
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else184.i.i, %if.then178.i.i
  %_tmp.0.i.i = phi i64 [ %conv183.i.i, %if.then178.i.i ], [ %asmresult1.i.i.i, %if.else184.i.i ]
  %duty_cycle191.i.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %duty_cycle191.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %_tmp.0.i.i, ptr %duty_cycle191.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %_tmp.0.i.i)
  %tobool3.i = icmp ne i64 %_tmp.0.i.i, 0
  %enabled.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 10, i32 3
  %frombool.i = zext i1 %tobool3.i to i8
  %15 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %enabled.i, align 4
  %pwmd.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %pwmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwmd.i, align 4
  %call7.i = tail call i32 @pwm_apply_state(ptr noundef %17, ptr noundef %pwmd_state.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5 = icmp slt i32 %call.i.i, 0
  br i1 %cmp5, label %if.end.do.end_crit_edge, label %if.end7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end7:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %20 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bl, align 8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 3, i32 noundef %21) #5
  %24 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp13 = icmp slt i32 %25, 4
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 8
  %. = select i1 %cmp13, i32 0, i32 4
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 4, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %ret.0 = or i32 %call.i.i44, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp19 = icmp slt i32 %ret.0, 0
  br i1 %cmp19, label %if.end7.do.end_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %if.end.do.end_crit_edge ], [ %ret.0, %if.end7.do.end_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = inttoptr i32 %ret.1 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.38, ptr noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end ], [ 0, %if.end7.cleanup_crit_edge ], [ %call7.i, %if.end.i ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_bank_a_get_brightness(ptr nocapture noundef %bl) #2 align 64 {
entry:
  %reg_val.i48 = alloca i32, align 4
  %reg_val.i39 = alloca i32, align 4
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %pwm_ctrl1 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pwm_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwm_ctrl1, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #5
  %6 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !152
  %regmap.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 19, ptr noundef nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lm3630a_read.exit.thread, label %lm3630a_read.exit

lm3630a_read.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  br label %do.end

lm3630a_read.exit:                                ; preds = %if.then
  %9 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i39) #5
  %11 = ptrtoint ptr %reg_val.i39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %reg_val.i39, align 4, !annotation !152
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  %call.i41 = call i32 @regmap_read(ptr noundef %13, i32 noundef 18, ptr noundef nonnull %reg_val.i39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %lm3630a_read.exit46.thread, label %lm3630a_read.exit46

lm3630a_read.exit46.thread:                       ; preds = %lm3630a_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i39) #5
  br label %do.end

lm3630a_read.exit46:                              ; preds = %lm3630a_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %reg_val.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_val.i39, align 4
  %and.i43 = and i32 %15, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i39) #5
  %and.i = shl i32 %10, 8
  %shl = and i32 %and.i, 256
  %or = or i32 %and.i43, %shl
  br label %out

if.end10:                                         ; preds = %entry
  %regmap.i47 = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %regmap.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i47, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12 = icmp slt i32 %call.i.i, 0
  br i1 %cmp12, label %if.end10.do.end_crit_edge, label %if.end14

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end14:                                         ; preds = %if.end10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i48) #5
  %18 = ptrtoint ptr %reg_val.i48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg_val.i48, align 4, !annotation !152
  %19 = ptrtoint ptr %regmap.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i47, align 8
  %call.i50 = call i32 @regmap_read(ptr noundef %20, i32 noundef 3, ptr noundef nonnull %reg_val.i48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i51 = icmp slt i32 %call.i50, 0
  br i1 %cmp.i51, label %lm3630a_read.exit55.thread, label %lm3630a_read.exit55

lm3630a_read.exit55.thread:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i48) #5
  br label %do.end

lm3630a_read.exit55:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %reg_val.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_val.i48, align 4
  %and.i52 = and i32 %22, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i48) #5
  br label %out

out:                                              ; preds = %lm3630a_read.exit55, %lm3630a_read.exit46
  %brightness.0 = phi i32 [ %or, %lm3630a_read.exit46 ], [ %and.i52, %lm3630a_read.exit55 ]
  %23 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %brightness.0, ptr %bl, align 8
  br label %cleanup

do.end:                                           ; preds = %lm3630a_read.exit55.thread, %if.end10.do.end_crit_edge, %lm3630a_read.exit46.thread, %lm3630a_read.exit.thread
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out
  %retval.0 = phi i32 [ 0, %do.end ], [ %brightness.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwm_apply_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_bank_b_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %pwm_ctrl1 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pwm_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwm_ctrl1, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bl, align 8
  %max_brightness = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 1
  %8 = ptrtoint ptr %max_brightness to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_brightness, align 4
  %pwm_period.i = getelementptr inbounds %struct.lm3630a_platform_data, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %pwm_period.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pwm_period.i, align 4
  %conv.i = zext i32 %11 to i64
  %pwmd_state.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 10
  %12 = ptrtoint ptr %pwmd_state.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv.i, ptr %pwmd_state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i.i = icmp ugt i32 %7, %9
  %or.cond.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %or.cond.i.i, label %if.then.cleanup_crit_edge, label %if.end.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then
  %conv.i.i = zext i32 %7 to i64
  %mul.i.i = mul nuw i64 %conv.i, %conv.i.i
  %div276.i.i = lshr i32 %9, 1
  %conv1.i.i = zext i32 %div276.i.i to i64
  %add.i.i = add nuw i64 %mul.i.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add.i.i)
  %cmp174.i.i = icmp ult i64 %add.i.i, 4294967296
  br i1 %cmp174.i.i, label %if.then178.i.i, label %if.else184.i.i, !prof !153

if.then178.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv179.i.i = trunc i64 %add.i.i to i32
  %div182.i.i = udiv i32 %conv179.i.i, %9
  %conv183.i.i = zext i32 %div182.i.i to i64
  br label %if.end.i

if.else184.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %9, i64 %add.i.i) #9, !srcloc !154
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.else184.i.i, %if.then178.i.i
  %_tmp.0.i.i = phi i64 [ %conv183.i.i, %if.then178.i.i ], [ %asmresult1.i.i.i, %if.else184.i.i ]
  %duty_cycle191.i.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %duty_cycle191.i.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %_tmp.0.i.i, ptr %duty_cycle191.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %_tmp.0.i.i)
  %tobool3.i = icmp ne i64 %_tmp.0.i.i, 0
  %enabled.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 10, i32 3
  %frombool.i = zext i1 %tobool3.i to i8
  %15 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %enabled.i, align 4
  %pwmd.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %pwmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pwmd.i, align 4
  %call7.i = tail call i32 @pwm_apply_state(ptr noundef %17, ptr noundef %pwmd_state.i) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 8
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5 = icmp slt i32 %call.i.i, 0
  br i1 %cmp5, label %if.end.do.end_crit_edge, label %if.end7

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end7:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  %20 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bl, align 8
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 8
  %call.i = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 4, i32 noundef %21) #5
  %24 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bl, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp13 = icmp slt i32 %25, 4
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 8
  %. = select i1 %cmp13, i32 0, i32 2
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 0, i32 noundef 2, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %ret.0 = or i32 %call.i.i44, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp19 = icmp slt i32 %ret.0, 0
  br i1 %cmp19, label %if.end7.do.end_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.do.end_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end7.do.end_crit_edge, %if.end.do.end_crit_edge
  %ret.1 = phi i32 [ %call.i.i, %if.end.do.end_crit_edge ], [ %ret.0, %if.end7.do.end_crit_edge ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %30 = inttoptr i32 %ret.1 to ptr
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.38, ptr noundef %30) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end7.cleanup_crit_edge, %if.end.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %do.end ], [ 0, %if.end7.cleanup_crit_edge ], [ %call7.i, %if.end.i ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_bank_b_get_brightness(ptr nocapture noundef %bl) #2 align 64 {
entry:
  %reg_val.i48 = alloca i32, align 4
  %reg_val.i39 = alloca i32, align 4
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata, align 8
  %pwm_ctrl1 = getelementptr inbounds %struct.lm3630a_platform_data, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pwm_ctrl1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pwm_ctrl1, align 4
  %and = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not = icmp eq i32 %and, 0
  br i1 %cmp.not, label %if.end10, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #5
  %6 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !152
  %regmap.i = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 19, ptr noundef nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lm3630a_read.exit.thread, label %lm3630a_read.exit

lm3630a_read.exit.thread:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  br label %do.end

lm3630a_read.exit:                                ; preds = %if.then
  %9 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i39) #5
  %11 = ptrtoint ptr %reg_val.i39 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %reg_val.i39, align 4, !annotation !152
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 8
  %call.i41 = call i32 @regmap_read(ptr noundef %13, i32 noundef 18, ptr noundef nonnull %reg_val.i39) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp.i42 = icmp slt i32 %call.i41, 0
  br i1 %cmp.i42, label %lm3630a_read.exit46.thread, label %lm3630a_read.exit46

lm3630a_read.exit46.thread:                       ; preds = %lm3630a_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i39) #5
  br label %do.end

lm3630a_read.exit46:                              ; preds = %lm3630a_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %reg_val.i39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_val.i39, align 4
  %and.i43 = and i32 %15, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i39) #5
  %and.i = shl i32 %10, 8
  %shl = and i32 %and.i, 256
  %or = or i32 %and.i43, %shl
  br label %out

if.end10:                                         ; preds = %entry
  %regmap.i47 = getelementptr inbounds %struct.lm3630a_chip, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %regmap.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i47, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp12 = icmp slt i32 %call.i.i, 0
  br i1 %cmp12, label %if.end10.do.end_crit_edge, label %if.end14

if.end10.do.end_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end14:                                         ; preds = %if.end10
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i48) #5
  %18 = ptrtoint ptr %reg_val.i48 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %reg_val.i48, align 4, !annotation !152
  %19 = ptrtoint ptr %regmap.i47 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i47, align 8
  %call.i50 = call i32 @regmap_read(ptr noundef %20, i32 noundef 4, ptr noundef nonnull %reg_val.i48) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i50)
  %cmp.i51 = icmp slt i32 %call.i50, 0
  br i1 %cmp.i51, label %lm3630a_read.exit55.thread, label %lm3630a_read.exit55

lm3630a_read.exit55.thread:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i48) #5
  br label %do.end

lm3630a_read.exit55:                              ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %reg_val.i48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %reg_val.i48, align 4
  %and.i52 = and i32 %22, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i48) #5
  br label %out

out:                                              ; preds = %lm3630a_read.exit55, %lm3630a_read.exit46
  %brightness.0 = phi i32 [ %or, %lm3630a_read.exit46 ], [ %and.i52, %lm3630a_read.exit55 ]
  %23 = ptrtoint ptr %bl to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %brightness.0, ptr %bl, align 8
  br label %cleanup

do.end:                                           ; preds = %lm3630a_read.exit55.thread, %if.end10.do.end_crit_edge, %lm3630a_read.exit46.thread, %lm3630a_read.exit.thread
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %out
  %retval.0 = phi i32 [ 0, %do.end ], [ %brightness.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm3630a_delayed_func(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  %reg_val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val.i) #5
  %0 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val.i, align 4, !annotation !152
  %regmap.i = getelementptr i8, ptr %work, i32 124
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 8
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 9, ptr noundef nonnull %reg_val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %lm3630a_read.exit.thread, label %lm3630a_read.exit

lm3630a_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.54) #8
  br label %cleanup

lm3630a_read.exit:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %reg_val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val.i, align 4
  %and.i = and i32 %6, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val.i) #5
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.57, i32 noundef %and.i) #8
  br label %cleanup

cleanup:                                          ; preds = %lm3630a_read.exit, %lm3630a_read.exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm3630a_isr_func(i32 noundef %irq, ptr noundef %chip) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irqthread = getelementptr inbounds %struct.lm3630a_chip, ptr %chip, i32 0, i32 3
  %0 = ptrtoint ptr %irqthread to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %irqthread, align 4
  %work = getelementptr inbounds %struct.lm3630a_chip, ptr %chip, i32 0, i32 1
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work, i32 noundef 1) #5
  %regmap.i = getelementptr inbounds %struct.lm3630a_chip, ptr %chip, i32 0, i32 8
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 0, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 72)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !110, !111, !112, !113, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_lm3630a_bl__301_627_lm3630a_i2c_driver_init6, !1, !"__initcall__kmod_lm3630a_bl__301_627_lm3630a_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 627, i32 1}
!2 = !{ptr @__exitcall_lm3630a_i2c_driver_exit, !1, !"__exitcall_lm3630a_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 629, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 630, i32 1}
!7 = !{ptr @__UNIQUE_ID_author304, !8, !"__UNIQUE_ID_author304", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 631, i32 1}
!9 = !{ptr @__UNIQUE_ID_file305, !10, !"__UNIQUE_ID_file305", i1 false, i1 false}
!10 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 632, i32 1}
!11 = !{ptr @__UNIQUE_ID_license306, !10, !"__UNIQUE_ID_license306", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 619, i32 14}
!14 = !{ptr @lm3630a_i2c_driver, !15, !"lm3630a_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 617, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 502, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lm3630a_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lm3630a_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @lm3630a_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 512, i32 18}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 515, i32 3}
!29 = !{ptr @lm3630a_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @lm3630a_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 535, i32 4}
!33 = !{ptr @lm3630a_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lm3630a_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 541, i32 61}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 551, i32 3}
!39 = !{ptr @lm3630a_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @lm3630a_probe._entry_ptr.16, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 557, i32 3}
!43 = !{ptr @lm3630a_probe._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @lm3630a_probe._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 562, i32 42}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 564, i32 4}
!49 = !{ptr @lm3630a_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @lm3630a_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 578, i32 2}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lm3630a_probe._entry.24, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lm3630a_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @lm3630a_regmap, !57, !"lm3630a_regmap", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 370, i32 35}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 411, i32 39}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 428, i32 9}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 449, i32 42}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 457, i32 39}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 466, i32 39}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 382, i32 48}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 109, i32 3}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @lm3630a_chip_init._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @lm3630a_chip_init._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 346, i32 51}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 359, i32 51}
!79 = !{ptr @lm3630a_bank_a_ops, !80, !"lm3630a_bank_a_ops", i1 false, i1 false}
!80 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 255, i32 35}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 215, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @lm3630a_bank_a_update_status._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @lm3630a_bank_a_update_status._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 251, i32 2}
!88 = !{ptr @lm3630a_bank_a_get_brightness._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @lm3630a_bank_a_get_brightness._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @lm3630a_bank_b_ops, !91, !"lm3630a_bank_b_ops", i1 false, i1 false}
!91 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 330, i32 35}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 290, i32 2}
!94 = !{ptr @lm3630a_bank_b_update_status._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @lm3630a_bank_b_update_status._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 326, i32 2}
!98 = !{ptr @lm3630a_bank_b_get_brightness._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @lm3630a_bank_b_get_brightness._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @lm3630a_intr_config.__key, !101, !"__key", i1 false, i1 false}
!101 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 155, i32 2}
!102 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @lm3630a_intr_config.__key.44, !101, !"__key", i1 false, i1 false}
!104 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 156, i32 21}
!107 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 158, i32 3}
!110 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @lm3630a_intr_config._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @lm3630a_intr_config._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 163, i32 44}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 164, i32 3}
!117 = !{ptr @lm3630a_intr_config._entry.51, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @lm3630a_intr_config._entry_ptr.53, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 123, i32 3}
!121 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @lm3630a_delayed_func._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @lm3630a_delayed_func._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 128, i32 2}
!126 = !{ptr @lm3630a_delayed_func._entry.56, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @lm3630a_delayed_func._entry_ptr.58, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 141, i32 3}
!130 = !{ptr @lm3630a_isr_func._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @lm3630a_isr_func._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 589, i32 3}
!134 = !{ptr @lm3630a_remove._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @lm3630a_remove._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @lm3630a_remove._entry.61, !137, !"_entry", i1 false, i1 false}
!137 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 593, i32 3}
!138 = !{ptr @lm3630a_remove._entry_ptr.62, !137, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @lm3630a_match_table, !140, !"lm3630a_match_table", i1 false, i1 false}
!140 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 610, i32 34}
!141 = !{ptr @lm3630a_id, !142, !"lm3630a_id", i1 false, i1 false}
!142 = !{!"../drivers/video/backlight/lm3630a_bl.c", i32 603, i32 35}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{!"branch_weights", i32 2000, i32 1}
!154 = !{i64 2148200586, i64 2148200866, i64 2148201200, i64 2148201534}
