; ModuleID = '/llk/IR_all_yes/drivers/mfd/da9063-i2c.c_pt.bc'
source_filename = "../drivers/mfd/da9063-i2c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_range = type { i32, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.da9063 = type { ptr, i32, i8, i32, ptr, i32, i32, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_da9063__288_476_da9063_i2c_driver_init6 = internal global ptr @da9063_i2c_driver_init, section ".initcall6.init", align 4
@da9063_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da9063_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @da9063_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da9063_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_da9063_i2c_driver_exit = internal global ptr @da9063_i2c_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da9063\00", [25 x i8] zeroinitializer }, align 32
@da9063_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"dlg,da9063l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@da9063_i2c_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da9063\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"da9063l\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@da9063_ad_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_ad_readable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 388, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr @da9063_range_cfg, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@da9063_ad_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_ad_writeable_ranges, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_ad_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_ad_volatile_ranges, i32 9, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_bb_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_bb_readable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_bb_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_bb_writeable_ranges, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_bb_da_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_bb_da_volatile_ranges, i32 9, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_da_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_da_readable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_da_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063_da_writeable_ranges, i32 7, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 404, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Chip variant not supported for DA9063\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da9063_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/da9063-i2c.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry_ptr = internal global ptr @da9063_i2c_probe._entry, section ".printk_index", align 4
@da9063l_bb_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063l_bb_readable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063l_bb_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063l_bb_writeable_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063l_bb_da_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063l_bb_da_volatile_ranges, i32 9, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063l_da_readable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063l_da_readable_ranges, i32 5, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063l_da_writeable_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @da9063l_da_writeable_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Chip variant not supported for DA9063L\0A\00", [56 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry_ptr.8 = internal global ptr @da9063_i2c_probe._entry.6, section ".printk_index", align 4
@da9063_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 435, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Chip type not supported\0A\00", [39 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry_ptr.11 = internal global ptr @da9063_i2c_probe._entry.9, section ".printk_index", align 4
@da9063_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"da9063_i2c:439:(&da9063_regmap_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 443, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to allocate register map: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry_ptr.15 = internal global ptr @da9063_i2c_probe._entry.13, section ".printk_index", align 4
@da9063_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set Two-Wire Bus Mode.\0A\00", [62 x i8] zeroinitializer }, align 32
@da9063_i2c_probe._entry_ptr.18 = internal global ptr @da9063_i2c_probe._entry.16, section ".printk_index", align 4
@da9063_get_device_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 118, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Invalid chip device ID: 0x%02x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da9063_get_device_type\00", [41 x i8] zeroinitializer }, align 32
@da9063_get_device_type._entry_ptr = internal global ptr @da9063_get_device_type._entry, section ".printk_index", align 4
@da9063_get_device_type._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 124, ptr @.str.23, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Device detected (chip-ID: 0x%02X, var-ID: 0x%02X)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@da9063_get_device_type._entry_ptr.24 = internal global ptr @da9063_get_device_type._entry.21, section ".printk_index", align 4
@da9063_i2c_blockreg_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 58, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid register address provided\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"da9063_i2c_blockreg_read\00", [39 x i8] zeroinitializer }, align 32
@da9063_i2c_blockreg_read._entry_ptr = internal global ptr @da9063_i2c_blockreg_read._entry, section ".printk_index", align 4
@da9063_i2c_blockreg_read._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 87, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Paged block read failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@da9063_i2c_blockreg_read._entry_ptr.29 = internal global ptr @da9063_i2c_blockreg_read._entry.27, section ".printk_index", align 4
@da9063_i2c_blockreg_read._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 92, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Paged block read failed to complete\0A\00", [59 x i8] zeroinitializer }, align 32
@da9063_i2c_blockreg_read._entry_ptr.32 = internal global ptr @da9063_i2c_blockreg_read._entry.30, section ".printk_index", align 4
@da9063_ad_readable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 78 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 300 }, %struct.regmap_range { i32 385, i32 386 }], [56 x i8] zeroinitializer }, align 32
@da9063_range_cfg = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 388, i32 0, i32 2, i32 1, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@da9063_ad_writeable_ranges = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 64, i32 74 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 277 }, %struct.regmap_range { i32 281, i32 300 }], [40 x i8] zeroinitializer }, align 32
@da9063_ad_volatile_ranges = internal constant { [9 x %struct.regmap_range], [56 x i8] } { [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 9 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 32, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 55, i32 78 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 152, i32 152 }, %struct.regmap_range { i32 278, i32 279 }], [56 x i8] zeroinitializer }, align 32
@da9063_bb_readable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 79 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 308 }, %struct.regmap_range { i32 385, i32 386 }], [56 x i8] zeroinitializer }, align 32
@da9063_bb_writeable_ranges = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 64, i32 75 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 308 }], [40 x i8] zeroinitializer }, align 32
@da9063_bb_da_volatile_ranges = internal constant { [9 x %struct.regmap_range], [56 x i8] } { [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 9 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 32, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 55, i32 79 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 152, i32 152 }, %struct.regmap_range { i32 286, i32 287 }], [56 x i8] zeroinitializer }, align 32
@da9063_da_readable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 79 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 300 }, %struct.regmap_range { i32 385, i32 386 }], [56 x i8] zeroinitializer }, align 32
@da9063_da_writeable_ranges = internal constant { [7 x %struct.regmap_range], [40 x i8] } { [7 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 64, i32 75 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 300 }], [40 x i8] zeroinitializer }, align 32
@da9063l_bb_readable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 63 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 308 }, %struct.regmap_range { i32 385, i32 386 }], [56 x i8] zeroinitializer }, align 32
@da9063l_bb_writeable_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 308 }], [48 x i8] zeroinitializer }, align 32
@da9063l_bb_da_volatile_ranges = internal constant { [9 x %struct.regmap_range], [56 x i8] } { [9 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 9 }, %struct.regmap_range { i32 14, i32 15 }, %struct.regmap_range { i32 18, i32 19 }, %struct.regmap_range { i32 32, i32 48 }, %struct.regmap_range { i32 50, i32 52 }, %struct.regmap_range { i32 55, i32 63 }, %struct.regmap_range { i32 129, i32 129 }, %struct.regmap_range { i32 152, i32 152 }, %struct.regmap_range { i32 286, i32 287 }], [56 x i8] zeroinitializer }, align 32
@da9063l_da_readable_ranges = internal constant { [5 x %struct.regmap_range], [56 x i8] } { [5 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 63 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 260, i32 300 }, %struct.regmap_range { i32 385, i32 386 }], [56 x i8] zeroinitializer }, align 32
@da9063l_da_writeable_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 5, i32 54 }, %struct.regmap_range { i32 129, i32 146 }, %struct.regmap_range { i32 149, i32 207 }, %struct.regmap_range { i32 270, i32 279 }, %struct.regmap_range { i32 289, i32 300 }], [48 x i8] zeroinitializer }, align 32
@switch.table.da9063_i2c_probe = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @da9063_ad_readable_table, ptr @da9063_ad_readable_table, ptr @da9063_bb_readable_table, ptr @da9063_bb_readable_table, ptr @da9063_da_readable_table, ptr @da9063_da_readable_table], [40 x i8] zeroinitializer }, align 32
@switch.table.da9063_i2c_probe.33 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @da9063_ad_writeable_table, ptr @da9063_ad_writeable_table, ptr @da9063_bb_writeable_table, ptr @da9063_bb_writeable_table, ptr @da9063_da_writeable_table, ptr @da9063_da_writeable_table], [40 x i8] zeroinitializer }, align 32
@switch.table.da9063_i2c_probe.34 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @da9063_ad_volatile_table, ptr @da9063_ad_volatile_table, ptr @da9063_bb_da_volatile_table, ptr @da9063_bb_da_volatile_table, ptr @da9063_bb_da_volatile_table, ptr @da9063_bb_da_volatile_table], [40 x i8] zeroinitializer }, align 32
@switch.table.da9063_i2c_probe.35 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @da9063l_bb_readable_table, ptr @da9063l_bb_readable_table, ptr @da9063l_da_readable_table, ptr @da9063l_da_readable_table], [16 x i8] zeroinitializer }, align 32
@switch.table.da9063_i2c_probe.36 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @da9063l_bb_writeable_table, ptr @da9063l_bb_writeable_table, ptr @da9063l_da_writeable_table, ptr @da9063l_da_writeable_table], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"da9063_i2c_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 467, i32 26 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 469, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [14 x i8] c"da9063_dt_ids\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 348, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant [14 x i8] c"da9063_i2c_id\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 460, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"da9063_ad_readable_table\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 167, i32 41 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"da9063_regmap_config\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 338, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [26 x i8] c"da9063_ad_writeable_table\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 172, i32 41 }
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"da9063_ad_volatile_table\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 177, i32 41 }
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"da9063_bb_readable_table\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 212, i32 41 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"da9063_bb_writeable_table\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 217, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"da9063_bb_da_volatile_table\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 222, i32 41 }
@___asan_gen_.70 = private unnamed_addr constant [25 x i8] c"da9063_da_readable_table\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 289, i32 41 }
@___asan_gen_.73 = private unnamed_addr constant [26 x i8] c"da9063_da_writeable_table\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 294, i32 41 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 403, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [26 x i8] c"da9063l_bb_readable_table\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 256, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [27 x i8] c"da9063l_bb_writeable_table\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 261, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [29 x i8] c"da9063l_bb_da_volatile_table\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 266, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant [26 x i8] c"da9063l_da_readable_table\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 316, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant [27 x i8] c"da9063l_da_writeable_table\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 321, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 429, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 435, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 439, i32 19 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 442, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 452, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 116, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 122, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 58, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 87, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 92, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"da9063_ad_readable_ranges\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 137, i32 34 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"da9063_range_cfg\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 326, i32 38 }
@___asan_gen_.184 = private unnamed_addr constant [27 x i8] c"da9063_ad_writeable_ranges\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 145, i32 34 }
@___asan_gen_.187 = private unnamed_addr constant [26 x i8] c"da9063_ad_volatile_ranges\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 155, i32 34 }
@___asan_gen_.190 = private unnamed_addr constant [26 x i8] c"da9063_bb_readable_ranges\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 182, i32 34 }
@___asan_gen_.193 = private unnamed_addr constant [27 x i8] c"da9063_bb_writeable_ranges\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 190, i32 34 }
@___asan_gen_.196 = private unnamed_addr constant [29 x i8] c"da9063_bb_da_volatile_ranges\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 200, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant [26 x i8] c"da9063_da_readable_ranges\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 271, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant [27 x i8] c"da9063_da_writeable_ranges\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 279, i32 34 }
@___asan_gen_.205 = private unnamed_addr constant [27 x i8] c"da9063l_bb_readable_ranges\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 227, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"da9063l_bb_writeable_ranges\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 235, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [30 x i8] c"da9063l_bb_da_volatile_ranges\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 244, i32 34 }
@___asan_gen_.214 = private unnamed_addr constant [27 x i8] c"da9063l_da_readable_ranges\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 299, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant [28 x i8] c"da9063l_da_writeable_ranges\00", align 1
@___asan_gen_.218 = private constant [28 x i8] c"../drivers/mfd/da9063-i2c.c\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 307, i32 34 }
@___asan_gen_.220 = private unnamed_addr constant [30 x i8] c"switch.table.da9063_i2c_probe\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [33 x i8] c"switch.table.da9063_i2c_probe.33\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [33 x i8] c"switch.table.da9063_i2c_probe.34\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [33 x i8] c"switch.table.da9063_i2c_probe.35\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [33 x i8] c"switch.table.da9063_i2c_probe.36\00", align 1
@llvm.compiler.used = appending global [79 x ptr] [ptr @__exitcall_da9063_i2c_driver_exit, ptr @__initcall__kmod_da9063__288_476_da9063_i2c_driver_init6, ptr @da9063_get_device_type._entry, ptr @da9063_get_device_type._entry.21, ptr @da9063_get_device_type._entry_ptr, ptr @da9063_get_device_type._entry_ptr.24, ptr @da9063_i2c_blockreg_read._entry, ptr @da9063_i2c_blockreg_read._entry.27, ptr @da9063_i2c_blockreg_read._entry.30, ptr @da9063_i2c_blockreg_read._entry_ptr, ptr @da9063_i2c_blockreg_read._entry_ptr.29, ptr @da9063_i2c_blockreg_read._entry_ptr.32, ptr @da9063_i2c_driver_exit, ptr @da9063_i2c_probe._entry, ptr @da9063_i2c_probe._entry.13, ptr @da9063_i2c_probe._entry.16, ptr @da9063_i2c_probe._entry.6, ptr @da9063_i2c_probe._entry.9, ptr @da9063_i2c_probe._entry_ptr, ptr @da9063_i2c_probe._entry_ptr.11, ptr @da9063_i2c_probe._entry_ptr.15, ptr @da9063_i2c_probe._entry_ptr.18, ptr @da9063_i2c_probe._entry_ptr.8, ptr @da9063_i2c_driver, ptr @.str, ptr @da9063_dt_ids, ptr @da9063_i2c_id, ptr @da9063_ad_readable_table, ptr @da9063_regmap_config, ptr @da9063_ad_writeable_table, ptr @da9063_ad_volatile_table, ptr @da9063_bb_readable_table, ptr @da9063_bb_writeable_table, ptr @da9063_bb_da_volatile_table, ptr @da9063_da_readable_table, ptr @da9063_da_writeable_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @da9063l_bb_readable_table, ptr @da9063l_bb_writeable_table, ptr @da9063l_bb_da_volatile_table, ptr @da9063l_da_readable_table, ptr @da9063l_da_writeable_table, ptr @.str.7, ptr @.str.10, ptr @da9063_i2c_probe._key, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @da9063_ad_readable_ranges, ptr @da9063_range_cfg, ptr @da9063_ad_writeable_ranges, ptr @da9063_ad_volatile_ranges, ptr @da9063_bb_readable_ranges, ptr @da9063_bb_writeable_ranges, ptr @da9063_bb_da_volatile_ranges, ptr @da9063_da_readable_ranges, ptr @da9063_da_writeable_ranges, ptr @da9063l_bb_readable_ranges, ptr @da9063l_bb_writeable_ranges, ptr @da9063l_bb_da_volatile_ranges, ptr @da9063l_da_readable_ranges, ptr @da9063l_da_writeable_ranges, ptr @switch.table.da9063_i2c_probe, ptr @switch.table.da9063_i2c_probe.33, ptr @switch.table.da9063_i2c_probe.34, ptr @switch.table.da9063_i2c_probe.35, ptr @switch.table.da9063_i2c_probe.36], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ad_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ad_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ad_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bb_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bb_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bb_da_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_da_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_da_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_bb_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_bb_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_bb_da_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_da_readable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_da_writeable_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_get_device_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_get_device_type._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_blockreg_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_blockreg_read._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_i2c_blockreg_read._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ad_readable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_range_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ad_writeable_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_ad_volatile_ranges to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bb_readable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bb_writeable_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_bb_da_volatile_ranges to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_da_readable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063_da_writeable_ranges to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_bb_readable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_bb_writeable_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_bb_da_volatile_ranges to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_da_readable_ranges to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da9063l_da_writeable_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_i2c_probe to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_i2c_probe.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_i2c_probe.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_i2c_probe.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da9063_i2c_probe.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da9063_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da9063_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @da9063_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da9063_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %xfer.i.i = alloca [3 x %struct.i2c_msg], align 4
  %page_sel_buf.i.i = alloca [2 x i8], align 1
  %paged_addr.i.i = alloca i8, align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %call.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %chip_irq = getelementptr inbounds %struct.da9063, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %chip_irq to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %chip_irq, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.da9063, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #5
  %8 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %buf.i, align 1, !annotation !126
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %9, align 1, !annotation !126
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %xfer.i.i) #5
  %11 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %page_sel_buf.i.i) #5
  %13 = getelementptr inbounds [2 x i8], ptr %page_sel_buf.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %paged_addr.i.i) #5
  %14 = ptrtoint ptr %paged_addr.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -127, ptr %paged_addr.i.i, align 1
  %15 = ptrtoint ptr %page_sel_buf.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %page_sel_buf.i.i, align 1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %13, align 1
  %addr10.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 1
  %17 = ptrtoint ptr %addr10.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr10.i.i, align 2
  %19 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %xfer.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i.i, align 2
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %11, align 4
  %buf16.i.i = getelementptr inbounds %struct.i2c_msg, ptr %xfer.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf16.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %page_sel_buf.i.i, ptr %buf16.i.i, align 4
  %arrayidx18.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %18, ptr %arrayidx18.i.i, align 4
  %flags21.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %flags21.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 0, ptr %flags21.i.i, align 2
  %len23.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1, i32 2
  %25 = ptrtoint ptr %len23.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %len23.i.i, align 4
  %buf25.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %buf25.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %paged_addr.i.i, ptr %buf25.i.i, align 4
  %arrayidx27.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %18, ptr %arrayidx27.i.i, align 4
  %flags30.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %flags30.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 1, ptr %flags30.i.i, align 2
  %len33.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %len33.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %len33.i.i, align 4
  %buf35.i.i = getelementptr inbounds [3 x %struct.i2c_msg], ptr %xfer.i.i, i32 0, i32 2, i32 3
  %30 = ptrtoint ptr %buf35.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i, ptr %buf35.i.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 3
  %31 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adapter.i.i, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %xfer.i.i, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp37.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp37.i.i, label %do.end42.i.i, label %if.end44.i.i

do.end42.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call.i.i) #8
  br label %da9063_i2c_blockreg_read.exit.thread.i

if.end44.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i)
  %cmp45.not.i.i = icmp eq i32 %call.i.i, 3
  br i1 %cmp45.not.i.i, label %if.end.i, label %do.end50.i.i

do.end50.i.i:                                     ; preds = %if.end44.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #8
  br label %da9063_i2c_blockreg_read.exit.thread.i

da9063_i2c_blockreg_read.exit.thread.i:           ; preds = %do.end50.i.i, %do.end42.i.i
  %retval.0.i.ph.i = phi i32 [ -5, %do.end50.i.i ], [ %call.i.i, %do.end42.i.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %paged_addr.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %page_sel_buf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #5
  br label %da9063_get_device_type.exit.thread

if.end.i:                                         ; preds = %if.end44.i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %paged_addr.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %page_sel_buf.i.i) #5
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %xfer.i.i) #5
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 97, i8 %34)
  %cmp.not.i = icmp eq i8 %34, 97
  br i1 %cmp.not.i, label %if.end5, label %do.end.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = zext i8 %34 to i32
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.19, i32 noundef %conv.i) #8
  br label %da9063_get_device_type.exit.thread

da9063_get_device_type.exit.thread:               ; preds = %do.end.i, %da9063_i2c_blockreg_read.exit.thread.i
  %retval.0.i.ph = phi i32 [ %retval.0.i.ph.i, %da9063_i2c_blockreg_read.exit.thread.i ], [ -19, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end.i
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  %39 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %9, align 1
  %conv13.i = zext i8 %40 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.22, i32 noundef 97, i32 noundef %conv13.i) #8
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %9, align 1
  %43 = lshr i8 %42, 4
  %variant_code.i = getelementptr inbounds %struct.da9063, ptr %call.i, i32 0, i32 2
  %44 = ptrtoint ptr %variant_code.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %variant_code.i, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #5
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %do.end25 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end5
  %48 = ptrtoint ptr %variant_code.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %variant_code.i, align 4
  %switch.tableidx = add i8 %49, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %switch.tableidx)
  %50 = icmp ult i8 %switch.tableidx, 6
  br i1 %50, label %switch.hole_check, label %sw.bb.do.end_crit_edge

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %51 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.1) #8
  br label %cleanup

sw.bb11:                                          ; preds = %if.end5
  %53 = ptrtoint ptr %variant_code.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %variant_code.i, align 4
  %switch.tableidx95 = add i8 %54, -5
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx95)
  %55 = icmp ult i8 %switch.tableidx95, 4
  br i1 %55, label %switch.lookup94, label %do.end19

do.end19:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.7) #8
  br label %cleanup

do.end25:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.10) #8
  br label %cleanup

switch.hole_check:                                ; preds = %sw.bb
  %switch.shifted = lshr i8 61, %switch.tableidx
  %60 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %switch.lobit.not = icmp eq i8 %60, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %61 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.da9063_i2c_probe, i32 0, i32 %61
  %62 = sext i8 %switch.tableidx to i32
  %switch.gep90 = getelementptr inbounds [6 x ptr], ptr @switch.table.da9063_i2c_probe.33, i32 0, i32 %62
  %63 = sext i8 %switch.tableidx to i32
  %switch.gep92 = getelementptr inbounds [6 x ptr], ptr @switch.table.da9063_i2c_probe.34, i32 0, i32 %63
  %64 = ptrtoint ptr %switch.gep92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load93 = load ptr, ptr %switch.gep92, align 4
  br label %sw.epilog27

switch.lookup94:                                  ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  %65 = sext i8 %switch.tableidx95 to i32
  %switch.gep96 = getelementptr inbounds [4 x ptr], ptr @switch.table.da9063_i2c_probe.35, i32 0, i32 %65
  %66 = sext i8 %switch.tableidx95 to i32
  %switch.gep98 = getelementptr inbounds [4 x ptr], ptr @switch.table.da9063_i2c_probe.36, i32 0, i32 %66
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %switch.lookup94, %switch.lookup
  %da9063l_bb_readable_table.sink.in = phi ptr [ %switch.gep, %switch.lookup ], [ %switch.gep96, %switch.lookup94 ]
  %da9063l_bb_writeable_table.sink.in = phi ptr [ %switch.gep90, %switch.lookup ], [ %switch.gep98, %switch.lookup94 ]
  %da9063l_bb_da_volatile_table.sink = phi ptr [ %switch.load93, %switch.lookup ], [ @da9063l_bb_da_volatile_table, %switch.lookup94 ]
  %67 = ptrtoint ptr %da9063l_bb_writeable_table.sink.in to i32
  call void @__asan_load4_noabort(i32 %67)
  %da9063l_bb_writeable_table.sink = load ptr, ptr %da9063l_bb_writeable_table.sink.in, align 4
  %68 = ptrtoint ptr %da9063l_bb_readable_table.sink.in to i32
  call void @__asan_load4_noabort(i32 %68)
  %da9063l_bb_readable_table.sink = load ptr, ptr %da9063l_bb_readable_table.sink.in, align 4
  store ptr %da9063l_bb_readable_table.sink, ptr getelementptr inbounds (%struct.regmap_config, ptr @da9063_regmap_config, i32 0, i32 21), align 4
  store ptr %da9063l_bb_writeable_table.sink, ptr getelementptr inbounds (%struct.regmap_config, ptr @da9063_regmap_config, i32 0, i32 20), align 4
  store ptr %da9063l_bb_da_volatile_table.sink, ptr getelementptr inbounds (%struct.regmap_config, ptr @da9063_regmap_config, i32 0, i32 22), align 4
  %call28 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da9063_regmap_config, ptr noundef nonnull @da9063_i2c_probe._key, ptr noundef nonnull @.str.12) #5
  %regmap = getelementptr inbounds %struct.da9063, ptr %call.i, i32 0, i32 4
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call28, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then31, label %if.end38

if.then31:                                        ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #7
  %70 = ptrtoint ptr %call28 to i32
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.14, i32 noundef %70) #8
  br label %cleanup

if.end38:                                         ; preds = %sw.epilog27
  %73 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %adapter.i.i, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i86 = call i32 %78(ptr noundef %74) #5
  %and.i = and i32 %call.i.i86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not = icmp eq i32 %and.i, 0
  br i1 %tobool40.not, label %if.end38.if.end52_crit_edge, label %if.then41

if.end38.if.end52_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

if.then41:                                        ; preds = %if.end38
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %call.i87 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 271, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %cmp44 = icmp slt i32 %call.i87, 0
  br i1 %cmp44, label %do.end49, label %if.then41.if.end52_crit_edge

if.then41.if.end52_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end52

do.end49:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  %81 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.17) #8
  br label %cleanup

if.end52:                                         ; preds = %if.then41.if.end52_crit_edge, %if.end38.if.end52_crit_edge
  %83 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %irq, align 4
  %call54 = call i32 @da9063_device_init(ptr noundef nonnull %call.i, i32 noundef %84) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %do.end49, %if.then31, %do.end25, %do.end19, %do.end, %da9063_get_device_type.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end25 ], [ -19, %do.end19 ], [ %70, %if.then31 ], [ %call.i87, %do.end49 ], [ %call54, %if.end52 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i.ph, %da9063_get_device_type.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da9063_device_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__initcall__kmod_da9063__288_476_da9063_i2c_driver_init6, !1, !"__initcall__kmod_da9063__288_476_da9063_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mfd/da9063-i2c.c", i32 476, i32 1}
!2 = !{ptr @__exitcall_da9063_i2c_driver_exit, !1, !"__exitcall_da9063_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @.str, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/mfd/da9063-i2c.c", i32 469, i32 11}
!5 = !{ptr @da9063_i2c_driver, !6, !"da9063_i2c_driver", i1 false, i1 false}
!6 = !{!"../drivers/mfd/da9063-i2c.c", i32 467, i32 26}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/mfd/da9063-i2c.c", i32 403, i32 4}
!9 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @da9063_i2c_probe._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @da9063_i2c_probe._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/da9063-i2c.c", i32 429, i32 4}
!17 = !{ptr @da9063_i2c_probe._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @da9063_i2c_probe._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/da9063-i2c.c", i32 435, i32 3}
!21 = !{ptr @da9063_i2c_probe._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @da9063_i2c_probe._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @da9063_i2c_probe._key, !24, !"_key", i1 false, i1 false}
!24 = !{!"../drivers/mfd/da9063-i2c.c", i32 439, i32 19}
!25 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/da9063-i2c.c", i32 442, i32 3}
!28 = !{ptr @da9063_i2c_probe._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @da9063_i2c_probe._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mfd/da9063-i2c.c", i32 452, i32 4}
!32 = !{ptr @da9063_i2c_probe._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @da9063_i2c_probe._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/da9063-i2c.c", i32 116, i32 3}
!36 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @da9063_get_device_type._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @da9063_get_device_type._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/da9063-i2c.c", i32 122, i32 2}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @da9063_get_device_type._entry.21, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @da9063_get_device_type._entry_ptr.24, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/da9063-i2c.c", i32 58, i32 3}
!46 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @da9063_i2c_blockreg_read._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @da9063_i2c_blockreg_read._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/mfd/da9063-i2c.c", i32 87, i32 3}
!51 = !{ptr @da9063_i2c_blockreg_read._entry.27, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @da9063_i2c_blockreg_read._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/da9063-i2c.c", i32 92, i32 3}
!55 = !{ptr @da9063_i2c_blockreg_read._entry.30, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @da9063_i2c_blockreg_read._entry_ptr.32, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @da9063_ad_readable_table, !58, !"da9063_ad_readable_table", i1 false, i1 false}
!58 = !{!"../drivers/mfd/da9063-i2c.c", i32 167, i32 41}
!59 = !{ptr @da9063_ad_readable_ranges, !60, !"da9063_ad_readable_ranges", i1 false, i1 false}
!60 = !{!"../drivers/mfd/da9063-i2c.c", i32 137, i32 34}
!61 = !{ptr @da9063_regmap_config, !62, !"da9063_regmap_config", i1 false, i1 false}
!62 = !{!"../drivers/mfd/da9063-i2c.c", i32 338, i32 29}
!63 = !{ptr @da9063_range_cfg, !64, !"da9063_range_cfg", i1 false, i1 false}
!64 = !{!"../drivers/mfd/da9063-i2c.c", i32 326, i32 38}
!65 = !{ptr @da9063_ad_writeable_table, !66, !"da9063_ad_writeable_table", i1 false, i1 false}
!66 = !{!"../drivers/mfd/da9063-i2c.c", i32 172, i32 41}
!67 = !{ptr @da9063_ad_writeable_ranges, !68, !"da9063_ad_writeable_ranges", i1 false, i1 false}
!68 = !{!"../drivers/mfd/da9063-i2c.c", i32 145, i32 34}
!69 = !{ptr @da9063_ad_volatile_table, !70, !"da9063_ad_volatile_table", i1 false, i1 false}
!70 = !{!"../drivers/mfd/da9063-i2c.c", i32 177, i32 41}
!71 = !{ptr @da9063_ad_volatile_ranges, !72, !"da9063_ad_volatile_ranges", i1 false, i1 false}
!72 = !{!"../drivers/mfd/da9063-i2c.c", i32 155, i32 34}
!73 = !{ptr @da9063_bb_readable_table, !74, !"da9063_bb_readable_table", i1 false, i1 false}
!74 = !{!"../drivers/mfd/da9063-i2c.c", i32 212, i32 41}
!75 = !{ptr @da9063_bb_readable_ranges, !76, !"da9063_bb_readable_ranges", i1 false, i1 false}
!76 = !{!"../drivers/mfd/da9063-i2c.c", i32 182, i32 34}
!77 = !{ptr @da9063_bb_writeable_table, !78, !"da9063_bb_writeable_table", i1 false, i1 false}
!78 = !{!"../drivers/mfd/da9063-i2c.c", i32 217, i32 41}
!79 = !{ptr @da9063_bb_writeable_ranges, !80, !"da9063_bb_writeable_ranges", i1 false, i1 false}
!80 = !{!"../drivers/mfd/da9063-i2c.c", i32 190, i32 34}
!81 = !{ptr @da9063_bb_da_volatile_table, !82, !"da9063_bb_da_volatile_table", i1 false, i1 false}
!82 = !{!"../drivers/mfd/da9063-i2c.c", i32 222, i32 41}
!83 = !{ptr @da9063_bb_da_volatile_ranges, !84, !"da9063_bb_da_volatile_ranges", i1 false, i1 false}
!84 = !{!"../drivers/mfd/da9063-i2c.c", i32 200, i32 34}
!85 = !{ptr @da9063_da_readable_table, !86, !"da9063_da_readable_table", i1 false, i1 false}
!86 = !{!"../drivers/mfd/da9063-i2c.c", i32 289, i32 41}
!87 = !{ptr @da9063_da_readable_ranges, !88, !"da9063_da_readable_ranges", i1 false, i1 false}
!88 = !{!"../drivers/mfd/da9063-i2c.c", i32 271, i32 34}
!89 = !{ptr @da9063_da_writeable_table, !90, !"da9063_da_writeable_table", i1 false, i1 false}
!90 = !{!"../drivers/mfd/da9063-i2c.c", i32 294, i32 41}
!91 = !{ptr @da9063_da_writeable_ranges, !92, !"da9063_da_writeable_ranges", i1 false, i1 false}
!92 = !{!"../drivers/mfd/da9063-i2c.c", i32 279, i32 34}
!93 = !{ptr @da9063l_bb_readable_table, !94, !"da9063l_bb_readable_table", i1 false, i1 false}
!94 = !{!"../drivers/mfd/da9063-i2c.c", i32 256, i32 41}
!95 = !{ptr @da9063l_bb_readable_ranges, !96, !"da9063l_bb_readable_ranges", i1 false, i1 false}
!96 = !{!"../drivers/mfd/da9063-i2c.c", i32 227, i32 34}
!97 = !{ptr @da9063l_bb_writeable_table, !98, !"da9063l_bb_writeable_table", i1 false, i1 false}
!98 = !{!"../drivers/mfd/da9063-i2c.c", i32 261, i32 41}
!99 = !{ptr @da9063l_bb_writeable_ranges, !100, !"da9063l_bb_writeable_ranges", i1 false, i1 false}
!100 = !{!"../drivers/mfd/da9063-i2c.c", i32 235, i32 34}
!101 = !{ptr @da9063l_bb_da_volatile_table, !102, !"da9063l_bb_da_volatile_table", i1 false, i1 false}
!102 = !{!"../drivers/mfd/da9063-i2c.c", i32 266, i32 41}
!103 = !{ptr @da9063l_bb_da_volatile_ranges, !104, !"da9063l_bb_da_volatile_ranges", i1 false, i1 false}
!104 = !{!"../drivers/mfd/da9063-i2c.c", i32 244, i32 34}
!105 = !{ptr @da9063l_da_readable_table, !106, !"da9063l_da_readable_table", i1 false, i1 false}
!106 = !{!"../drivers/mfd/da9063-i2c.c", i32 316, i32 41}
!107 = !{ptr @da9063l_da_readable_ranges, !108, !"da9063l_da_readable_ranges", i1 false, i1 false}
!108 = !{!"../drivers/mfd/da9063-i2c.c", i32 299, i32 34}
!109 = !{ptr @da9063l_da_writeable_table, !110, !"da9063l_da_writeable_table", i1 false, i1 false}
!110 = !{!"../drivers/mfd/da9063-i2c.c", i32 321, i32 41}
!111 = !{ptr @da9063l_da_writeable_ranges, !112, !"da9063l_da_writeable_ranges", i1 false, i1 false}
!112 = !{!"../drivers/mfd/da9063-i2c.c", i32 307, i32 34}
!113 = !{ptr @da9063_dt_ids, !114, !"da9063_dt_ids", i1 false, i1 false}
!114 = !{!"../drivers/mfd/da9063-i2c.c", i32 348, i32 34}
!115 = !{ptr @da9063_i2c_id, !116, !"da9063_i2c_id", i1 false, i1 false}
!116 = !{!"../drivers/mfd/da9063-i2c.c", i32 460, i32 35}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{!"auto-init"}
