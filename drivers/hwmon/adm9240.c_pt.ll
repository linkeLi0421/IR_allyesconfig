; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adm9240.c_pt.bc'
source_filename = "../drivers/hwmon/adm9240.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.adm9240_data = type { ptr, ptr, %struct.mutex, [2 x i8], i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_adm9240__305_822_adm9240_driver_init6 = internal global ptr @adm9240_driver_init, section ".initcall6.init", align 4
@adm9240_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adm9240_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adm9240_id, ptr @adm9240_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adm9240_driver_exit = internal global ptr @adm9240_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [102 x i8] c"adm9240.author=Michiel Rook <michiel@grendelproject.nl>, Grant Coady <gcoady.lk@gmail.com> and others\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [47 x i8] c"adm9240.description=ADM9240/DS1780/LM81 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [35 x i8] c"adm9240.file=drivers/hwmon/adm9240\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [20 x i8] c"adm9240.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm9240\00", [24 x i8] zeroinitializer }, align 32
@adm9240_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm9240\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ds1780\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"lm81\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 44, i16 45, i16 46, i16 47, i16 -2], [22 x i8] zeroinitializer }, align 32
@adm9240_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@adm9240_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adm9240_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @adm9240_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"adm9240:789:(&adm9240_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@adm9240_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @adm9240_hwmon_ops, ptr @adm9240_info }, [24 x i8] zeroinitializer }, align 32
@adm9240_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @adm9240_group, ptr null], [24 x i8] zeroinitializer }, align 32
@adm9240_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 330, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Using VRM: %d.%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adm9240_init_client\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adm9240.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adm9240_init_client._entry_ptr = internal global ptr @adm9240_init_client._entry, section ".printk_index", align 4
@adm9240_init_client._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 335, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"status: config 0x%02x mode %u\0A\00", [33 x i8] zeroinitializer }, align 32
@adm9240_init_client._entry_ptr.10 = internal global ptr @adm9240_init_client._entry.8, section ".printk_index", align 4
@adm9240_init_client._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 369, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cold start: config was 0x%02x mode %u\0A\00", [57 x i8] zeroinitializer }, align 32
@adm9240_init_client._entry_ptr.13 = internal global ptr @adm9240_init_client._entry.11, section ".printk_index", align 4
@adm9240_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @adm9240_is_visible, ptr @adm9240_read, ptr null, ptr @adm9240_write }, [16 x i8] zeroinitializer }, align 32
@adm9240_info = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.compoundliteral.22, ptr @.compoundliteral.24, ptr @.compoundliteral.26, ptr @.compoundliteral.28, ptr @.compoundliteral.30, ptr null], [40 x i8] zeroinitializer }, align 32
@nom_mv = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 2500, i16 2700, i16 3300, i16 5000, i16 12000, i16 2700], [20 x i8] zeroinitializer }, align 32
@adm9240_write_fan_div.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.5, ptr @.str.15, i8 0, i8 37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adm9240_write_fan_div\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"fan%d clock divider changed from %lu to %lu\0A\00", [51 x i8] zeroinitializer }, align 32
@adm9240_intrusion_write.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.16, ptr @.str.5, ptr @.str.17, i8 0, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"adm9240_intrusion_write\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"chassis intrusion latch cleared\0A\00", [63 x i8] zeroinitializer }, align 32
@adm9240_fan_min_write.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.5, ptr @.str.19, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adm9240_fan_min_write\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fan%u low limit set disabled\0A\00", [34 x i8] zeroinitializer }, align 32
@adm9240_fan_min_write.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.5, ptr @.str.20, i8 0, i8 46, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"fan%u low limit set minimum %u\0A\00", [32 x i8] zeroinitializer }, align 32
@adm9240_fan_min_write.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.5, ptr @.str.21, i8 0, i8 50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fan%u low limit set fan speed %u\0A\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 64, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 1, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 9, ptr @.compoundliteral.23 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 8578, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.25 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [7 x i32], [36 x i8] } { [7 x i32] [i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 0], [36 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral.27 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 298, i32 298, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral.29 }, [24 x i8] zeroinitializer }, align 32
@adm9240_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm9240_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@adm9240_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_aout_output, ptr @dev_attr_cpu0_vid, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_aout_output = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aout_output_show, ptr @aout_output_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aout_output\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds1780\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm81\00", [27 x i8] zeroinitializer }, align 32
@adm9240_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 306, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"found %s revision %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adm9240_detect\00", [17 x i8] zeroinitializer }, align 32
@adm9240_detect._entry_ptr = internal global ptr @adm9240_detect._entry, section ".printk_index", align 4
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADM9240\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DS1780\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LM81\00", [27 x i8] zeroinitializer }, align 32
@switch.table.adm9240_is_visible = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 292, i16 0, i16 420, i16 0, i16 292, i16 0, i16 0, i16 292], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 218]
@__sancov_gen_cov_switch_values.42 = internal global [17 x i64] [i64 15, i64 32, i64 25, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 39, i64 40, i64 41, i64 65, i64 66, i64 71, i64 73, i64 75]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 7, i64 9]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 7, i64 8, i64 13]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 7, i64 9]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 5, i64 8]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 7, i64 8, i64 13]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 7, i64 9]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 8]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.56 = private unnamed_addr constant [15 x i8] c"adm9240_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 811, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 814, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"adm9240_id\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 803, i32 35 }
@___asan_gen_.65 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 44, i32 29 }
@___asan_gen_.68 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 788, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [22 x i8] c"adm9240_regmap_config\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 768, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 789, i32 17 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"adm9240_chip_info\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 746, i32 37 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"adm9240_groups\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 329, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 334, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 368, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [18 x i8] c"adm9240_hwmon_ops\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 722, i32 31 }
@___asan_gen_.122 = private unnamed_addr constant [13 x i8] c"adm9240_info\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 728, i32 41 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"nom_mv\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 80, i32 18 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 149, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 431, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 179, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 184, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 199, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [14 x i8] c"adm9240_group\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 271, i32 1 }
@___asan_gen_.165 = private unnamed_addr constant [14 x i8] c"adm9240_attrs\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 265, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"dev_attr_aout_output\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 263, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 245, i32 22 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 232, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 296, i32 10 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 298, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.205 = private constant [27 x i8] c"../drivers/hwmon/adm9240.c\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 304, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [32 x i8] c"switch.table.adm9240_is_visible\00", align 1
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_adm9240_driver_exit, ptr @__initcall__kmod_adm9240__305_822_adm9240_driver_init6, ptr @adm9240_detect._entry, ptr @adm9240_detect._entry_ptr, ptr @adm9240_driver_exit, ptr @adm9240_init_client._entry, ptr @adm9240_init_client._entry.11, ptr @adm9240_init_client._entry.8, ptr @adm9240_init_client._entry_ptr, ptr @adm9240_init_client._entry_ptr.10, ptr @adm9240_init_client._entry_ptr.13, ptr @adm9240_driver, ptr @.str, ptr @adm9240_id, ptr @normal_i2c, ptr @adm9240_probe.__key, ptr @.str.1, ptr @adm9240_probe._key, ptr @adm9240_regmap_config, ptr @.str.2, ptr @adm9240_chip_info, ptr @adm9240_groups, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @adm9240_hwmon_ops, ptr @adm9240_info, ptr @nom_mv, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.compoundliteral, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @adm9240_group, ptr @adm9240_attrs, ptr @dev_attr_aout_output, ptr @dev_attr_cpu0_vid, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @switch.table.adm9240_is_visible], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_init_client._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_init_client._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nom_mv to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aout_output to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm9240_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.adm9240_is_visible to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm9240_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adm9240_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm9240_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @adm9240_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm9240_probe(ptr noundef %client) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  %conf.i = alloca i8, align 1
  %mode.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 104, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.adm9240_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adm9240_probe.__key) #8
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @adm9240_regmap_config, ptr noundef nonnull @adm9240_probe._key, ptr noundef nonnull @.str.2) #8
  %regmap = getelementptr inbounds %struct.adm9240_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %regval.i, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %conf.i) #8
  %4 = ptrtoint ptr %conf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %conf.i, align 1, !annotation !104
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode.i) #8
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %mode.i, align 1, !annotation !104
  %call.i30 = call i32 @regmap_raw_read(ptr noundef %call3, i32 noundef 64, ptr noundef nonnull %conf.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %if.end9.adm9240_init_client.exit.thread_crit_edge, label %if.end.i

if.end9.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end.i:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_raw_read(ptr noundef %7, i32 noundef 75, ptr noundef nonnull %mode.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.adm9240_init_client.exit.thread_crit_edge, label %if.end5.i

if.end.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %mode.i, align 1
  %10 = and i8 %9, 3
  store i8 %10, ptr %mode.i, align 1
  %call7.i = call zeroext i8 @vid_which_vrm() #8
  %vrm.i = getelementptr inbounds %struct.adm9240_data, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %vrm.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call7.i, ptr %vrm.i, align 2
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call7.i.frozen = freeze i8 %call7.i
  %div136.i = udiv i8 %call7.i.frozen, 10
  %div.zext.i = zext i8 %div136.i to i32
  %14 = mul i8 %div136.i, 10
  %rem137.i.decomposed = sub i8 %call7.i.frozen, %14
  %rem.zext.i = zext i8 %rem137.i.decomposed to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.3, i32 noundef %div.zext.i, i32 noundef %rem.zext.i) #11
  %15 = ptrtoint ptr %conf.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %conf.i, align 1
  %conv12.i = zext i8 %16 to i32
  %and13.i = and i32 %conv12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %for.body.preheader.i, label %do.end17.i

for.body.preheader.i:                             ; preds = %if.end5.i
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call24.i = call i32 @regmap_write(ptr noundef %18, i32 noundef 44, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %for.body.preheader.i.adm9240_init_client.exit.thread_crit_edge, label %if.end28.i

for.body.preheader.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

do.end17.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call.i, align 4
  %21 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mode.i, align 1
  %conv20.i = zext i8 %22 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.9, i32 noundef %conv12.i, i32 noundef %conv20.i) #11
  br label %if.end77.i

for.cond.i:                                       ; preds = %if.end28.i
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call24.1.i = call i32 @regmap_write(ptr noundef %24, i32 noundef 46, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1.i)
  %cmp25.1.i = icmp slt i32 %call24.1.i, 0
  br i1 %cmp25.1.i, label %for.cond.i.adm9240_init_client.exit.thread_crit_edge, label %if.end28.1.i

for.cond.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end28.1.i:                                     ; preds = %for.cond.i
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call32.1.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 45, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.1.i)
  %cmp33.1.i = icmp slt i32 %call32.1.i, 0
  br i1 %cmp33.1.i, label %if.end28.1.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond.1.i

if.end28.1.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end28.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond.1.i:                                     ; preds = %if.end28.1.i
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call24.2.i = call i32 @regmap_write(ptr noundef %28, i32 noundef 48, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.2.i)
  %cmp25.2.i = icmp slt i32 %call24.2.i, 0
  br i1 %cmp25.2.i, label %for.cond.1.i.adm9240_init_client.exit.thread_crit_edge, label %if.end28.2.i

for.cond.1.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end28.2.i:                                     ; preds = %for.cond.1.i
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call32.2.i = call i32 @regmap_write(ptr noundef %30, i32 noundef 47, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.2.i)
  %cmp33.2.i = icmp slt i32 %call32.2.i, 0
  br i1 %cmp33.2.i, label %if.end28.2.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond.2.i

if.end28.2.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end28.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond.2.i:                                     ; preds = %if.end28.2.i
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call24.3.i = call i32 @regmap_write(ptr noundef %32, i32 noundef 50, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.3.i)
  %cmp25.3.i = icmp slt i32 %call24.3.i, 0
  br i1 %cmp25.3.i, label %for.cond.2.i.adm9240_init_client.exit.thread_crit_edge, label %if.end28.3.i

for.cond.2.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end28.3.i:                                     ; preds = %for.cond.2.i
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call32.3.i = call i32 @regmap_write(ptr noundef %34, i32 noundef 49, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.3.i)
  %cmp33.3.i = icmp slt i32 %call32.3.i, 0
  br i1 %cmp33.3.i, label %if.end28.3.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond.3.i

if.end28.3.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end28.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond.3.i:                                     ; preds = %if.end28.3.i
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call24.4.i = call i32 @regmap_write(ptr noundef %36, i32 noundef 52, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.4.i)
  %cmp25.4.i = icmp slt i32 %call24.4.i, 0
  br i1 %cmp25.4.i, label %for.cond.3.i.adm9240_init_client.exit.thread_crit_edge, label %if.end28.4.i

for.cond.3.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end28.4.i:                                     ; preds = %for.cond.3.i
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call32.4.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 51, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.4.i)
  %cmp33.4.i = icmp slt i32 %call32.4.i, 0
  br i1 %cmp33.4.i, label %if.end28.4.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond.4.i

if.end28.4.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end28.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond.4.i:                                     ; preds = %if.end28.4.i
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call24.5.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 54, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.5.i)
  %cmp25.5.i = icmp slt i32 %call24.5.i, 0
  br i1 %cmp25.5.i, label %for.cond.4.i.adm9240_init_client.exit.thread_crit_edge, label %if.end28.5.i

for.cond.4.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end28.5.i:                                     ; preds = %for.cond.4.i
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call32.5.i = call i32 @regmap_write(ptr noundef %42, i32 noundef 53, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.5.i)
  %cmp33.5.i = icmp slt i32 %call32.5.i, 0
  br i1 %cmp33.5.i, label %if.end28.5.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond.5.i

if.end28.5.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end28.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond.5.i:                                     ; preds = %if.end28.5.i
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call43.i = call i32 @regmap_write(ptr noundef %44, i32 noundef 59, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %cmp44.i = icmp slt i32 %call43.i, 0
  br i1 %cmp44.i, label %for.cond.5.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond37.i

for.cond.5.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

if.end28.i:                                       ; preds = %for.body.preheader.i
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call32.i = call i32 @regmap_write(ptr noundef %46, i32 noundef 43, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end28.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond.i

if.end28.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond37.i:                                     ; preds = %for.cond.5.i
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call43.1.i = call i32 @regmap_write(ptr noundef %48, i32 noundef 60, i32 noundef 255) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.1.i)
  %cmp44.1.i = icmp slt i32 %call43.1.i, 0
  br i1 %cmp44.1.i, label %for.cond37.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond37.1.i

for.cond37.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond37.1.i:                                   ; preds = %for.cond37.i
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call57.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 57, i32 noundef 127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %for.cond37.1.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond51.i

for.cond37.1.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond37.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond51.i:                                     ; preds = %for.cond37.1.i
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call57.1.i = call i32 @regmap_write(ptr noundef %52, i32 noundef 58, i32 noundef 127) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.1.i)
  %cmp58.1.i = icmp slt i32 %call57.1.i, 0
  br i1 %cmp58.1.i, label %for.cond51.i.adm9240_init_client.exit.thread_crit_edge, label %for.cond51.1.i

for.cond51.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

for.cond51.1.i:                                   ; preds = %for.cond51.i
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call66.i = call i32 @regmap_write(ptr noundef %54, i32 noundef 64, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %cmp67.i = icmp slt i32 %call66.i, 0
  br i1 %cmp67.i, label %for.cond51.1.i.adm9240_init_client.exit.thread_crit_edge, label %cleanup.i

for.cond51.1.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %for.cond51.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

cleanup.i:                                        ; preds = %for.cond51.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %57 = ptrtoint ptr %conf.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %conf.i, align 1
  %conv75.i = zext i8 %58 to i32
  %59 = ptrtoint ptr %mode.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %mode.i, align 1
  %conv76.i = zext i8 %60 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.12, i32 noundef %conv75.i, i32 noundef %conv76.i) #11
  br label %if.end77.i

if.end77.i:                                       ; preds = %cleanup.i, %do.end17.i
  %61 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap, align 4
  %call79.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 71, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %cmp80.i = icmp slt i32 %call79.i, 0
  br i1 %cmp80.i, label %if.end77.i.adm9240_init_client.exit.thread_crit_edge, label %if.end12

if.end77.i.adm9240_init_client.exit.thread_crit_edge: ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_init_client.exit.thread

adm9240_init_client.exit.thread:                  ; preds = %if.end77.i.adm9240_init_client.exit.thread_crit_edge, %for.cond51.1.i.adm9240_init_client.exit.thread_crit_edge, %for.cond51.i.adm9240_init_client.exit.thread_crit_edge, %for.cond37.1.i.adm9240_init_client.exit.thread_crit_edge, %for.cond37.i.adm9240_init_client.exit.thread_crit_edge, %if.end28.i.adm9240_init_client.exit.thread_crit_edge, %for.cond.5.i.adm9240_init_client.exit.thread_crit_edge, %if.end28.5.i.adm9240_init_client.exit.thread_crit_edge, %for.cond.4.i.adm9240_init_client.exit.thread_crit_edge, %if.end28.4.i.adm9240_init_client.exit.thread_crit_edge, %for.cond.3.i.adm9240_init_client.exit.thread_crit_edge, %if.end28.3.i.adm9240_init_client.exit.thread_crit_edge, %for.cond.2.i.adm9240_init_client.exit.thread_crit_edge, %if.end28.2.i.adm9240_init_client.exit.thread_crit_edge, %for.cond.1.i.adm9240_init_client.exit.thread_crit_edge, %if.end28.1.i.adm9240_init_client.exit.thread_crit_edge, %for.cond.i.adm9240_init_client.exit.thread_crit_edge, %for.body.preheader.i.adm9240_init_client.exit.thread_crit_edge, %if.end.i.adm9240_init_client.exit.thread_crit_edge, %if.end9.adm9240_init_client.exit.thread_crit_edge
  %retval.1.i.ph = phi i32 [ %call32.5.i, %if.end28.5.i.adm9240_init_client.exit.thread_crit_edge ], [ %call24.5.i, %for.cond.4.i.adm9240_init_client.exit.thread_crit_edge ], [ %call32.4.i, %if.end28.4.i.adm9240_init_client.exit.thread_crit_edge ], [ %call24.4.i, %for.cond.3.i.adm9240_init_client.exit.thread_crit_edge ], [ %call32.3.i, %if.end28.3.i.adm9240_init_client.exit.thread_crit_edge ], [ %call24.3.i, %for.cond.2.i.adm9240_init_client.exit.thread_crit_edge ], [ %call32.2.i, %if.end28.2.i.adm9240_init_client.exit.thread_crit_edge ], [ %call24.2.i, %for.cond.1.i.adm9240_init_client.exit.thread_crit_edge ], [ %call32.1.i, %if.end28.1.i.adm9240_init_client.exit.thread_crit_edge ], [ %call24.1.i, %for.cond.i.adm9240_init_client.exit.thread_crit_edge ], [ %call24.i, %for.body.preheader.i.adm9240_init_client.exit.thread_crit_edge ], [ %call32.i, %if.end28.i.adm9240_init_client.exit.thread_crit_edge ], [ %call43.1.i, %for.cond37.i.adm9240_init_client.exit.thread_crit_edge ], [ %call43.i, %for.cond.5.i.adm9240_init_client.exit.thread_crit_edge ], [ %call57.1.i, %for.cond51.i.adm9240_init_client.exit.thread_crit_edge ], [ %call57.i, %for.cond37.1.i.adm9240_init_client.exit.thread_crit_edge ], [ %call66.i, %for.cond51.1.i.adm9240_init_client.exit.thread_crit_edge ], [ %call79.i, %if.end77.i.adm9240_init_client.exit.thread_crit_edge ], [ %call2.i, %if.end.i.adm9240_init_client.exit.thread_crit_edge ], [ %call.i30, %if.end9.adm9240_init_client.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %regval.i, align 4
  %65 = trunc i32 %64 to i8
  %66 = lshr i8 %65, 4
  %conv85.i = and i8 %66, 3
  %fan_div.i = getelementptr inbounds %struct.adm9240_data, ptr %call.i, i32 0, i32 3
  %67 = ptrtoint ptr %fan_div.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv85.i, ptr %fan_div.i, align 4
  %68 = lshr i8 %65, 6
  %arrayidx90.i = getelementptr %struct.adm9240_data, ptr %call.i, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %arrayidx90.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %arrayidx90.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %conf.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call13 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @adm9240_chip_info, ptr noundef nonnull @adm9240_groups) #8
  %cmp.i.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %70 = ptrtoint ptr %call13 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %70, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %adm9240_init_client.exit.thread, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %spec.select.i, %if.end12 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.1.i.ph, %adm9240_init_client.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm9240_detect(ptr noundef %new_client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %3 to i32
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 72) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %conv)
  %cmp.not = icmp eq i32 %call2, %conv
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 62) #8
  %conv8 = and i32 %call6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 35, i32 %conv8)
  %cmp9 = icmp eq i32 %conv8, 35
  br i1 %cmp9, label %if.end5.if.end24_crit_edge, label %if.else

if.end5.if.end24_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else:                                          ; preds = %if.end5
  %trunc = trunc i32 %call6 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.else.cleanup_crit_edge [
    i8 -38, label %if.else.if.end24_crit_edge
    i8 1, label %if.then20
  ]

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %if.else.if.end24_crit_edge, %if.end5.if.end24_crit_edge
  %name.0 = phi ptr [ @.str.36, %if.then20 ], [ @.str, %if.end5.if.end24_crit_edge ], [ @.str.35, %if.else.if.end24_crit_edge ]
  %call25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 63) #8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 218, i32 %conv8)
  %cmp31 = icmp eq i32 %conv8, 218
  %cond = select i1 %cmp31, ptr @.str.40, ptr @.str.41
  %cond33 = select i1 %cmp9, ptr @.str.39, ptr %cond
  %conv34 = and i32 %call25, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond33, i32 noundef %conv34) #11
  %call35 = tail call i32 @strscpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @adm9240_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %reg, label %sw.default [
    i32 39, label %entry.return_crit_edge
    i32 75, label %entry.return_crit_edge4
    i32 71, label %entry.return_crit_edge5
    i32 73, label %entry.return_crit_edge6
    i32 25, label %entry.return_crit_edge7
    i32 65, label %entry.return_crit_edge8
    i32 66, label %entry.return_crit_edge9
    i32 40, label %entry.return_crit_edge10
    i32 41, label %entry.return_crit_edge11
    i32 32, label %entry.return_crit_edge12
    i32 33, label %entry.return_crit_edge13
    i32 34, label %entry.return_crit_edge14
    i32 35, label %entry.return_crit_edge15
    i32 36, label %entry.return_crit_edge16
    i32 37, label %entry.return_crit_edge17
  ]

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @adm9240_is_visible(ptr nocapture noundef readnone %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %type, label %entry.sw.epilog22_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb2
    i32 1, label %sw.bb6
    i32 7, label %sw.bb11
    i32 2, label %sw.bb16
  ]

entry.sw.epilog22_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %attr)
  %cond23 = icmp eq i32 %attr, 6
  %spec.select = select i1 %cond23, i16 292, i16 0
  br label %sw.epilog22

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond = icmp eq i32 %attr, 0
  %spec.select28 = select i1 %cond, i16 420, i16 0
  br label %sw.epilog22

sw.bb6:                                           ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %attr, label %sw.bb6.sw.epilog22_crit_edge [
    i32 1, label %sw.bb6.sw.bb7_crit_edge
    i32 13, label %sw.bb6.sw.bb7_crit_edge29
    i32 7, label %sw.bb6.sw.bb8_crit_edge
    i32 8, label %sw.bb6.sw.bb8_crit_edge30
  ]

sw.bb6.sw.bb8_crit_edge30:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb6.sw.bb8_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

sw.bb6.sw.bb7_crit_edge29:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

sw.bb6.sw.bb7_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

sw.bb6.sw.epilog22_crit_edge:                     ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb7:                                           ; preds = %sw.bb6.sw.bb7_crit_edge, %sw.bb6.sw.bb7_crit_edge29
  br label %sw.epilog22

sw.bb8:                                           ; preds = %sw.bb6.sw.bb8_crit_edge, %sw.bb6.sw.bb8_crit_edge30
  br label %sw.epilog22

sw.bb11:                                          ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 8
  br i1 %2, label %switch.lookup, label %sw.bb11.sw.epilog22_crit_edge

sw.bb11.sw.epilog22_crit_edge:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb16:                                          ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %attr, label %sw.bb16.sw.epilog22_crit_edge [
    i32 1, label %sw.bb16.sw.bb17_crit_edge
    i32 11, label %sw.bb16.sw.bb17_crit_edge31
    i32 2, label %sw.bb16.sw.bb18_crit_edge
    i32 3, label %sw.bb16.sw.bb18_crit_edge32
  ]

sw.bb16.sw.bb18_crit_edge32:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

sw.bb16.sw.bb18_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

sw.bb16.sw.bb17_crit_edge31:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.bb16.sw.bb17_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb17

sw.bb16.sw.epilog22_crit_edge:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog22

sw.bb17:                                          ; preds = %sw.bb16.sw.bb17_crit_edge, %sw.bb16.sw.bb17_crit_edge31
  br label %sw.epilog22

sw.bb18:                                          ; preds = %sw.bb16.sw.bb18_crit_edge, %sw.bb16.sw.bb18_crit_edge32
  br label %sw.epilog22

switch.lookup:                                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.adm9240_is_visible, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %4)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %switch.lookup, %sw.bb18, %sw.bb17, %sw.bb16.sw.epilog22_crit_edge, %sw.bb11.sw.epilog22_crit_edge, %sw.bb8, %sw.bb7, %sw.bb6.sw.epilog22_crit_edge, %sw.bb2, %sw.bb, %entry.sw.epilog22_crit_edge
  %mode.0 = phi i16 [ 0, %entry.sw.epilog22_crit_edge ], [ 0, %sw.bb16.sw.epilog22_crit_edge ], [ 420, %sw.bb18 ], [ 292, %sw.bb17 ], [ 0, %sw.bb11.sw.epilog22_crit_edge ], [ 0, %sw.bb6.sw.epilog22_crit_edge ], [ 420, %sw.bb8 ], [ 292, %sw.bb7 ], [ %spec.select, %sw.bb ], [ %spec.select28, %sw.bb2 ], [ %switch.load, %switch.lookup ]
  ret i16 %mode.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm9240_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval.i50 = alloca i32, align 4
  %regval.i37 = alloca i32, align 4
  %regval.i31 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %regs.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %sw.bb1
    i32 2, label %sw.bb3
    i32 7, label %sw.bb5
    i32 1, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regs.i) #8
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %regs.i, align 1, !annotation !104
  %4 = getelementptr inbounds [2 x i8], ptr %regs.i, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %4, align 1, !annotation !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %attr)
  %cond.i = icmp eq i32 %attr, 6
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.adm9240_chip_read.exit_crit_edge

sw.bb.adm9240_chip_read.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_chip_read.exit

sw.bb.i:                                          ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.adm9240_data, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 65, ptr noundef nonnull %regs.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.i.adm9240_chip_read.exit_crit_edge, label %if.end.i

sw.bb.i.adm9240_chip_read.exit_crit_edge:         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_chip_read.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %regs.i, align 1
  %conv.i = zext i8 %9 to i32
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %4, align 1
  %conv3.i = zext i8 %11 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %or.i = or i32 %shl.i, %conv.i
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or.i, ptr %val, align 4
  br label %adm9240_chip_read.exit

adm9240_chip_read.exit:                           ; preds = %if.end.i, %sw.bb.i.adm9240_chip_read.exit_crit_edge, %sw.bb.adm9240_chip_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call1.i, %sw.bb.i.adm9240_chip_read.exit_crit_edge ], [ -95, %sw.bb.adm9240_chip_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regs.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i23 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %13 = ptrtoint ptr %driver_data.i.i23 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i23, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %15 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %regval.i, align 4, !annotation !104
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond.i24 = icmp eq i32 %attr, 0
  br i1 %cond.i24, label %sw.bb.i28, label %sw.bb1.adm9240_intrusion_read.exit_crit_edge

sw.bb1.adm9240_intrusion_read.exit_crit_edge:     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_intrusion_read.exit

sw.bb.i28:                                        ; preds = %sw.bb1
  %regmap.i25 = getelementptr inbounds %struct.adm9240_data, ptr %14, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i25, align 4
  %call1.i26 = call i32 @regmap_read(ptr noundef %17, i32 noundef 66, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i26)
  %cmp.i27 = icmp slt i32 %call1.i26, 0
  br i1 %cmp.i27, label %sw.bb.i28.adm9240_intrusion_read.exit_crit_edge, label %if.end.i29

sw.bb.i28.adm9240_intrusion_read.exit_crit_edge:  ; preds = %sw.bb.i28
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_intrusion_read.exit

if.end.i29:                                       ; preds = %sw.bb.i28
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %regval.i, align 4
  %and.i = lshr i32 %19, 4
  %and.lobit.i = and i32 %and.i, 1
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and.lobit.i, ptr %val, align 4
  br label %adm9240_intrusion_read.exit

adm9240_intrusion_read.exit:                      ; preds = %if.end.i29, %sw.bb.i28.adm9240_intrusion_read.exit_crit_edge, %sw.bb1.adm9240_intrusion_read.exit_crit_edge
  %retval.0.i30 = phi i32 [ 0, %if.end.i29 ], [ %call1.i26, %sw.bb.i28.adm9240_intrusion_read.exit_crit_edge ], [ -95, %sw.bb1.adm9240_intrusion_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i32 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %21 = ptrtoint ptr %driver_data.i.i32 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %driver_data.i.i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i31) #8
  %23 = ptrtoint ptr %regval.i31 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %regval.i31, align 4, !annotation !104
  %24 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %attr, label %sw.bb3.adm9240_in_read.exit_crit_edge [
    i32 1, label %sw.bb.i33
    i32 2, label %sw.bb1.i
    i32 3, label %sw.bb3.i
    i32 11, label %sw.bb6.i
  ]

sw.bb3.adm9240_in_read.exit_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_in_read.exit

sw.bb.i33:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %channel, 32
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = shl i32 %channel, 1
  %add2.i = add i32 %mul.i, 44
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %mul4.i = shl i32 %channel, 1
  %add5.i = add i32 %mul4.i, 43
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %channel)
  %cmp.i34 = icmp slt i32 %channel, 4
  %reg.0.i = select i1 %cmp.i34, i32 65, i32 66
  %regmap.i35 = getelementptr inbounds %struct.adm9240_data, ptr %22, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i35, align 4
  %call7.i = call i32 @regmap_read(ptr noundef %26, i32 noundef %reg.0.i, ptr noundef nonnull %regval.i31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %sw.bb6.i.adm9240_in_read.exit_crit_edge, label %if.end10.i

sw.bb6.i.adm9240_in_read.exit_crit_edge:          ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_in_read.exit

if.end10.i:                                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = add i32 %channel, -4
  %channel.addr.0.i = select i1 %cmp.i34, i32 %channel, i32 %sub.i
  %27 = ptrtoint ptr %regval.i31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval.i31, align 4
  %29 = lshr i32 %28, %channel.addr.0.i
  %30 = and i32 %29, 1
  br label %cleanup.sink.split.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb1.i, %sw.bb.i33
  %reg.1.i = phi i32 [ %add5.i, %sw.bb3.i ], [ %add2.i, %sw.bb1.i ], [ %add.i, %sw.bb.i33 ]
  %regmap12.i = getelementptr inbounds %struct.adm9240_data, ptr %22, i32 0, i32 1
  %31 = ptrtoint ptr %regmap12.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap12.i, align 4
  %call13.i = call i32 @regmap_read(ptr noundef %32, i32 noundef %reg.1.i, ptr noundef nonnull %regval.i31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %sw.epilog.i.adm9240_in_read.exit_crit_edge, label %if.end16.i

sw.epilog.i.adm9240_in_read.exit_crit_edge:       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_in_read.exit

if.end16.i:                                       ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %regval.i31 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regval.i31, align 4
  %conv.i.i = and i32 %34, 255
  %arrayidx.i.i = getelementptr [6 x i16], ptr @nom_mv, i32 0, i32 %channel
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %arrayidx.i.i, align 2
  %conv1.i.i = zext i16 %36 to i32
  %mul1.i.i.i = mul nuw nsw i32 %conv.i.i, %conv1.i.i
  %add.i.i.i = add nuw nsw i32 %mul1.i.i.i, 96
  %retval.0.i2.i.i = udiv i32 %add.i.i.i, 192
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end16.i, %if.end10.i
  %retval.0.i2.i.sink.i = phi i32 [ %retval.0.i2.i.i, %if.end16.i ], [ %30, %if.end10.i ]
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i2.i.sink.i, ptr %val, align 4
  br label %adm9240_in_read.exit

adm9240_in_read.exit:                             ; preds = %cleanup.sink.split.i, %sw.epilog.i.adm9240_in_read.exit_crit_edge, %sw.bb6.i.adm9240_in_read.exit_crit_edge, %sw.bb3.adm9240_in_read.exit_crit_edge
  %retval.0.i36 = phi i32 [ %call7.i, %sw.bb6.i.adm9240_in_read.exit_crit_edge ], [ -95, %sw.bb3.adm9240_in_read.exit_crit_edge ], [ %call13.i, %sw.epilog.i.adm9240_in_read.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i31) #8
  br label %return

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i38 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i38 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i38, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i37) #8
  %40 = ptrtoint ptr %regval.i37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %regval.i37, align 4, !annotation !104
  %41 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %attr, label %sw.bb5.adm9240_fan_read.exit_crit_edge [
    i32 1, label %sw.bb.i43
    i32 5, label %sw.bb18.i
    i32 3, label %sw.bb23.i
    i32 8, label %sw.bb38.i
  ]

sw.bb5.adm9240_fan_read.exit_crit_edge:           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_fan_read.exit

sw.bb.i43:                                        ; preds = %sw.bb5
  %regmap.i39 = getelementptr inbounds %struct.adm9240_data, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %regmap.i39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i39, align 4
  %add.i40 = add i32 %channel, 40
  %call1.i41 = call i32 @regmap_read(ptr noundef %43, i32 noundef %add.i40, ptr noundef nonnull %regval.i37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %cmp.i42 = icmp slt i32 %call1.i41, 0
  br i1 %cmp.i42, label %sw.bb.i43.adm9240_fan_read.exit_crit_edge, label %if.end.i44

sw.bb.i43.adm9240_fan_read.exit_crit_edge:        ; preds = %sw.bb.i43
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_fan_read.exit

if.end.i44:                                       ; preds = %sw.bb.i43
  %44 = ptrtoint ptr %regval.i37 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %regval.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %45)
  %cmp2.i = icmp eq i32 %45, 255
  br i1 %cmp2.i, label %land.lhs.true.i, label %if.end.i44.if.end11.i_crit_edge

if.end.i44.if.end11.i_crit_edge:                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

land.lhs.true.i:                                  ; preds = %if.end.i44
  %arrayidx.i = getelementptr %struct.adm9240_data, ptr %39, i32 0, i32 3, i32 %channel
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %47)
  %cmp3.i = icmp ult i8 %47, 3
  br i1 %cmp3.i, label %if.then5.i, label %land.lhs.true.i.if.end11.i_crit_edge

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %inc.i = add nuw nsw i8 %47, 1
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %inc.i, ptr %arrayidx.i, align 1
  %call8.i = call fastcc i32 @adm9240_write_fan_div(ptr noundef %39, i32 noundef %channel, i8 noundef zeroext %inc.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.then5.i.if.end11.i_crit_edge, label %if.then5.i.adm9240_fan_read.exit_crit_edge

if.then5.i.adm9240_fan_read.exit_crit_edge:       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_fan_read.exit

if.then5.i.if.end11.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then5.i.if.end11.i_crit_edge, %land.lhs.true.i.if.end11.i_crit_edge, %if.end.i44.if.end11.i_crit_edge
  %49 = ptrtoint ptr %regval.i37 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %regval.i37, align 4
  %conv12.i = trunc i32 %50 to i8
  %51 = zext i8 %conv12.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %conv12.i, label %if.end3.i.i [
    i8 0, label %if.end11.i.cleanup.sink.split.i48_crit_edge
    i8 -1, label %if.then2.i.i
  ]

if.end11.i.cleanup.sink.split.i48_crit_edge:      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

if.then2.i.i:                                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

if.end3.i.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx14.i = getelementptr %struct.adm9240_data, ptr %39, i32 0, i32 3, i32 %channel
  %52 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx14.i, align 1
  %conv15.i = zext i8 %53 to i32
  %shl.i45 = shl nuw i32 1, %conv15.i
  %conv.i.i46 = and i32 %50, 255
  %conv5.i.i = and i32 %shl.i45, 255
  %mul.i.i = mul nuw nsw i32 %conv5.i.i, %conv.i.i46
  %div5.i8911.i.i = lshr i32 %mul.i.i, 1
  %add.i.i.i47 = add nuw nsw i32 %div5.i8911.i.i, 1350000
  %retval.0.i10.i.i = udiv i32 %add.i.i.i47, %mul.i.i
  br label %cleanup.sink.split.i48

sw.bb18.i:                                        ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx20.i = getelementptr %struct.adm9240_data, ptr %39, i32 0, i32 3, i32 %channel
  %54 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %55 to i32
  %shl22.i = shl nuw i32 1, %conv21.i
  br label %cleanup.sink.split.i48

sw.bb23.i:                                        ; preds = %sw.bb5
  %regmap24.i = getelementptr inbounds %struct.adm9240_data, ptr %39, i32 0, i32 1
  %56 = ptrtoint ptr %regmap24.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap24.i, align 4
  %add25.i = add i32 %channel, 59
  %call26.i = call i32 @regmap_read(ptr noundef %57, i32 noundef %add25.i, ptr noundef nonnull %regval.i37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp27.i = icmp slt i32 %call26.i, 0
  br i1 %cmp27.i, label %sw.bb23.i.adm9240_fan_read.exit_crit_edge, label %if.end30.i

sw.bb23.i.adm9240_fan_read.exit_crit_edge:        ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_fan_read.exit

if.end30.i:                                       ; preds = %sw.bb23.i
  %58 = ptrtoint ptr %regval.i37 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %regval.i37, align 4
  %conv31.i = trunc i32 %59 to i8
  %60 = zext i8 %conv31.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %conv31.i, label %if.end3.i84.i [
    i8 0, label %if.end30.i.cleanup.sink.split.i48_crit_edge
    i8 -1, label %if.then2.i77.i
  ]

if.end30.i.cleanup.sink.split.i48_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

if.then2.i77.i:                                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i48

if.end3.i84.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx33.i = getelementptr %struct.adm9240_data, ptr %39, i32 0, i32 3, i32 %channel
  %61 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %62 to i32
  %shl35.i = shl nuw i32 1, %conv34.i
  %conv.i78.i = and i32 %59, 255
  %conv5.i79.i = and i32 %shl35.i, 255
  %mul.i80.i = mul nuw nsw i32 %conv5.i79.i, %conv.i78.i
  %div5.i8911.i81.i = lshr i32 %mul.i80.i, 1
  %add.i.i82.i = add nuw nsw i32 %div5.i8911.i81.i, 1350000
  %retval.0.i10.i83.i = udiv i32 %add.i.i82.i, %mul.i80.i
  br label %cleanup.sink.split.i48

sw.bb38.i:                                        ; preds = %sw.bb5
  %regmap39.i = getelementptr inbounds %struct.adm9240_data, ptr %39, i32 0, i32 1
  %63 = ptrtoint ptr %regmap39.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap39.i, align 4
  %call40.i = call i32 @regmap_read(ptr noundef %64, i32 noundef 65, ptr noundef nonnull %regval.i37) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %sw.bb38.i.adm9240_fan_read.exit_crit_edge, label %if.end44.i

sw.bb38.i.adm9240_fan_read.exit_crit_edge:        ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_fan_read.exit

if.end44.i:                                       ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %regval.i37 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %regval.i37, align 4
  %add45.i = add i32 %channel, 6
  %67 = lshr i32 %66, %add45.i
  %68 = and i32 %67, 1
  br label %cleanup.sink.split.i48

cleanup.sink.split.i48:                           ; preds = %if.end44.i, %if.end3.i84.i, %if.then2.i77.i, %if.end30.i.cleanup.sink.split.i48_crit_edge, %sw.bb18.i, %if.end3.i.i, %if.then2.i.i, %if.end11.i.cleanup.sink.split.i48_crit_edge
  %retval.0.i.sink.i = phi i32 [ %shl22.i, %sw.bb18.i ], [ %68, %if.end44.i ], [ 0, %if.then2.i.i ], [ %retval.0.i10.i.i, %if.end3.i.i ], [ -1, %if.end11.i.cleanup.sink.split.i48_crit_edge ], [ 0, %if.then2.i77.i ], [ %retval.0.i10.i83.i, %if.end3.i84.i ], [ -1, %if.end30.i.cleanup.sink.split.i48_crit_edge ]
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.0.i.sink.i, ptr %val, align 4
  br label %adm9240_fan_read.exit

adm9240_fan_read.exit:                            ; preds = %cleanup.sink.split.i48, %sw.bb38.i.adm9240_fan_read.exit_crit_edge, %sw.bb23.i.adm9240_fan_read.exit_crit_edge, %if.then5.i.adm9240_fan_read.exit_crit_edge, %sw.bb.i43.adm9240_fan_read.exit_crit_edge, %sw.bb5.adm9240_fan_read.exit_crit_edge
  %retval.0.i49 = phi i32 [ %call1.i41, %sw.bb.i43.adm9240_fan_read.exit_crit_edge ], [ %call8.i, %if.then5.i.adm9240_fan_read.exit_crit_edge ], [ %call26.i, %sw.bb23.i.adm9240_fan_read.exit_crit_edge ], [ %call40.i, %sw.bb38.i.adm9240_fan_read.exit_crit_edge ], [ -95, %sw.bb5.adm9240_fan_read.exit_crit_edge ], [ 0, %cleanup.sink.split.i48 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i37) #8
  br label %return

sw.bb7:                                           ; preds = %entry
  %driver_data.i.i51 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %70 = ptrtoint ptr %driver_data.i.i51 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %driver_data.i.i51, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i50) #8
  %72 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %regval.i50, align 4, !annotation !104
  %73 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %attr, label %sw.bb7.adm9240_temp_read.exit_crit_edge [
    i32 1, label %sw.bb.i55
    i32 7, label %sw.bb8.i
    i32 8, label %sw.bb16.i
    i32 13, label %sw.bb26.i
  ]

sw.bb7.adm9240_temp_read.exit_crit_edge:          ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_temp_read.exit

sw.bb.i55:                                        ; preds = %sw.bb7
  %regmap.i52 = getelementptr inbounds %struct.adm9240_data, ptr %71, i32 0, i32 1
  %74 = ptrtoint ptr %regmap.i52 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i52, align 4
  %call1.i53 = call i32 @regmap_read(ptr noundef %75, i32 noundef 39, ptr noundef nonnull %regval.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %cmp.i54 = icmp slt i32 %call1.i53, 0
  br i1 %cmp.i54, label %sw.bb.i55.adm9240_temp_read.exit_crit_edge, label %if.end.i56

sw.bb.i55.adm9240_temp_read.exit_crit_edge:       ; preds = %sw.bb.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_temp_read.exit

if.end.i56:                                       ; preds = %sw.bb.i55
  %76 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %regval.i50, align 4
  %78 = ptrtoint ptr %regmap.i52 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i52, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %79, i32 noundef 75, ptr noundef nonnull %regval.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i56.adm9240_temp_read.exit_crit_edge, label %if.end6.i

if.end.i56.adm9240_temp_read.exit_crit_edge:      ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_temp_read.exit

if.end6.i:                                        ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %regval.i50, align 4
  %82 = shl i32 %77, 24
  %83 = shl i32 %81, 16
  %84 = and i32 %83, -8388608
  %shl.i.i = or i32 %84, %82
  %shr.i.i = ashr exact i32 %shl.i.i, 23
  %mul.i57 = mul nsw i32 %shr.i.i, 500
  br label %cleanup.sink.split.i60

sw.bb8.i:                                         ; preds = %sw.bb7
  %regmap9.i = getelementptr inbounds %struct.adm9240_data, ptr %71, i32 0, i32 1
  %85 = ptrtoint ptr %regmap9.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap9.i, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %86, i32 noundef 57, ptr noundef nonnull %regval.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %sw.bb8.i.adm9240_temp_read.exit_crit_edge, label %if.end13.i

sw.bb8.i.adm9240_temp_read.exit_crit_edge:        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_temp_read.exit

if.end13.i:                                       ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %regval.i50, align 4
  %sext1.i = shl i32 %88, 24
  %conv14.i = ashr exact i32 %sext1.i, 24
  %mul15.i = mul nsw i32 %conv14.i, 1000
  br label %cleanup.sink.split.i60

sw.bb16.i:                                        ; preds = %sw.bb7
  %regmap17.i = getelementptr inbounds %struct.adm9240_data, ptr %71, i32 0, i32 1
  %89 = ptrtoint ptr %regmap17.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap17.i, align 4
  %call18.i = call i32 @regmap_read(ptr noundef %90, i32 noundef 58, ptr noundef nonnull %regval.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %sw.bb16.i.adm9240_temp_read.exit_crit_edge, label %if.end22.i

sw.bb16.i.adm9240_temp_read.exit_crit_edge:       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_temp_read.exit

if.end22.i:                                       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %regval.i50, align 4
  %sext.i = shl i32 %92, 24
  %conv24.i = ashr exact i32 %sext.i, 24
  %mul25.i = mul nsw i32 %conv24.i, 1000
  br label %cleanup.sink.split.i60

sw.bb26.i:                                        ; preds = %sw.bb7
  %regmap27.i = getelementptr inbounds %struct.adm9240_data, ptr %71, i32 0, i32 1
  %93 = ptrtoint ptr %regmap27.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap27.i, align 4
  %call28.i = call i32 @regmap_read(ptr noundef %94, i32 noundef 65, ptr noundef nonnull %regval.i50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %sw.bb26.i.adm9240_temp_read.exit_crit_edge, label %if.end32.i

sw.bb26.i.adm9240_temp_read.exit_crit_edge:       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adm9240_temp_read.exit

if.end32.i:                                       ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %regval.i50 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %regval.i50, align 4
  %and.i58 = lshr i32 %96, 4
  %and.lobit.i59 = and i32 %and.i58, 1
  br label %cleanup.sink.split.i60

cleanup.sink.split.i60:                           ; preds = %if.end32.i, %if.end22.i, %if.end13.i, %if.end6.i
  %mul.sink.i = phi i32 [ %mul.i57, %if.end6.i ], [ %mul15.i, %if.end13.i ], [ %mul25.i, %if.end22.i ], [ %and.lobit.i59, %if.end32.i ]
  %97 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %mul.sink.i, ptr %val, align 4
  br label %adm9240_temp_read.exit

adm9240_temp_read.exit:                           ; preds = %cleanup.sink.split.i60, %sw.bb26.i.adm9240_temp_read.exit_crit_edge, %sw.bb16.i.adm9240_temp_read.exit_crit_edge, %sw.bb8.i.adm9240_temp_read.exit_crit_edge, %if.end.i56.adm9240_temp_read.exit_crit_edge, %sw.bb.i55.adm9240_temp_read.exit_crit_edge, %sw.bb7.adm9240_temp_read.exit_crit_edge
  %retval.0.i61 = phi i32 [ %call1.i53, %sw.bb.i55.adm9240_temp_read.exit_crit_edge ], [ %call3.i, %if.end.i56.adm9240_temp_read.exit_crit_edge ], [ %call10.i, %sw.bb8.i.adm9240_temp_read.exit_crit_edge ], [ %call18.i, %sw.bb16.i.adm9240_temp_read.exit_crit_edge ], [ %call28.i, %sw.bb26.i.adm9240_temp_read.exit_crit_edge ], [ -95, %sw.bb7.adm9240_temp_read.exit_crit_edge ], [ 0, %cleanup.sink.split.i60 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i50) #8
  br label %return

return:                                           ; preds = %adm9240_temp_read.exit, %adm9240_fan_read.exit, %adm9240_in_read.exit, %adm9240_intrusion_read.exit, %adm9240_chip_read.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i61, %adm9240_temp_read.exit ], [ %retval.0.i49, %adm9240_fan_read.exit ], [ %retval.0.i36, %adm9240_in_read.exit ], [ %retval.0.i30, %adm9240_intrusion_read.exit ], [ %retval.0.i, %adm9240_chip_read.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm9240_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %type, label %entry.return_crit_edge [
    i32 9, label %sw.bb
    i32 2, label %sw.bb1
    i32 7, label %sw.bb3
    i32 1, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %cond.i = icmp eq i32 %attr, 0
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not.i = icmp eq i32 %val, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.i.return_crit_edge

sw.bb.i.return_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %sw.bb.i
  %regmap.i = getelementptr inbounds %struct.adm9240_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 70, i32 noundef 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.return_crit_edge, label %do.body.i

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm9240_intrusion_write.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm9240_write, %return)) #8
          to label %if.then9.i [label %return], !srcloc !105

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm9240_intrusion_write.__UNIQUE_ID_ddebug304, ptr noundef %6, ptr noundef nonnull @.str.17) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i18 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i18 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i18, align 4
  %9 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 2, label %sw.bb1.sw.epilog.i_crit_edge
    i32 3, label %sw.bb1.i
  ]

sw.bb1.sw.epilog.i_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb1.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 43, %sw.bb1.i ], [ 44, %sw.bb1.sw.epilog.i_crit_edge ]
  %mul2.i = shl i32 %channel, 1
  %add3.i = add i32 %.sink.i, %mul2.i
  %regmap.i19 = getelementptr inbounds %struct.adm9240_data, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i19, align 4
  %arrayidx.i.i = getelementptr [6 x i16], ptr @nom_mv, i32 0, i32 %channel
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 255
  %div.i.i = udiv i32 %mul.i.i, 192
  %14 = tail call i32 @llvm.umin.i32(i32 %div.i.i, i32 %val) #8
  %mul1.i.i.i = mul nuw nsw i32 %14, 192
  %div5.i171820.i.i = lshr i16 %13, 1
  %div5.i17.zext.i.i = zext i16 %div5.i171820.i.i to i32
  %add.i.i.i = add nuw nsw i32 %mul1.i.i.i, %div5.i17.zext.i.i
  %retval.0.i19.i.i = udiv i32 %add.i.i.i, %conv.i.i
  %conv.i = and i32 %retval.0.i19.i.i, 255
  %call5.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add3.i, i32 noundef %conv.i) #8
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %attr)
  %cond.i21 = icmp eq i32 %attr, 3
  br i1 %cond.i21, label %sw.bb.i24, label %sw.bb3.return_crit_edge

sw.bb3.return_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i24:                                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i22 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %15 = ptrtoint ptr %driver_data.i.i22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i22, align 4
  %call1.i23 = tail call fastcc i32 @adm9240_fan_min_write(ptr noundef %16, i32 noundef %channel, i32 noundef %val) #8
  %17 = tail call i32 @llvm.smin.i32(i32 %call1.i23, i32 0) #8
  br label %return

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i26 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i26, align 4
  %20 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %attr, label %sw.bb5.return_crit_edge [
    i32 7, label %sw.bb5.sw.epilog.i30_crit_edge
    i32 8, label %sw.bb1.i27
  ]

sw.bb5.sw.epilog.i30_crit_edge:                   ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i30

sw.bb5.return_crit_edge:                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1.i27:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i30

sw.epilog.i30:                                    ; preds = %sw.bb1.i27, %sw.bb5.sw.epilog.i30_crit_edge
  %reg.0.i = phi i32 [ 58, %sw.bb1.i27 ], [ 57, %sw.bb5.sw.epilog.i30_crit_edge ]
  %regmap.i28 = getelementptr inbounds %struct.adm9240_data, ptr %19, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i28, align 4
  %23 = tail call i32 @llvm.smax.i32(i32 %val, i32 -40000) #8
  %24 = tail call i32 @llvm.smin.i32(i32 %23, i32 127000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i = icmp slt i32 %24, 0
  %div5.i.sext.i.i = select i1 %cmp.i.i.i, i32 -500, i32 500
  %add.i.i.i29 = add nsw i32 %div5.i.sext.i.i, %24
  %retval.0.i.i.i = sdiv i32 %add.i.i.i29, 1000
  %call3.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %reg.0.i, i32 noundef %retval.0.i.i.i) #8
  br label %return

return:                                           ; preds = %sw.epilog.i30, %sw.bb5.return_crit_edge, %sw.bb.i24, %sw.bb3.return_crit_edge, %sw.epilog.i, %sw.bb1.return_crit_edge, %if.then9.i, %do.body.i, %if.end.i.return_crit_edge, %sw.bb.i.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ -22, %sw.bb.i.return_crit_edge ], [ %call1.i, %if.end.i.return_crit_edge ], [ -95, %sw.bb.return_crit_edge ], [ 0, %if.then9.i ], [ 0, %do.body.i ], [ %call5.i, %sw.epilog.i ], [ -95, %sw.bb1.return_crit_edge ], [ %17, %sw.bb.i24 ], [ -95, %sw.bb3.return_crit_edge ], [ %call3.i, %sw.epilog.i30 ], [ -95, %sw.bb5.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adm9240_write_fan_div(ptr nocapture noundef readonly %data, i32 noundef %channel, i8 noundef zeroext %fan_div) unnamed_addr #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #8
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !104
  %regmap = getelementptr inbounds %struct.adm9240_data, ptr %data, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 71, ptr noundef nonnull %reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = shl i32 %channel, 1
  %mul = add i32 %add, 4
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %shr = lshr i32 %4, %mul
  %and = and i32 %shr, 3
  %shl = shl i32 3, %mul
  %neg = xor i32 %shl, -1
  %and1 = and i32 %4, %neg
  %conv = zext i8 %fan_div to i32
  %shl2 = shl i32 %conv, %mul
  %or = or i32 %and1, %shl2
  store i32 %or, ptr %reg, align 4
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_write(ptr noundef %6, i32 noundef 71, i32 noundef %or) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm9240_write_fan_div.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm9240_write_fan_div, %cleanup)) #8
          to label %if.then13 [label %cleanup], !srcloc !105

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %add14 = add i32 %channel, 1
  %shl15 = shl nuw nsw i32 1, %and
  %shl17 = shl nuw i32 1, %conv
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm9240_write_fan_div.__UNIQUE_ID_ddebug300, ptr noundef %8, ptr noundef nonnull @.str.15, i32 noundef %add14, i32 noundef %shl15, i32 noundef %shl17) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adm9240_fan_min_write(ptr noundef %data, i32 noundef %channel, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %update_lock = getelementptr inbounds %struct.adm9240_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.adm9240_data, ptr %data, i32 0, i32 3, i32 %channel
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm9240_fan_min_write.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm9240_fan_min_write, %if.end67)) #8
          to label %if.then5 [label %if.end67], !srcloc !105

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %add = add i32 %channel, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm9240_fan_min_write.__UNIQUE_ID_ddebug301, ptr noundef %3, ptr noundef nonnull @.str.19, i32 noundef %add) #8
  br label %if.end67

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 664, i32 %val)
  %cmp = icmp slt i32 %val, 664
  br i1 %cmp, label %if.then6, label %if.else29

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm9240_fan_min_write.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm9240_fan_min_write, %if.end67)) #8
          to label %if.then21 [label %if.end67], !srcloc !105

if.then21:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %add23 = add i32 %channel, 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm9240_fan_min_write.__UNIQUE_ID_ddebug302, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %add23, i32 noundef 664) #8
  br label %if.end67

if.else29:                                        ; preds = %if.else
  %div124 = udiv i32 1350000, %val
  call void @__sanitizer_cov_trace_const_cmp4(i32 6995, i32 %val)
  %cmp30125 = icmp ult i32 %val, 6995
  br i1 %cmp30125, label %while.body, label %if.else29.while.end_crit_edge

if.else29.while.end_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %if.else29
  %div35112 = lshr i32 %div124, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3498, i32 %val)
  %cmp30 = icmp ult i32 %val, 3498
  br i1 %cmp30, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %div35112.1 = lshr i32 %div124, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1749, i32 %val)
  %cmp30.1 = icmp ult i32 %val, 1749
  %div35112.2 = lshr i32 %div124, 3
  %spec.select129 = select i1 %cmp30.1, i8 3, i8 2
  %spec.select130 = select i1 %cmp30.1, i32 %div35112.2, i32 %div35112.1
  br label %while.end

while.end:                                        ; preds = %while.body.1, %while.body.while.end_crit_edge, %if.else29.while.end_crit_edge
  %new_min.0.lcssa = phi i32 [ %div124, %if.else29.while.end_crit_edge ], [ %div35112, %while.body.while.end_crit_edge ], [ %spec.select130, %while.body.1 ]
  %new_div.0.lcssa = phi i8 [ 0, %if.else29.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ %spec.select129, %while.body.1 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %new_min.0.lcssa)
  %tobool36.not = icmp eq i32 %new_min.0.lcssa, 0
  %spec.select = select i1 %tobool36.not, i32 1, i32 %new_min.0.lcssa
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm9240_fan_min_write.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm9240_fan_min_write, %do.end65)) #8
          to label %if.then55 [label %do.end65], !srcloc !105

if.then55:                                        ; preds = %while.end
  %conv40 = trunc i32 %spec.select to i8
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %add57 = add i32 %channel, 1
  %8 = zext i8 %conv40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %conv40, label %if.end3.i [
    i8 0, label %if.then55.FAN_FROM_REG.exit_crit_edge
    i8 -1, label %if.then2.i
  ]

if.then55.FAN_FROM_REG.exit_crit_edge:            ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

if.then2.i:                                       ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_FROM_REG.exit

if.end3.i:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %conv59 = zext i8 %new_div.0.lcssa to i32
  %conv.i = and i32 %spec.select, 255
  %mul.i = shl nuw nsw i32 %conv.i, %conv59
  %div5.i8911.i = lshr i32 %mul.i, 1
  %add.i.i = add nuw nsw i32 %div5.i8911.i, 1350000
  %retval.0.i10.i = udiv i32 %add.i.i, %mul.i
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %if.end3.i, %if.then2.i, %if.then55.FAN_FROM_REG.exit_crit_edge
  %retval.0.i120 = phi i32 [ 0, %if.then2.i ], [ %retval.0.i10.i, %if.end3.i ], [ -1, %if.then55.FAN_FROM_REG.exit_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm9240_fan_min_write.__UNIQUE_ID_ddebug303, ptr noundef %7, ptr noundef nonnull @.str.21, i32 noundef %add57, i32 noundef %retval.0.i120) #8
  br label %do.end65

do.end65:                                         ; preds = %FAN_FROM_REG.exit, %while.end
  %phi.cast = and i32 %spec.select, 255
  br label %if.end67

if.end67:                                         ; preds = %do.end65, %if.then21, %if.then6, %if.then5, %if.then
  %fan_min.0 = phi i32 [ 254, %if.then21 ], [ %phi.cast, %do.end65 ], [ 255, %if.then5 ], [ 255, %if.then ], [ 254, %if.then6 ]
  %new_div.1 = phi i8 [ 3, %if.then21 ], [ %new_div.0.lcssa, %do.end65 ], [ %1, %if.then5 ], [ %1, %if.then ], [ 3, %if.then6 ]
  %arrayidx70 = getelementptr %struct.adm9240_data, ptr %data, i32 0, i32 3, i32 %channel
  %9 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %new_div.1, i8 %10)
  %cmp72.not = icmp eq i8 %new_div.1, %10
  br i1 %cmp72.not, label %if.end67.if.end78_crit_edge, label %if.then74

if.end67.if.end78_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then74:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %new_div.1, ptr %arrayidx70, align 1
  %call77 = tail call fastcc i32 @adm9240_write_fan_div(ptr noundef %data, i32 noundef %channel, i8 noundef zeroext %new_div.1)
  br label %if.end78

if.end78:                                         ; preds = %if.then74, %if.end67.if.end78_crit_edge
  %regmap = getelementptr inbounds %struct.adm9240_data, ptr %data, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %add79 = add i32 %channel, 59
  %call81 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %add79, i32 noundef %fan_min.0) #8
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret i32 %call81
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aout_output_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !104
  %regmap = getelementptr inbounds %struct.adm9240_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 25, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %conv.i = and i32 %6, 255
  %mul1.i.i = mul nuw nsw i32 %conv.i, 1250
  %add.i.i = add nuw nsw i32 %mul1.i.i, 127
  %retval.0.i1.i = udiv i32 %add.i.i, 255
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %retval.0.i1.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aout_output_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !104
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %regmap = getelementptr inbounds %struct.adm9240_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 1250) #8
  %mul1.i.i = mul nuw nsw i32 %7, 255
  %add.i.i = add nuw nsw i32 %mul1.i.i, 625
  %retval.0.i12.i = udiv i32 %add.i.i, 1250
  %call3 = call i32 @regmap_write(ptr noundef %4, i32 noundef 25, i32 noundef %retval.0.i12.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  %call3.count = select i1 %cmp, i32 %call3, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #8
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !104
  %regmap = getelementptr inbounds %struct.adm9240_data, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 71, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_read(ptr noundef %8, i32 noundef 73, ptr noundef nonnull %regval) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = and i32 %6, 15
  %9 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %regval, align 4
  %and8 = shl i32 %10, 4
  %shl = and i32 %and8, 16
  %or = or i32 %shl, %conv
  %vrm = getelementptr inbounds %struct.adm9240_data, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %vrm, align 2
  %call12 = call i32 @vid_from_reg(i32 noundef %or, i8 noundef zeroext %12) #8
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, i32 noundef %call12)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end7 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !62, !64, !66, !67, !69, !71, !72, !74, !76, !77, !79, !81, !83, !85, !87, !88, !89, !90, !91, !92, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @__initcall__kmod_adm9240__305_822_adm9240_driver_init6, !1, !"__initcall__kmod_adm9240__305_822_adm9240_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adm9240.c", i32 822, i32 1}
!2 = !{ptr @__exitcall_adm9240_driver_exit, !1, !"__exitcall_adm9240_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adm9240.c", i32 824, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adm9240.c", i32 826, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adm9240.c", i32 827, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adm9240.c", i32 814, i32 11}
!12 = !{ptr @adm9240_driver, !13, !"adm9240_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adm9240.c", i32 811, i32 26}
!14 = !{ptr @adm9240_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adm9240.c", i32 788, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adm9240_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/adm9240.c", i32 789, i32 17}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adm9240_regmap_config, !21, !"adm9240_regmap_config", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/adm9240.c", i32 768, i32 35}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/adm9240.c", i32 329, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @adm9240_init_client._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @adm9240_init_client._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/adm9240.c", i32 334, i32 3}
!32 = !{ptr @adm9240_init_client._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @adm9240_init_client._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/adm9240.c", i32 368, i32 3}
!36 = !{ptr @adm9240_init_client._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @adm9240_init_client._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @adm9240_chip_info, !39, !"adm9240_chip_info", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/adm9240.c", i32 746, i32 37}
!40 = !{ptr @adm9240_hwmon_ops, !41, !"adm9240_hwmon_ops", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/adm9240.c", i32 722, i32 31}
!42 = !{ptr @nom_mv, !43, !"nom_mv", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/adm9240.c", i32 80, i32 18}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/adm9240.c", i32 149, i32 2}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @adm9240_write_fan_div.__UNIQUE_ID_ddebug300, !45, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/adm9240.c", i32 431, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @adm9240_intrusion_write.__UNIQUE_ID_ddebug304, !49, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/adm9240.c", i32 179, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @adm9240_fan_min_write.__UNIQUE_ID_ddebug301, !53, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!56 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/adm9240.c", i32 184, i32 3}
!58 = !{ptr @adm9240_fan_min_write.__UNIQUE_ID_ddebug302, !57, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/adm9240.c", i32 199, i32 3}
!61 = !{ptr @adm9240_fan_min_write.__UNIQUE_ID_ddebug303, !60, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!62 = !{ptr @adm9240_info, !63, !"adm9240_info", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/adm9240.c", i32 728, i32 41}
!64 = !{ptr @adm9240_groups, !65, !"adm9240_groups", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/adm9240.c", i32 271, i32 1}
!66 = !{ptr @adm9240_group, !65, !"adm9240_group", i1 false, i1 false}
!67 = !{ptr @adm9240_attrs, !68, !"adm9240_attrs", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/adm9240.c", i32 265, i32 26}
!69 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/adm9240.c", i32 263, i32 8}
!71 = !{ptr @dev_attr_aout_output, !70, !"dev_attr_aout_output", i1 false, i1 false}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/adm9240.c", i32 245, i32 22}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/adm9240.c", i32 232, i32 8}
!76 = !{ptr @dev_attr_cpu0_vid, !75, !"dev_attr_cpu0_vid", i1 false, i1 false}
!77 = !{ptr @adm9240_id, !78, !"adm9240_id", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/adm9240.c", i32 803, i32 35}
!79 = distinct !{null, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/adm9240.c", i32 280, i32 21}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/adm9240.c", i32 296, i32 10}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/adm9240.c", i32 298, i32 10}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/adm9240.c", i32 304, i32 2}
!87 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @adm9240_detect._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @adm9240_detect._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !86, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @normal_i2c, !94, !"normal_i2c", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/adm9240.c", i32 44, i32 29}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{!"auto-init"}
!105 = !{i64 2148971537, i64 2148971542, i64 2148971555, i64 2148971599, i64 2148971633, i64 2148971654}
