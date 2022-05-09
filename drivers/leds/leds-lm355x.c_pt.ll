; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-lm355x.c_pt.bc'
source_filename = "../drivers/leds/leds-lm355x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lm355x_reg_data = type { i8, i8, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.indicator = type { i8, i8 }
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
%struct.lm355x_chip_data = type { ptr, i32, %struct.led_classdev, %struct.led_classdev, %struct.led_classdev, ptr, ptr, %struct.mutex, i32, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lm355x_platform_data = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_leds_lm355x__288_526_lm355x_i2c_driver_init6 = internal global ptr @lm355x_i2c_driver_init, section ".initcall6.init", align 4
@lm355x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lm355x_probe, ptr @lm355x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm355x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm355x_i2c_driver_exit = internal global ptr @lm355x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [75 x i8] c"leds_lm355x.description=Texas Instruments Flash Lighting driver for LM355x\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [54 x i8] c"leds_lm355x.author=Daniel Jeong <daniel.jeong@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [58 x i8] c"leds_lm355x.author=G.Shark Jeong <gshark.jeong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [42 x i8] c"leds_lm355x.file=drivers/leds/leds-lm355x\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [27 x i8] c"leds_lm355x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"leds-lm355x\00", [20 x i8] zeroinitializer }, align 32
@lm355x_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"leds-lm3554\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"leds-lm3556\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@lm355x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 408, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i2c functionality check fail.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lm355x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/leds/leds-lm355x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm355x_probe._entry_ptr = internal global ptr @lm355x_probe._entry, section ".printk_index", align 4
@lm355x_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 413, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"needs Platform Data.\0A\00", [42 x i8] zeroinitializer }, align 32
@lm355x_probe._entry_ptr.8 = internal global ptr @lm355x_probe._entry.6, section ".printk_index", align 4
@lm3554_regs = internal global { [8 x %struct.lm355x_reg_data], [40 x i8] } { [8 x %struct.lm355x_reg_data] [%struct.lm355x_reg_data { i8 -48, i8 -65, i8 0 }, %struct.lm355x_reg_data { i8 -32, i8 -128, i8 7 }, %struct.lm355x_reg_data { i8 -96, i8 56, i8 3 }, %struct.lm355x_reg_data { i8 -32, i8 4, i8 2 }, %struct.lm355x_reg_data { i8 -80, i8 120, i8 3 }, %struct.lm355x_reg_data { i8 -32, i8 8, i8 3 }, %struct.lm355x_reg_data { i8 -96, i8 -64, i8 6 }, %struct.lm355x_reg_data { i8 -96, i8 3, i8 0 }], [40 x i8] zeroinitializer }, align 32
@lm3556_regs = internal global { [8 x %struct.lm355x_reg_data], [40 x i8] } { [8 x %struct.lm355x_reg_data] [%struct.lm355x_reg_data { i8 11, i8 -1, i8 0 }, %struct.lm355x_reg_data { i8 10, i8 16, i8 4 }, %struct.lm355x_reg_data { i8 9, i8 112, i8 4 }, %struct.lm355x_reg_data { i8 10, i8 32, i8 5 }, %struct.lm355x_reg_data { i8 9, i8 15, i8 0 }, %struct.lm355x_reg_data { i8 -1, i8 -1, i8 0 }, %struct.lm355x_reg_data { i8 9, i8 112, i8 4 }, %struct.lm355x_reg_data { i8 10, i8 3, i8 0 }], [40 x i8] zeroinitializer }, align 32
@lm355x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm355x_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"leds_lm355x:436:(&lm355x_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@lm355x_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 440, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@lm355x_probe._entry_ptr.12 = internal global ptr @lm355x_probe._entry.10, section ".printk_index", align 4
@lm355x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flash\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"torch\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"indicator\00", [22 x i8] zeroinitializer }, align 32
@lm355x_indicator_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lm355x_indicator_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lm355x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 483, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s is initialized\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lm355x_probe._entry_ptr.20 = internal global ptr @lm355x_probe._entry.17, section ".printk_index", align 4
@lm355x_name = internal global { [2 x [20 x i8]], [56 x i8] } { [2 x [20 x i8]] [[20 x i8] c"leds-lm3554\00\00\00\00\00\00\00\00\00", [20 x i8] c"leds-lm3556\00\00\00\00\00\00\00\00\00"], [56 x i8] zeroinitializer }, align 32
@lm355x_chip_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s:i2c access fail to register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm355x_chip_init\00", [47 x i8] zeroinitializer }, align 32
@lm355x_chip_init._entry_ptr = internal global ptr @lm355x_chip_init._entry, section ".printk_index", align 4
@lm355x_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 209, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s Last FLAG is 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lm355x_control\00", [17 x i8] zeroinitializer }, align 32
@lm355x_control._entry_ptr = internal global ptr @lm355x_control._entry, section ".printk_index", align 4
@lm355x_control._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 235, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"torch brt is set - ext. torch pin mode\0A\00", [56 x i8] zeroinitializer }, align 32
@lm355x_control._entry_ptr.27 = internal global ptr @lm355x_control._entry.25, section ".printk_index", align 4
@lm355x_control._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 264, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"flash brt is set - ext. strobe pin mode\0A\00", [55 x i8] zeroinitializer }, align 32
@lm355x_control._entry_ptr.30 = internal global ptr @lm355x_control._entry.28, section ".printk_index", align 4
@lm355x_control._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.24, ptr @.str.3, i32 302, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@lm355x_control._entry_ptr.32 = internal global ptr @lm355x_control._entry.31, section ".printk_index", align 4
@lm355x_indicator_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm355x_indicator_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm355x_indicator_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_pattern, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_pattern = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @pattern_store }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pattern\00", [24 x i8] zeroinitializer }, align 32
@indicator_pattern = internal constant { [4 x %struct.indicator], [24 x i8] } { [4 x %struct.indicator] [%struct.indicator { i8 17, i8 1 }, %struct.indicator { i8 -15, i8 2 }, %struct.indicator { i8 -95, i8 4 }, %struct.indicator { i8 81, i8 7 }], [24 x i8] zeroinitializer }, align 32
@pattern_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.34, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pattern_store\00", [18 x i8] zeroinitializer }, align 32
@pattern_store._entry_ptr = internal global ptr @pattern_store._entry, section ".printk_index", align 4
@lm355x_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 503, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s is removed\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"lm355x_remove\00", [18 x i8] zeroinitializer }, align 32
@lm355x_remove._entry_ptr = internal global ptr @lm355x_remove._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.38 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"lm355x_i2c_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 516, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 518, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant [10 x i8] c"lm355x_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 508, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 408, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 413, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"lm3554_regs\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 130, i32 31 }
@___asan_gen_.75 = private unnamed_addr constant [12 x i8] c"lm3556_regs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 141, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"lm355x_regmap\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 392, i32 35 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 436, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 439, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 444, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 452, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 460, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 468, i32 30 }
@___asan_gen_.108 = private unnamed_addr constant [24 x i8] c"lm355x_indicator_groups\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 482, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant [12 x i8] c"lm355x_name\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 152, i32 13 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 190, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 207, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 234, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 263, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 302, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [23 x i8] c"lm355x_indicator_group\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 390, i32 1 }
@___asan_gen_.159 = private unnamed_addr constant [23 x i8] c"lm355x_indicator_attrs\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 386, i32 26 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"dev_attr_pattern\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 384, i32 8 }
@___asan_gen_.168 = private unnamed_addr constant [18 x i8] c"indicator_pattern\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 123, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 380, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.184 = private constant [30 x i8] c"../drivers/leds/leds-lm355x.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 503, i32 2 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_lm355x_i2c_driver_exit, ptr @__initcall__kmod_leds_lm355x__288_526_lm355x_i2c_driver_init6, ptr @lm355x_chip_init._entry, ptr @lm355x_chip_init._entry_ptr, ptr @lm355x_control._entry, ptr @lm355x_control._entry.25, ptr @lm355x_control._entry.28, ptr @lm355x_control._entry.31, ptr @lm355x_control._entry_ptr, ptr @lm355x_control._entry_ptr.27, ptr @lm355x_control._entry_ptr.30, ptr @lm355x_control._entry_ptr.32, ptr @lm355x_i2c_driver_exit, ptr @lm355x_probe._entry, ptr @lm355x_probe._entry.10, ptr @lm355x_probe._entry.17, ptr @lm355x_probe._entry.6, ptr @lm355x_probe._entry_ptr, ptr @lm355x_probe._entry_ptr.12, ptr @lm355x_probe._entry_ptr.20, ptr @lm355x_probe._entry_ptr.8, ptr @lm355x_remove._entry, ptr @lm355x_remove._entry_ptr, ptr @pattern_store._entry, ptr @pattern_store._entry_ptr, ptr @lm355x_i2c_driver, ptr @.str, ptr @lm355x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @lm3554_regs, ptr @lm3556_regs, ptr @lm355x_probe._key, ptr @lm355x_regmap, ptr @.str.9, ptr @.str.11, ptr @lm355x_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @lm355x_indicator_groups, ptr @.str.18, ptr @.str.19, ptr @lm355x_name, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @lm355x_indicator_group, ptr @lm355x_indicator_attrs, ptr @dev_attr_pattern, ptr @.str.33, ptr @indicator_pattern, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3554_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm3556_regs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_indicator_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_name to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_chip_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_control._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_control._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_control._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_indicator_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_indicator_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pattern to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @indicator_pattern to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pattern_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm355x_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm355x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm355x_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm355x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @lm355x_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm355x_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
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
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1316, i32 noundef 3520) #5
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  %12 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end13.cleanup_crit_edge [
    i32 0, label %if.end13.sw.epilog_crit_edge
    i32 1, label %sw.bb17
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb17:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %if.end13.sw.epilog_crit_edge
  %lm3556_regs.sink = phi ptr [ @lm3556_regs, %sw.bb17 ], [ @lm3554_regs, %if.end13.sw.epilog_crit_edge ]
  %regs18 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 9
  %13 = ptrtoint ptr %regs18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %lm3556_regs.sink, ptr %regs18, align 4
  %pdata19 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %pdata19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %1, ptr %pdata19, align 4
  %call20 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm355x_regmap, ptr noundef nonnull @lm355x_probe._key, ptr noundef nonnull @.str.9) #5
  %regmap = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %do.body31

if.then23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %16) #8
  br label %cleanup

do.body31:                                        ; preds = %sw.epilog
  %lock = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @lm355x_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %18 = ptrtoint ptr %pdata19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdata19, align 4
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %21, label %do.body31.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb7.i
  ]

do.body31.cleanup_crit_edge:                      ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb.i:                                          ; preds = %do.body31
  %pin_tx2.i = getelementptr inbounds %struct.lm355x_platform_data, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %pin_tx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pin_tx2.i, align 4
  %ntc_pin.i = getelementptr inbounds %struct.lm355x_platform_data, ptr %19, i32 0, i32 3
  %25 = ptrtoint ptr %ntc_pin.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ntc_pin.i, align 4
  %or.i = or i32 %26, %24
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call.i.i143 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 224, i32 noundef 40, i32 noundef %or.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i143)
  %cmp.i144 = icmp slt i32 %call.i.i143, 0
  br i1 %cmp.i144, label %sw.bb.i.do.end.i_crit_edge, label %if.end.i

sw.bb.i.do.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i:                                         ; preds = %sw.bb.i
  %pass_mode.i = getelementptr inbounds %struct.lm355x_platform_data, ptr %19, i32 0, i32 4
  %29 = ptrtoint ptr %pass_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pass_mode.i, align 4
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 160, i32 noundef 4, i32 noundef %30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %cmp4.i = icmp slt i32 %call.i36.i, 0
  br i1 %cmp4.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.if.end37_crit_edge

if.end.i.if.end37_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

sw.bb7.i:                                         ; preds = %do.body31
  %pin_tx28.i = getelementptr inbounds %struct.lm355x_platform_data, ptr %19, i32 0, i32 2
  %33 = ptrtoint ptr %pin_tx28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pin_tx28.i, align 4
  %ntc_pin9.i = getelementptr inbounds %struct.lm355x_platform_data, ptr %19, i32 0, i32 3
  %35 = ptrtoint ptr %ntc_pin9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ntc_pin9.i, align 4
  %or10.i = or i32 %36, %34
  %pass_mode11.i = getelementptr inbounds %struct.lm355x_platform_data, ptr %19, i32 0, i32 4
  %37 = ptrtoint ptr %pass_mode11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pass_mode11.i, align 4
  %or12.i = or i32 %or10.i, %38
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call.i37.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 10, i32 noundef 196, i32 noundef %or12.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %cmp15.i = icmp slt i32 %call.i37.i, 0
  br i1 %cmp15.i, label %sw.bb7.i.do.end.i_crit_edge, label %sw.bb7.i.if.end37_crit_edge

sw.bb7.i.if.end37_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

sw.bb7.i.do.end.i_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %sw.bb7.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %sw.bb.i.do.end.i_crit_edge
  %ret.1.i = phi i32 [ %call.i37.i, %sw.bb7.i.do.end.i_crit_edge ], [ %call.i.i143, %sw.bb.i.do.end.i_crit_edge ], [ %call.i36.i, %if.end.i.do.end.i_crit_edge ]
  %41 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #8
  br label %cleanup

if.end37:                                         ; preds = %sw.bb7.i.if.end37_crit_edge, %if.end.i.if.end37_crit_edge
  %cdev_flash = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %cdev_flash to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.14, ptr %cdev_flash, align 4
  %max_brightness = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 2, i32 2
  %44 = ptrtoint ptr %max_brightness to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %max_brightness, align 4
  %brightness_set_blocking = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 2, i32 6
  %45 = ptrtoint ptr %brightness_set_blocking to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @lm355x_strobe_brightness_set, ptr %brightness_set_blocking, align 4
  %default_trigger = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 2, i32 14
  %46 = ptrtoint ptr %default_trigger to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @.str.14, ptr %default_trigger, align 4
  %call.i145 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev_flash, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i145)
  %cmp44 = icmp slt i32 %call.i145, 0
  br i1 %cmp44, label %if.end37.cleanup_crit_edge, label %if.end46

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %cdev_torch = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 3
  %47 = ptrtoint ptr %cdev_torch to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.15, ptr %cdev_torch, align 4
  %max_brightness49 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 3, i32 2
  %48 = ptrtoint ptr %max_brightness49 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 8, ptr %max_brightness49, align 4
  %brightness_set_blocking51 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 3, i32 6
  %49 = ptrtoint ptr %brightness_set_blocking51 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @lm355x_torch_brightness_set, ptr %brightness_set_blocking51, align 4
  %default_trigger53 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 3, i32 14
  %50 = ptrtoint ptr %default_trigger53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.15, ptr %default_trigger53, align 4
  %call.i146 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev_torch, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %cmp57 = icmp slt i32 %call.i146, 0
  br i1 %cmp57, label %if.end46.err_create_torch_file_crit_edge, label %if.end59

if.end46.err_create_torch_file_crit_edge:         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_create_torch_file

if.end59:                                         ; preds = %if.end46
  %cdev_indicator = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 4
  %51 = ptrtoint ptr %cdev_indicator to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.16, ptr %cdev_indicator, align 4
  %52 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp62 = icmp eq i32 %53, 0
  %max_brightness65 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 4, i32 2
  br i1 %cmp62, label %if.end68.thread, label %if.end68

if.end68.thread:                                  ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %max_brightness65 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 4, ptr %max_brightness65, align 4
  %brightness_set_blocking70150 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 4, i32 6
  %55 = ptrtoint ptr %brightness_set_blocking70150 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @lm355x_indicator_brightness_set, ptr %brightness_set_blocking70150, align 4
  br label %if.end75

if.end68:                                         ; preds = %if.end59
  %56 = ptrtoint ptr %max_brightness65 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 8, ptr %max_brightness65, align 4
  %brightness_set_blocking70 = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 4, i32 6
  %57 = ptrtoint ptr %brightness_set_blocking70 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @lm355x_indicator_brightness_set, ptr %brightness_set_blocking70, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp72 = icmp eq i32 %53, 1
  br i1 %cmp72, label %if.then73, label %if.end68.if.end75_crit_edge

if.end68.if.end75_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end75

if.then73:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %groups = getelementptr inbounds %struct.lm355x_chip_data, ptr %call.i, i32 0, i32 4, i32 12
  %58 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @lm355x_indicator_groups, ptr %groups, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end68.if.end75_crit_edge, %if.end68.thread
  %call.i147 = tail call i32 @led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev_indicator, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147)
  %cmp79 = icmp slt i32 %call.i147, 0
  br i1 %cmp79, label %err_create_indicator_file, label %do.end84

do.end84:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x [20 x i8]], ptr @lm355x_name, i32 0, i32 %60
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %arrayidx) #8
  br label %cleanup

err_create_indicator_file:                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @led_classdev_unregister(ptr noundef %cdev_torch) #5
  br label %err_create_torch_file

err_create_torch_file:                            ; preds = %err_create_indicator_file, %if.end46.err_create_torch_file_crit_edge
  %err.0 = phi i32 [ %call.i146, %if.end46.err_create_torch_file_crit_edge ], [ %call.i147, %err_create_indicator_file ]
  tail call void @led_classdev_unregister(ptr noundef %cdev_flash) #5
  br label %cleanup

cleanup:                                          ; preds = %err_create_torch_file, %do.end84, %if.end37.cleanup_crit_edge, %do.end.i, %do.body31.cleanup_crit_edge, %if.then23, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -61, %do.end6 ], [ %16, %if.then23 ], [ 0, %do.end84 ], [ -95, %do.end ], [ -12, %if.end8.cleanup_crit_edge ], [ -38, %if.end13.cleanup_crit_edge ], [ %call.i145, %if.end37.cleanup_crit_edge ], [ %err.0, %err_create_torch_file ], [ -61, %do.body31.cleanup_crit_edge ], [ %ret.1.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm355x_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs = getelementptr inbounds %struct.lm355x_chip_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %regmap = getelementptr inbounds %struct.lm355x_chip_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr %struct.lm355x_reg_data, ptr %3, i32 7
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %conv, i32 noundef 0) #5
  %cdev_indicator = getelementptr inbounds %struct.lm355x_chip_data, ptr %1, i32 0, i32 4
  tail call void @led_classdev_unregister(ptr noundef %cdev_indicator) #5
  %cdev_torch = getelementptr inbounds %struct.lm355x_chip_data, ptr %1, i32 0, i32 3
  tail call void @led_classdev_unregister(ptr noundef %cdev_torch) #5
  %cdev_flash = getelementptr inbounds %struct.lm355x_chip_data, ptr %1, i32 0, i32 2
  tail call void @led_classdev_unregister(ptr noundef %cdev_flash) #5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %type = getelementptr inbounds %struct.lm355x_chip_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %arrayidx2 = getelementptr [2 x [20 x i8]], ptr @lm355x_name, i32 0, i32 %9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.35, ptr noundef %arrayidx2) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm355x_strobe_brightness_set(ptr noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -8
  %lock = getelementptr i8, ptr %cdev, i32 1208
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %conv = trunc i32 %brightness to i8
  %call = tail call fastcc i32 @lm355x_control(ptr noundef %add.ptr, i8 noundef zeroext %conv, i32 noundef 3)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm355x_torch_brightness_set(ptr noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -408
  %lock = getelementptr i8, ptr %cdev, i32 808
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %conv = trunc i32 %brightness to i8
  %call = tail call fastcc i32 @lm355x_control(ptr noundef %add.ptr, i8 noundef zeroext %conv, i32 noundef 2)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm355x_indicator_brightness_set(ptr noundef %cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cdev, i32 -808
  %lock = getelementptr i8, ptr %cdev, i32 408
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  %conv = trunc i32 %brightness to i8
  %call = tail call fastcc i32 @lm355x_control(ptr noundef %add.ptr, i8 noundef zeroext %conv, i32 noundef 1)
  tail call void @mutex_unlock(ptr noundef %lock) #5
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm355x_control(ptr noundef %chip, i8 noundef zeroext %brightness, i32 noundef %opmode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pdata1 = getelementptr inbounds %struct.lm355x_chip_data, ptr %chip, i32 0, i32 5
  %0 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata1, align 4
  %regs = getelementptr inbounds %struct.lm355x_chip_data, ptr %chip, i32 0, i32 9
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %regmap = getelementptr inbounds %struct.lm355x_chip_data, ptr %chip, i32 0, i32 6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %3, align 1
  %conv = zext i8 %7 to i32
  %last_flag = getelementptr inbounds %struct.lm355x_chip_data, ptr %chip, i32 0, i32 8
  %call = tail call i32 @regmap_read(ptr noundef %5, i32 noundef %conv, ptr noundef %last_flag) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.do.end161_crit_edge, label %if.end

entry.do.end161_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %last_flag to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_flag, align 4
  %mask = getelementptr inbounds %struct.lm355x_reg_data, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mask, align 1
  %conv5 = zext i8 %11 to i32
  %and = and i32 %9, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %do.end

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %type = getelementptr inbounds %struct.lm355x_chip_data, ptr %chip, i32 0, i32 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %arrayidx7 = getelementptr [2 x [20 x i8]], ptr @lm355x_name, i32 0, i32 %15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.23, ptr noundef %arrayidx7, i32 noundef %and) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %brightness)
  %tobool14.not = icmp eq i8 %brightness, 0
  %spec.select = select i1 %tobool14.not, i32 0, i32 %opmode
  %16 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %spec.select, label %if.end13.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb56
    i32 1, label %sw.bb104
    i32 0, label %if.end13.sw.epilog_crit_edge
  ]

if.end13.sw.epilog_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %arrayidx18 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 2
  %19 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx18, align 1
  %conv20 = zext i8 %20 to i32
  %mask22 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 2, i32 1
  %21 = ptrtoint ptr %mask22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mask22, align 1
  %conv23 = zext i8 %22 to i32
  %conv24 = zext i8 %brightness to i32
  %sub = add nsw i32 %conv24, -1
  %shift = getelementptr %struct.lm355x_reg_data, ptr %3, i32 2, i32 2
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shift, align 1
  %conv26 = zext i8 %24 to i32
  %shl = shl i32 %sub, %conv26
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %conv20, i32 noundef %conv23, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp28 = icmp slt i32 %call.i, 0
  br i1 %cmp28, label %sw.bb.do.end161_crit_edge, label %if.end31

sw.bb.do.end161_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

if.end31:                                         ; preds = %sw.bb
  %pin_tx1 = getelementptr inbounds %struct.lm355x_platform_data, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %pin_tx1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pin_tx1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp32.not = icmp eq i32 %26, 0
  br i1 %cmp32.not, label %if.end31.sw.epilog_crit_edge, label %if.then34

if.end31.sw.epilog_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then34:                                        ; preds = %if.end31
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %arrayidx36 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 1
  %29 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx36, align 1
  %conv38 = zext i8 %30 to i32
  %mask40 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 1, i32 1
  %31 = ptrtoint ptr %mask40 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %mask40, align 1
  %conv41 = zext i8 %32 to i32
  %shift43 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 1, i32 2
  %33 = ptrtoint ptr %shift43 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %shift43, align 1
  %conv44 = zext i8 %34 to i32
  %shl45 = shl nuw i32 1, %conv44
  %call.i222 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef %conv38, i32 noundef %conv41, i32 noundef %shl45, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp47 = icmp slt i32 %call.i222, 0
  br i1 %cmp47, label %if.then34.do.end161_crit_edge, label %if.then34.sw.epilog.sink.split_crit_edge

if.then34.sw.epilog.sink.split_crit_edge:         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.then34.do.end161_crit_edge:                    ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

sw.bb56:                                          ; preds = %if.end13
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %arrayidx58 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 4
  %37 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx58, align 1
  %conv60 = zext i8 %38 to i32
  %mask62 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 4, i32 1
  %39 = ptrtoint ptr %mask62 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %mask62, align 1
  %conv63 = zext i8 %40 to i32
  %conv64 = zext i8 %brightness to i32
  %sub65 = add nsw i32 %conv64, -1
  %shift67 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 4, i32 2
  %41 = ptrtoint ptr %shift67 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %shift67, align 1
  %conv68 = zext i8 %42 to i32
  %shl69 = shl i32 %sub65, %conv68
  %call.i223 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef %conv60, i32 noundef %conv63, i32 noundef %shl69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp71 = icmp slt i32 %call.i223, 0
  br i1 %cmp71, label %sw.bb56.do.end161_crit_edge, label %if.end74

sw.bb56.do.end161_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

if.end74:                                         ; preds = %sw.bb56
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp75.not = icmp eq i32 %44, 0
  br i1 %cmp75.not, label %if.end74.sw.epilog_crit_edge, label %if.then77

if.end74.sw.epilog_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then77:                                        ; preds = %if.end74
  %type78 = getelementptr inbounds %struct.lm355x_chip_data, ptr %chip, i32 0, i32 1
  %45 = ptrtoint ptr %type78 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type78, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp79 = icmp ne i32 %46, 0
  %. = zext i1 %cmp79 to i32
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %arrayidx84 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 3
  %49 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx84, align 1
  %conv86 = zext i8 %50 to i32
  %mask88 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 3, i32 1
  %51 = ptrtoint ptr %mask88 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %mask88, align 1
  %conv89 = zext i8 %52 to i32
  %shift91 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 3, i32 2
  %53 = ptrtoint ptr %shift91 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %shift91, align 1
  %conv92 = zext i8 %54 to i32
  %shl93 = shl nuw i32 %., %conv92
  %call.i224 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef %conv86, i32 noundef %conv89, i32 noundef %shl93, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %cmp95 = icmp slt i32 %call.i224, 0
  br i1 %cmp95, label %if.then77.do.end161_crit_edge, label %if.then77.sw.epilog.sink.split_crit_edge

if.then77.sw.epilog.sink.split_crit_edge:         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.then77.do.end161_crit_edge:                    ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

sw.bb104:                                         ; preds = %if.end13
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %arrayidx106 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 6
  %57 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx106, align 1
  %conv108 = zext i8 %58 to i32
  %mask110 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 6, i32 1
  %59 = ptrtoint ptr %mask110 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mask110, align 1
  %conv111 = zext i8 %60 to i32
  %conv112 = zext i8 %brightness to i32
  %sub113 = add nsw i32 %conv112, -1
  %shift115 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 6, i32 2
  %61 = ptrtoint ptr %shift115 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %shift115, align 1
  %conv116 = zext i8 %62 to i32
  %shl117 = shl i32 %sub113, %conv116
  %call.i225 = tail call i32 @regmap_update_bits_base(ptr noundef %56, i32 noundef %conv108, i32 noundef %conv111, i32 noundef %shl117, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp119 = icmp slt i32 %call.i225, 0
  br i1 %cmp119, label %sw.bb104.do.end161_crit_edge, label %if.end122

sw.bb104.do.end161_crit_edge:                     ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

if.end122:                                        ; preds = %sw.bb104
  %pin_tx2 = getelementptr inbounds %struct.lm355x_platform_data, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %pin_tx2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pin_tx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp123.not = icmp eq i32 %64, 0
  br i1 %cmp123.not, label %if.end122.sw.epilog_crit_edge, label %if.then125

if.end122.sw.epilog_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then125:                                       ; preds = %if.end122
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %arrayidx127 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 5
  %67 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx127, align 1
  %conv129 = zext i8 %68 to i32
  %mask131 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 5, i32 1
  %69 = ptrtoint ptr %mask131 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %mask131, align 1
  %conv132 = zext i8 %70 to i32
  %shift134 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 5, i32 2
  %71 = ptrtoint ptr %shift134 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %shift134, align 1
  %conv135 = zext i8 %72 to i32
  %shl136 = shl nuw i32 1, %conv135
  %call.i226 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef %conv129, i32 noundef %conv132, i32 noundef %shl136, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp138 = icmp slt i32 %call.i226, 0
  br i1 %cmp138, label %if.then125.do.end161_crit_edge, label %if.then125.sw.epilog_crit_edge

if.then125.sw.epilog_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then125.do.end161_crit_edge:                   ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

sw.epilog.sink.split:                             ; preds = %if.then77.sw.epilog.sink.split_crit_edge, %if.then34.sw.epilog.sink.split_crit_edge
  %.str.29.sink = phi ptr [ @.str.26, %if.then34.sw.epilog.sink.split_crit_edge ], [ @.str.29, %if.then77.sw.epilog.sink.split_crit_edge ]
  %73 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %74, ptr noundef nonnull %.str.29.sink) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.then125.sw.epilog_crit_edge, %if.end122.sw.epilog_crit_edge, %if.end74.sw.epilog_crit_edge, %if.end31.sw.epilog_crit_edge, %if.end13.sw.epilog_crit_edge
  %opmode.addr.1 = phi i32 [ %spec.select, %if.end13.sw.epilog_crit_edge ], [ 1, %if.end122.sw.epilog_crit_edge ], [ 3, %if.end74.sw.epilog_crit_edge ], [ 2, %if.end31.sw.epilog_crit_edge ], [ 0, %if.then125.sw.epilog_crit_edge ], [ 0, %sw.epilog.sink.split ]
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %arrayidx144 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 7
  %77 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %arrayidx144, align 1
  %conv146 = zext i8 %78 to i32
  %mask148 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 7, i32 1
  %79 = ptrtoint ptr %mask148 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mask148, align 1
  %conv149 = zext i8 %80 to i32
  %shift151 = getelementptr %struct.lm355x_reg_data, ptr %3, i32 7, i32 2
  %81 = ptrtoint ptr %shift151 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %shift151, align 1
  %conv152 = zext i8 %82 to i32
  %shl153 = shl i32 %opmode.addr.1, %conv152
  %call.i227 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef %conv146, i32 noundef %conv149, i32 noundef %shl153, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i227)
  %cmp155 = icmp slt i32 %call.i227, 0
  br i1 %cmp155, label %sw.epilog.do.end161_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog.do.end161_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end161

do.end161:                                        ; preds = %sw.epilog.do.end161_crit_edge, %if.then125.do.end161_crit_edge, %sw.bb104.do.end161_crit_edge, %if.then77.do.end161_crit_edge, %sw.bb56.do.end161_crit_edge, %if.then34.do.end161_crit_edge, %sw.bb.do.end161_crit_edge, %entry.do.end161_crit_edge
  %ret.0 = phi i32 [ %call, %entry.do.end161_crit_edge ], [ %call.i227, %sw.epilog.do.end161_crit_edge ], [ %call.i225, %sw.bb104.do.end161_crit_edge ], [ %call.i226, %if.then125.do.end161_crit_edge ], [ %call.i223, %sw.bb56.do.end161_crit_edge ], [ %call.i224, %if.then77.do.end161_crit_edge ], [ %call.i, %sw.bb.do.end161_crit_edge ], [ %call.i222, %if.then34.do.end161_crit_edge ]
  %83 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %chip, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.24) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end161, %sw.epilog.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end161 ], [ -22, %if.end13.cleanup_crit_edge ], [ %call.i227, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pattern_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %size) #2 align 64 {
entry:
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -808
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #5
  %2 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %state, align 4, !annotation !108
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %state) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp ugt i32 %4, 3
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %state, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %regmap = getelementptr i8, ptr %1, i32 404
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %arrayidx = getelementptr [4 x %struct.indicator], ptr @indicator_pattern, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %call4 = call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.do.end_crit_edge, label %if.end8

if.end3.do.end_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end8:                                          ; preds = %if.end3
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  %period_cnt = getelementptr [4 x %struct.indicator], ptr @indicator_pattern, i32 0, i32 %15, i32 1
  %16 = ptrtoint ptr %period_cnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %period_cnt, align 1
  %conv11 = zext i8 %17 to i32
  %call12 = call i32 @regmap_write(ptr noundef %13, i32 noundef 5, i32 noundef %conv11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end8.do.end_crit_edge, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %if.end3.do.end_crit_edge, %entry.do.end_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.do.end_crit_edge ], [ %call4, %if.end3.do.end_crit_edge ], [ %call12, %if.end8.do.end_crit_edge ]
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.34) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end8.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end ], [ %size, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !83, !84, !86, !87, !88, !90, !92, !94, !95, !96, !97}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @__initcall__kmod_leds_lm355x__288_526_lm355x_i2c_driver_init6, !1, !"__initcall__kmod_leds_lm355x__288_526_lm355x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-lm355x.c", i32 526, i32 1}
!2 = !{ptr @__exitcall_lm355x_i2c_driver_exit, !1, !"__exitcall_lm355x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-lm355x.c", i32 528, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-lm355x.c", i32 529, i32 1}
!7 = !{ptr @__UNIQUE_ID_author291, !8, !"__UNIQUE_ID_author291", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-lm355x.c", i32 530, i32 1}
!9 = !{ptr @__UNIQUE_ID_file292, !10, !"__UNIQUE_ID_file292", i1 false, i1 false}
!10 = !{!"../drivers/leds/leds-lm355x.c", i32 531, i32 1}
!11 = !{ptr @__UNIQUE_ID_license293, !10, !"__UNIQUE_ID_license293", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-lm355x.c", i32 518, i32 14}
!14 = !{ptr @lm355x_i2c_driver, !15, !"lm355x_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-lm355x.c", i32 516, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-lm355x.c", i32 408, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @lm355x_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @lm355x_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/leds-lm355x.c", i32 413, i32 3}
!26 = !{ptr @lm355x_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @lm355x_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @lm355x_probe._key, !29, !"_key", i1 false, i1 false}
!29 = !{!"../drivers/leds/leds-lm355x.c", i32 436, i32 17}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/leds/leds-lm355x.c", i32 439, i32 3}
!33 = !{ptr @lm355x_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @lm355x_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @lm355x_probe.__key, !36, !"__key", i1 false, i1 false}
!36 = !{!"../drivers/leds/leds-lm355x.c", i32 444, i32 2}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-lm355x.c", i32 452, i32 26}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-lm355x.c", i32 460, i32 26}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-lm355x.c", i32 468, i32 30}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-lm355x.c", i32 482, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @lm355x_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @lm355x_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @lm3554_regs, !50, !"lm3554_regs", i1 false, i1 false}
!50 = !{!"../drivers/leds/leds-lm355x.c", i32 130, i32 31}
!51 = !{ptr @lm3556_regs, !52, !"lm3556_regs", i1 false, i1 false}
!52 = !{!"../drivers/leds/leds-lm355x.c", i32 141, i32 31}
!53 = !{ptr @lm355x_regmap, !54, !"lm355x_regmap", i1 false, i1 false}
!54 = !{!"../drivers/leds/leds-lm355x.c", i32 392, i32 35}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-lm355x.c", i32 190, i32 2}
!57 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @lm355x_chip_init._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @lm355x_chip_init._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/leds-lm355x.c", i32 207, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @lm355x_control._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @lm355x_control._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-lm355x.c", i32 234, i32 4}
!67 = !{ptr @lm355x_control._entry.25, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @lm355x_control._entry_ptr.27, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/leds/leds-lm355x.c", i32 263, i32 4}
!71 = !{ptr @lm355x_control._entry.28, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @lm355x_control._entry_ptr.30, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @lm355x_control._entry.31, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-lm355x.c", i32 302, i32 2}
!75 = !{ptr @lm355x_control._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @lm355x_indicator_groups, !77, !"lm355x_indicator_groups", i1 false, i1 false}
!77 = !{!"../drivers/leds/leds-lm355x.c", i32 390, i32 1}
!78 = !{ptr @lm355x_indicator_group, !77, !"lm355x_indicator_group", i1 false, i1 false}
!79 = !{ptr @lm355x_indicator_attrs, !80, !"lm355x_indicator_attrs", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-lm355x.c", i32 386, i32 26}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/leds/leds-lm355x.c", i32 384, i32 8}
!83 = !{ptr @dev_attr_pattern, !82, !"dev_attr_pattern", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/leds/leds-lm355x.c", i32 380, i32 2}
!86 = !{ptr @pattern_store._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pattern_store._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @indicator_pattern, !89, !"indicator_pattern", i1 false, i1 false}
!89 = !{!"../drivers/leds/leds-lm355x.c", i32 123, i32 25}
!90 = !{ptr @lm355x_name, !91, !"lm355x_name", i1 false, i1 false}
!91 = !{!"../drivers/leds/leds-lm355x.c", i32 152, i32 13}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/leds/leds-lm355x.c", i32 503, i32 2}
!94 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @lm355x_remove._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @lm355x_remove._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @lm355x_id, !98, !"lm355x_id", i1 false, i1 false}
!98 = !{!"../drivers/leds/leds-lm355x.c", i32 508, i32 35}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"auto-init"}
