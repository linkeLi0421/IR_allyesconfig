; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/max2175.c_pt.bc'
source_filename = "../drivers/media/i2c/max2175.c"
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_ctrl_config = type { ptr, ptr, i32, ptr, i32, i64, i64, i64, i64, %union.v4l2_ctrl_ptr, [4 x i32], i32, i32, i64, ptr, ptr, i8 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.max2175_rxmode = type { i32, i32, i8 }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.max2175_reg_map = type { i8, i8 }
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
%struct.max2175 = type { %struct.v4l2_subdev, ptr, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@__initcall__kmod_max2175__320_1439_max2175_driver_init6 = internal global ptr @max2175_driver_init, section ".initcall6.init", align 4
@max2175_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @max2175_remove, ptr @max2175_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max2175_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max2175_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max2175_driver_exit = internal global ptr @max2175_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [58 x i8] c"max2175.description=Maxim MAX2175 RF to Bits tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file322 = internal constant [39 x i8] c"max2175.file=drivers/media/i2c/max2175\00", section ".modinfo", align 1
@__UNIQUE_ID_license323 = internal constant [23 x i8] c"max2175.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author324 = internal constant [80 x i8] c"max2175.author=Ramesh Shanmugasundaram <ramesh.shanmugasundaram@bp.renesas.com>\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max2175\00", [24 x i8] zeroinitializer }, align 32
@max2175_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max2175\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max2175_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max2175\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"maxim,master\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,am-hiz-filter\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"maxim,refout-load\00", [46 x i8] zeroinitializer }, align 32
@max2175_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1303, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid refout_load %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max2175_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/max2175.c\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max2175_probe._entry_ptr = internal global ptr @max2175_probe._entry, section ".printk_index", align 4
@max2175_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1311, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot get clock %d\0A\00", [43 x i8] zeroinitializer }, align 32
@max2175_probe._entry_ptr.11 = internal global ptr @max2175_probe._entry.9, section ".printk_index", align 4
@max2175_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max2175_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr @max2175_volatile_regs, ptr null, ptr null, ptr null, ptr @max2175_reg_defaults, i32 1, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"max2175:1315:(&max2175_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@max2175_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1318, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regmap init failed %d\0A\00", [41 x i8] zeroinitializer }, align 32
@max2175_probe._entry_ptr.15 = internal global ptr @max2175_probe._entry.13, section ".printk_index", align 4
@max2175_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.5, ptr @.str.6, i32 1333, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xtal freq %luHz\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max2175_probe._entry_ptr.19 = internal global ptr @max2175_probe._entry.16, section ".printk_index", align 4
@max2175_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr @max2175_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@max2175_probe._key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max2175:1342:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@max2175_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @max2175_g_volatile_ctrl, ptr null, ptr @max2175_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@max2175_i2s_en = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @max2175_ctrl_ops, ptr null, i32 9968017, ptr @.str.74, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 -128 }, [48 x i8] zeroinitializer }, align 32
@max2175_hsls = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @max2175_ctrl_ops, ptr null, i32 9968018, ptr @.str.75, i32 2, i64 0, i64 1, i64 1, i64 1, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr null, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@max2175_eu_rx_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @max2175_ctrl_ops, ptr null, i32 9968019, ptr @.str.76, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @max2175_ctrl_eu_rx_modes, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@eu_rx_modes = internal constant { [2 x %struct.max2175_rxmode], [40 x i8] } { [2 x %struct.max2175_rxmode] [%struct.max2175_rxmode { i32 1, i32 98256000, i8 1 }, %struct.max2175_rxmode { i32 2, i32 182640000, i8 0 }], [40 x i8] zeroinitializer }, align 32
@eu_bands_rf = internal constant { %struct.v4l2_frequency_band, [32 x i8] } { %struct.v4l2_frequency_band { i32 0, i32 5, i32 0, i32 5120, i32 65000000, i32 240000000, i32 0, [9 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max2175_na_rx_mode = internal constant { %struct.v4l2_ctrl_config, [48 x i8] } { %struct.v4l2_ctrl_config { ptr @max2175_ctrl_ops, ptr null, i32 9968019, ptr @.str.76, i32 3, i64 0, i64 1, i64 0, i64 0, %union.v4l2_ctrl_ptr zeroinitializer, [4 x i32] zeroinitializer, i32 0, i32 0, i64 0, ptr @max2175_ctrl_na_rx_modes, ptr null, i8 0 }, [48 x i8] zeroinitializer }, align 32
@na_rx_modes = internal constant { [2 x %struct.max2175_rxmode], [40 x i8] } { [2 x %struct.max2175_rxmode] [%struct.max2175_rxmode { i32 1, i32 98255520, i8 1 }, %struct.max2175_rxmode { i32 1, i32 98255520, i8 6 }], [40 x i8] zeroinitializer }, align 32
@na_bands_rf = internal constant { %struct.v4l2_frequency_band, [32 x i8] } { %struct.v4l2_frequency_band { i32 0, i32 5, i32 0, i32 5120, i32 65000000, i32 108000000, i32 0, [9 x i32] zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max2175_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 1383, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register subdev failed\0A\00", [40 x i8] zeroinitializer }, align 32
@max2175_probe._entry_ptr.24 = internal global ptr @max2175_probe._entry.22, section ".printk_index", align 4
@max2175_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @max2175_regmap_volatile_range, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@max2175_reg_defaults = internal constant { [1 x %struct.reg_default], [24 x i8] } { [1 x %struct.reg_default] [%struct.reg_default { i32 0, i32 7 }], [24 x i8] zeroinitializer }, align 32
@max2175_regmap_volatile_range = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range { i32 48, i32 53 }, %struct.regmap_range { i32 58, i32 69 }, %struct.regmap_range { i32 89, i32 94 }, %struct.regmap_range { i32 115, i32 117 }], [32 x i8] zeroinitializer }, align 32
@max2175_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr @max2175_s_frequency, ptr @max2175_g_frequency, ptr @max2175_enum_freq_bands, ptr @max2175_g_tuner, ptr @max2175_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max2175_s_frequency.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 1, i8 19, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max2175_s_frequency\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"s_freq: new %u curr %u, mode_resolved %d\0A\00", [54 x i8] zeroinitializer }, align 32
@max2175_s_frequency.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.6, ptr @.str.27, i8 1, i8 23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"s_freq: ret %d curr %u mode_resolved %d mode %u\0A\00", [47 x i8] zeroinitializer }, align 32
@max2175_tune_rf_freq.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 -77, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max2175_tune_rf_freq\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tune_rf_freq: old %u new %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@max2175_set_rf_freq.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.6, ptr @.str.31, i8 0, i8 -81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max2175_set_rf_freq\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"set_rf_freq: ret %d freq %llu\0A\00", [33 x i8] zeroinitializer }, align 32
@max2175_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.6, i32 323, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"read ret(%d): idx 0x%02x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max2175_read\00", [19 x i8] zeroinitializer }, align 32
@max2175_read._entry_ptr = internal global ptr @max2175_read._entry, section ".printk_index", align 4
@max2175_set_nco_freq.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.6, ptr @.str.35, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max2175_set_nco_freq\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"freq %d desired %lld reg %u\0A\00", [35 x i8] zeroinitializer }, align 32
@max2175_poll_csm_ready._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 386, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csm not ready\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max2175_poll_csm_ready\00", [41 x i8] zeroinitializer }, align 32
@max2175_poll_csm_ready._entry_ptr = internal global ptr @max2175_poll_csm_ready._entry, section ".printk_index", align 4
@max2175_write_bits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 359, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"wbits ret(%d): idx 0x%02x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max2175_write_bits\00", [45 x i8] zeroinitializer }, align 32
@max2175_write_bits._entry_ptr = internal global ptr @max2175_write_bits._entry, section ".printk_index", align 4
@max2175_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.6, i32 337, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"write ret(%d): idx 0x%02x val 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max2175_write\00", [18 x i8] zeroinitializer }, align 32
@max2175_write._entry_ptr = internal global ptr @max2175_write._entry, section ".printk_index", align 4
@max2175_set_rf_freq_non_am_bands.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.6, ptr @.str.43, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"max2175_set_rf_freq_non_am_bands\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rf_freq: non AM bands\0A\00", [41 x i8] zeroinitializer }, align 32
@max2175_set_lo_freq.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.6, ptr @.str.45, i8 0, i8 -106, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max2175_set_lo_freq\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lo_mult %u int %u  frac %u\0A\00", [36 x i8] zeroinitializer }, align 32
@max2175_csm_action.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.46, ptr @.str.6, ptr @.str.47, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max2175_csm_action\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"csm_action: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@max2175_set_csm_mode.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.6, ptr @.str.49, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max2175_set_csm_mode\00", [43 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set csm new mode %d\0A\00", [43 x i8] zeroinitializer }, align 32
@max2175_set_freq_and_mode.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.6, ptr @.str.51, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max2175_set_freq_and_mode\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"set_freq_and_mode: freq %u rx_mode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@max2175_rx_mode_from_freq.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.52, ptr @.str.6, ptr @.str.53, i8 0, i8 -54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max2175_rx_mode_from_freq\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"rx_mode_from_freq: freq %u mode %d\0A\00", [60 x i8] zeroinitializer }, align 32
@max2175_set_rx_mode.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.6, ptr @.str.55, i8 0, i8 -63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max2175_set_rx_mode\00", [44 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"set_rx_mode: %u am_hiz %u\0A\00", [37 x i8] zeroinitializer }, align 32
@max2175_set_rx_mode.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.6, ptr @.str.56, i8 0, i8 -61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setting AM HiZ related config\0A\00", [33 x i8] zeroinitializer }, align 32
@fmeu1p2_map = internal constant { [49 x %struct.max2175_reg_map], [62 x i8] } { [49 x %struct.max2175_reg_map] [%struct.max2175_reg_map { i8 1, i8 21 }, %struct.max2175_reg_map { i8 2, i8 4 }, %struct.max2175_reg_map { i8 3, i8 -72 }, %struct.max2175_reg_map { i8 4, i8 -29 }, %struct.max2175_reg_map { i8 5, i8 53 }, %struct.max2175_reg_map { i8 6, i8 24 }, %struct.max2175_reg_map { i8 7, i8 124 }, %struct.max2175_reg_map { i8 8, i8 0 }, %struct.max2175_reg_map { i8 9, i8 0 }, %struct.max2175_reg_map { i8 10, i8 115 }, %struct.max2175_reg_map { i8 11, i8 64 }, %struct.max2175_reg_map { i8 12, i8 8 }, %struct.max2175_reg_map { i8 14, i8 122 }, %struct.max2175_reg_map { i8 15, i8 -120 }, %struct.max2175_reg_map { i8 16, i8 -111 }, %struct.max2175_reg_map { i8 17, i8 97 }, %struct.max2175_reg_map { i8 18, i8 97 }, %struct.max2175_reg_map { i8 19, i8 97 }, %struct.max2175_reg_map { i8 20, i8 97 }, %struct.max2175_reg_map { i8 21, i8 90 }, %struct.max2175_reg_map { i8 22, i8 15 }, %struct.max2175_reg_map { i8 23, i8 52 }, %struct.max2175_reg_map { i8 24, i8 28 }, %struct.max2175_reg_map { i8 26, i8 -120 }, %struct.max2175_reg_map { i8 27, i8 51 }, %struct.max2175_reg_map { i8 28, i8 2 }, %struct.max2175_reg_map { i8 29, i8 0 }, %struct.max2175_reg_map { i8 30, i8 1 }, %struct.max2175_reg_map { i8 35, i8 -128 }, %struct.max2175_reg_map { i8 36, i8 0 }, %struct.max2175_reg_map { i8 37, i8 -107 }, %struct.max2175_reg_map { i8 38, i8 5 }, %struct.max2175_reg_map { i8 39, i8 44 }, %struct.max2175_reg_map { i8 50, i8 8 }, %struct.max2175_reg_map { i8 51, i8 -88 }, %struct.max2175_reg_map { i8 54, i8 47 }, %struct.max2175_reg_map { i8 55, i8 126 }, %struct.max2175_reg_map { i8 85, i8 -65 }, %struct.max2175_reg_map { i8 86, i8 63 }, %struct.max2175_reg_map { i8 87, i8 -1 }, %struct.max2175_reg_map { i8 88, i8 -97 }, %struct.max2175_reg_map { i8 118, i8 -84 }, %struct.max2175_reg_map { i8 119, i8 64 }, %struct.max2175_reg_map { i8 120, i8 0 }, %struct.max2175_reg_map { i8 121, i8 0 }, %struct.max2175_reg_map { i8 -126, i8 71 }, %struct.max2175_reg_map { i8 -125, i8 0 }, %struct.max2175_reg_map { i8 -123, i8 17 }, %struct.max2175_reg_map { i8 -122, i8 63 }], [62 x i8] zeroinitializer }, align 32
@ch_coeff_fmeu = internal constant { [24 x i16], [48 x i8] } { [24 x i16] [i16 0, i16 -1, i16 1, i16 2, i16 -6, i16 -1, i16 21, i16 -20, i16 -34, i16 84, i16 -7, i16 -174, i16 184, i16 162, i16 -502, i16 175, i16 739, i16 -1004, i16 -375, i16 2205, i16 -1490, i16 -3313, i16 9662, i16 20150], [48 x i8] zeroinitializer }, align 32
@eq_coeff_fmeu1_ra02_m6db = internal constant { [24 x i16], [48 x i8] } { [24 x i16] [i16 64, i16 -58, i16 -6, i16 44, i16 13, i16 -112, i16 55, i16 110, i16 -64, i16 -165, i16 106, i16 240, i16 -169, i16 -364, i16 274, i16 594, i16 -500, i16 -918, i16 901, i16 1363, i16 -1463, i16 -2167, i16 2961, i16 6672], [48 x i8] zeroinitializer }, align 32
@max2175_set_filter_coeffs.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.6, ptr @.str.58, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max2175_set_filter_coeffs\00", [38 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"set_filter_coeffs: m_sel %d bank %d\0A\00", [59 x i8] zeroinitializer }, align 32
@dab12_map = internal constant { [49 x %struct.max2175_reg_map], [62 x i8] } { [49 x %struct.max2175_reg_map] [%struct.max2175_reg_map { i8 1, i8 19 }, %struct.max2175_reg_map { i8 2, i8 13 }, %struct.max2175_reg_map { i8 3, i8 21 }, %struct.max2175_reg_map { i8 4, i8 85 }, %struct.max2175_reg_map { i8 5, i8 10 }, %struct.max2175_reg_map { i8 6, i8 -96 }, %struct.max2175_reg_map { i8 7, i8 64 }, %struct.max2175_reg_map { i8 8, i8 0 }, %struct.max2175_reg_map { i8 9, i8 0 }, %struct.max2175_reg_map { i8 10, i8 125 }, %struct.max2175_reg_map { i8 11, i8 74 }, %struct.max2175_reg_map { i8 12, i8 40 }, %struct.max2175_reg_map { i8 14, i8 67 }, %struct.max2175_reg_map { i8 15, i8 -75 }, %struct.max2175_reg_map { i8 16, i8 49 }, %struct.max2175_reg_map { i8 17, i8 -98 }, %struct.max2175_reg_map { i8 18, i8 104 }, %struct.max2175_reg_map { i8 19, i8 -98 }, %struct.max2175_reg_map { i8 20, i8 104 }, %struct.max2175_reg_map { i8 21, i8 88 }, %struct.max2175_reg_map { i8 22, i8 47 }, %struct.max2175_reg_map { i8 23, i8 63 }, %struct.max2175_reg_map { i8 24, i8 64 }, %struct.max2175_reg_map { i8 26, i8 -120 }, %struct.max2175_reg_map { i8 27, i8 -86 }, %struct.max2175_reg_map { i8 28, i8 -102 }, %struct.max2175_reg_map { i8 29, i8 0 }, %struct.max2175_reg_map { i8 30, i8 0 }, %struct.max2175_reg_map { i8 35, i8 -128 }, %struct.max2175_reg_map { i8 36, i8 0 }, %struct.max2175_reg_map { i8 37, i8 0 }, %struct.max2175_reg_map { i8 38, i8 0 }, %struct.max2175_reg_map { i8 39, i8 0 }, %struct.max2175_reg_map { i8 50, i8 8 }, %struct.max2175_reg_map { i8 51, i8 -8 }, %struct.max2175_reg_map { i8 54, i8 45 }, %struct.max2175_reg_map { i8 55, i8 126 }, %struct.max2175_reg_map { i8 85, i8 -81 }, %struct.max2175_reg_map { i8 86, i8 63 }, %struct.max2175_reg_map { i8 87, i8 -8 }, %struct.max2175_reg_map { i8 88, i8 -103 }, %struct.max2175_reg_map { i8 118, i8 0 }, %struct.max2175_reg_map { i8 119, i8 0 }, %struct.max2175_reg_map { i8 120, i8 2 }, %struct.max2175_reg_map { i8 121, i8 64 }, %struct.max2175_reg_map { i8 -126, i8 0 }, %struct.max2175_reg_map { i8 -125, i8 0 }, %struct.max2175_reg_map { i8 -123, i8 0 }, %struct.max2175_reg_map { i8 -122, i8 32 }], [62 x i8] zeroinitializer }, align 32
@ch_coeff_dab1 = internal constant { [24 x i16], [48 x i8] } { [24 x i16] [i16 28, i16 7, i16 -51, i16 86, i16 -92, i16 51, i16 39, i16 -159, i16 270, i16 -320, i16 262, i16 -72, i16 -228, i16 572, i16 -846, i16 923, i16 -690, i16 85, i16 874, i16 -2082, i16 3361, i16 -4494, i16 5273, i16 27217], [48 x i8] zeroinitializer }, align 32
@ch_coeff_fmna = internal constant { [24 x i16], [48 x i8] } { [24 x i16] [i16 1, i16 3, i16 -2, i16 -12, i16 0, i16 31, i16 12, i16 -68, i16 -45, i16 125, i16 117, i16 -205, i16 -255, i16 305, i16 495, i16 -416, i16 -902, i16 526, i16 1622, i16 -620, i16 -3179, i16 683, i16 10327, i16 15679], [48 x i8] zeroinitializer }, align 32
@eq_coeff_fmna1_ra02_m6db = internal constant { [24 x i16], [48 x i8] } { [24 x i16] [i16 -15, i16 -31, i16 -17, i16 14, i16 48, i16 47, i16 -10, i16 -89, i16 -99, i16 10, i16 162, i16 181, i16 -22, i16 -295, i16 -315, i16 61, i16 535, i16 539, i16 -166, i16 -981, i16 -835, i16 708, i16 2755, i16 3717], [48 x i8] zeroinitializer }, align 32
@fmna1p0_map = internal constant { [49 x %struct.max2175_reg_map], [62 x i8] } { [49 x %struct.max2175_reg_map] [%struct.max2175_reg_map { i8 1, i8 19 }, %struct.max2175_reg_map { i8 2, i8 8 }, %struct.max2175_reg_map { i8 3, i8 -115 }, %struct.max2175_reg_map { i8 4, i8 -64 }, %struct.max2175_reg_map { i8 5, i8 53 }, %struct.max2175_reg_map { i8 6, i8 24 }, %struct.max2175_reg_map { i8 7, i8 125 }, %struct.max2175_reg_map { i8 8, i8 63 }, %struct.max2175_reg_map { i8 9, i8 125 }, %struct.max2175_reg_map { i8 10, i8 117 }, %struct.max2175_reg_map { i8 11, i8 64 }, %struct.max2175_reg_map { i8 12, i8 8 }, %struct.max2175_reg_map { i8 14, i8 122 }, %struct.max2175_reg_map { i8 15, i8 -120 }, %struct.max2175_reg_map { i8 16, i8 -111 }, %struct.max2175_reg_map { i8 17, i8 97 }, %struct.max2175_reg_map { i8 18, i8 97 }, %struct.max2175_reg_map { i8 19, i8 97 }, %struct.max2175_reg_map { i8 20, i8 97 }, %struct.max2175_reg_map { i8 21, i8 92 }, %struct.max2175_reg_map { i8 22, i8 15 }, %struct.max2175_reg_map { i8 23, i8 52 }, %struct.max2175_reg_map { i8 24, i8 28 }, %struct.max2175_reg_map { i8 26, i8 -120 }, %struct.max2175_reg_map { i8 27, i8 51 }, %struct.max2175_reg_map { i8 28, i8 2 }, %struct.max2175_reg_map { i8 29, i8 0 }, %struct.max2175_reg_map { i8 30, i8 1 }, %struct.max2175_reg_map { i8 35, i8 -128 }, %struct.max2175_reg_map { i8 36, i8 0 }, %struct.max2175_reg_map { i8 37, i8 -107 }, %struct.max2175_reg_map { i8 38, i8 5 }, %struct.max2175_reg_map { i8 39, i8 44 }, %struct.max2175_reg_map { i8 50, i8 8 }, %struct.max2175_reg_map { i8 51, i8 -88 }, %struct.max2175_reg_map { i8 54, i8 -81 }, %struct.max2175_reg_map { i8 55, i8 126 }, %struct.max2175_reg_map { i8 85, i8 -65 }, %struct.max2175_reg_map { i8 86, i8 63 }, %struct.max2175_reg_map { i8 87, i8 -1 }, %struct.max2175_reg_map { i8 88, i8 -97 }, %struct.max2175_reg_map { i8 118, i8 -90 }, %struct.max2175_reg_map { i8 119, i8 64 }, %struct.max2175_reg_map { i8 120, i8 0 }, %struct.max2175_reg_map { i8 121, i8 0 }, %struct.max2175_reg_map { i8 -126, i8 53 }, %struct.max2175_reg_map { i8 -125, i8 0 }, %struct.max2175_reg_map { i8 -123, i8 17 }, %struct.max2175_reg_map { i8 -122, i8 63 }], [62 x i8] zeroinitializer }, align 32
@fmna2p0_map = internal constant { [49 x %struct.max2175_reg_map], [62 x i8] } { [49 x %struct.max2175_reg_map] [%struct.max2175_reg_map { i8 1, i8 19 }, %struct.max2175_reg_map { i8 2, i8 8 }, %struct.max2175_reg_map { i8 3, i8 -115 }, %struct.max2175_reg_map { i8 4, i8 -64 }, %struct.max2175_reg_map { i8 5, i8 53 }, %struct.max2175_reg_map { i8 6, i8 24 }, %struct.max2175_reg_map { i8 7, i8 124 }, %struct.max2175_reg_map { i8 8, i8 84 }, %struct.max2175_reg_map { i8 9, i8 -89 }, %struct.max2175_reg_map { i8 10, i8 85 }, %struct.max2175_reg_map { i8 11, i8 66 }, %struct.max2175_reg_map { i8 12, i8 72 }, %struct.max2175_reg_map { i8 14, i8 122 }, %struct.max2175_reg_map { i8 15, i8 -120 }, %struct.max2175_reg_map { i8 16, i8 -111 }, %struct.max2175_reg_map { i8 17, i8 97 }, %struct.max2175_reg_map { i8 18, i8 97 }, %struct.max2175_reg_map { i8 19, i8 97 }, %struct.max2175_reg_map { i8 20, i8 97 }, %struct.max2175_reg_map { i8 21, i8 92 }, %struct.max2175_reg_map { i8 22, i8 15 }, %struct.max2175_reg_map { i8 23, i8 52 }, %struct.max2175_reg_map { i8 24, i8 28 }, %struct.max2175_reg_map { i8 26, i8 -120 }, %struct.max2175_reg_map { i8 27, i8 51 }, %struct.max2175_reg_map { i8 28, i8 2 }, %struct.max2175_reg_map { i8 29, i8 0 }, %struct.max2175_reg_map { i8 30, i8 1 }, %struct.max2175_reg_map { i8 35, i8 -128 }, %struct.max2175_reg_map { i8 36, i8 0 }, %struct.max2175_reg_map { i8 37, i8 -107 }, %struct.max2175_reg_map { i8 38, i8 5 }, %struct.max2175_reg_map { i8 39, i8 44 }, %struct.max2175_reg_map { i8 50, i8 8 }, %struct.max2175_reg_map { i8 51, i8 -88 }, %struct.max2175_reg_map { i8 54, i8 -81 }, %struct.max2175_reg_map { i8 55, i8 126 }, %struct.max2175_reg_map { i8 85, i8 -65 }, %struct.max2175_reg_map { i8 86, i8 63 }, %struct.max2175_reg_map { i8 87, i8 -1 }, %struct.max2175_reg_map { i8 88, i8 -97 }, %struct.max2175_reg_map { i8 118, i8 -84 }, %struct.max2175_reg_map { i8 119, i8 -64 }, %struct.max2175_reg_map { i8 120, i8 0 }, %struct.max2175_reg_map { i8 121, i8 0 }, %struct.max2175_reg_map { i8 -126, i8 107 }, %struct.max2175_reg_map { i8 -125, i8 0 }, %struct.max2175_reg_map { i8 -123, i8 17 }, %struct.max2175_reg_map { i8 -122, i8 63 }], [62 x i8] zeroinitializer }, align 32
@max2175_set_bbfilter.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.6, ptr @.str.60, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max2175_set_bbfilter\00", [43 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_bbfilter AM: rom %d\0A\00", [39 x i8] zeroinitializer }, align 32
@max2175_set_bbfilter.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.6, ptr @.str.61, i8 0, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"set_bbfilter DAB: rom %d\0A\00", [38 x i8] zeroinitializer }, align 32
@max2175_set_bbfilter.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.6, ptr @.str.62, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_bbfilter FM: rom %d\0A\00", [39 x i8] zeroinitializer }, align 32
@max2175_set_hsls.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.63, ptr @.str.6, ptr @.str.64, i8 0, i8 -75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max2175_set_hsls\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_hsls: lo_pos %u\0A\00", [43 x i8] zeroinitializer }, align 32
@max2175_i2s_enable.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.6, ptr @.str.66, i8 0, i8 106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max2175_i2s_enable\00", [45 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s %sabled\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"RF\00", [29 x i8] zeroinitializer }, align 32
@max2175_s_ctrl.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.6, ptr @.str.71, i8 0, i8 -1, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max2175_s_ctrl\00", [17 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s_ctrl: id 0x%x, val %u\0A\00", [39 x i8] zeroinitializer }, align 32
@max2175_s_ctrl_rx_mode.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.72, ptr @.str.6, ptr @.str.73, i8 0, i8 -4, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max2175_s_ctrl_rx_mode\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"s_ctrl_rx_mode: %u curr freq %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"I2S Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HSLS Above/Below Desired\00", [39 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RX Mode\00", [24 x i8] zeroinitializer }, align 32
@max2175_ctrl_eu_rx_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.77, ptr @.str.78], [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EU FM 1.2\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAB 1.2\00", [24 x i8] zeroinitializer }, align 32
@max2175_ctrl_na_rx_modes = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.79, ptr @.str.80], [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NA FM 1.0\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NA FM 2.0\00", [22 x i8] zeroinitializer }, align 32
@max2175_core_init.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.6, ptr @.str.82, i8 0, i8 -17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max2175_core_init\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"refout_bits %u\0A\00", [16 x i8] zeroinitializer }, align 32
@max2175_core_init.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.6, ptr @.str.83, i8 0, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"core initialized\0A\00", [46 x i8] zeroinitializer }, align 32
@full_fm_eu_1p0 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"\15\04\B8\E35\18|\00\00}@\08pz\88\91aaaaZ\0F4\1C\14\883\02\00\09\00e\9F+\80\00\95\05,\00\00\00\00\00\00\00\00@J\08\A8\0E\0E/~\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AB^\A9\AE\BBW\18;\03;d@`\00*\BF?\FF\9F\00\00\00\00\00\00\0A\00\FF\FC\EF\1C@\00\00\02\00\00\E0\00\00\00\00\00\00\00\00\00\00\AC@\00\00\00\00\00\00u\00\00\00G\00\00\11?\22\00\F1\00A\03\B0\00\00\00\1B", [47 x i8] zeroinitializer }, align 32
@full_fm_na_1p0 = internal constant { [145 x i8], [47 x i8] } { [145 x i8] c"\13\08\8D\C05\18}?}u@\08pz\88\91aaaa\\\0F4\1C\14\883\02\00\01\00e\9F+\80\00\95\05,\00\00\00\00\00\00\00\00@J\08\A8\0E\0E\AF~\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AB^\A9\AE\BBW\18;\03;d@`\00*\BF?\FF\9F\00\00\00\00\00\00\0A\00\FF\FC\EF\1C@\00\00\02\00\00\E0\00\00\00\00\00\00\00\00\00\00\A6@\00\00\00\00\00\00u\00\00\005\00\00\11?\22\00\F1\00A\03\B0\00\00\00\1B", [47 x i8] zeroinitializer }, align 32
@adc_presets = internal constant { [2 x [23 x i8]], [50 x i8] } { [2 x [23 x i8]] [[23 x i8] c"\83\00\CF\B4\0F,\0CI\00\00\00\8C\02\02\00\04\EC\82K\CC\01\88\0C", [23 x i8] c"\83\00\CF\B4\0F,\0CI\00\00\00\8C\02 3\8CW\D7Y\B7e\0E\0C"], [50 x i8] zeroinitializer }, align 32
@max2175_init_power_manager._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.85, ptr @.str.6, i32 848, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"init pm failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"max2175_init_power_manager\00", [37 x i8] zeroinitializer }, align 32
@max2175_init_power_manager._entry_ptr = internal global ptr @max2175_init_power_manager._entry, section ".printk_index", align 4
@max2175_recalibrate_adc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.6, i32 867, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adc recalibration failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max2175_recalibrate_adc\00", [40 x i8] zeroinitializer }, align 32
@max2175_recalibrate_adc._entry_ptr = internal global ptr @max2175_recalibrate_adc._entry, section ".printk_index", align 4
@max2175_read_rom.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.6, ptr @.str.89, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max2175_read_rom\00", [47 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"read_rom: row %d data 0x%02x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 32, i64 10619178, i64 10619198, i64 10619227]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 9968017, i64 9968018, i64 9968019]
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"max2175_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1429, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1431, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [15 x i8] c"max2175_of_ids\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1423, i32 34 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"max2175_id\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1417, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1287, i32 45 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1294, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1297, i32 40 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1302, i32 4 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1311, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [22 x i8] c"max2175_regmap_config\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 253, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1315, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1318, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1333, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [12 x i8] c"max2175_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1185, i32 37 }
@___asan_gen_.167 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1342, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"max2175_ctrl_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1189, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant [15 x i8] c"max2175_i2s_en\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1198, i32 38 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"max2175_hsls\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1214, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant [19 x i8] c"max2175_eu_rx_mode\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1240, i32 38 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"eu_rx_modes\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 46, i32 36 }
@___asan_gen_.188 = private unnamed_addr constant [12 x i8] c"eu_bands_rf\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 218, i32 41 }
@___asan_gen_.191 = private unnamed_addr constant [19 x i8] c"max2175_na_rx_mode\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1250, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"na_rx_modes\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 52, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant [12 x i8] c"na_bands_rf\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 227, i32 41 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1383, i32 3 }
@___asan_gen_.206 = private unnamed_addr constant [22 x i8] c"max2175_volatile_regs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 244, i32 41 }
@___asan_gen_.209 = private unnamed_addr constant [21 x i8] c"max2175_reg_defaults\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 249, i32 33 }
@___asan_gen_.212 = private unnamed_addr constant [30 x i8] c"max2175_regmap_volatile_range\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 237, i32 34 }
@___asan_gen_.215 = private unnamed_addr constant [18 x i8] c"max2175_tuner_ops\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1177, i32 43 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1101, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1118, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 717, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 700, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 323, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 653, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 386, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 359, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 336, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 670, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 602, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 538, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 515, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1084, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 810, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 773, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 780, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [12 x i8] c"fmeu1p2_map\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 124, i32 37 }
@___asan_gen_.329 = private unnamed_addr constant [14 x i8] c"ch_coeff_fmeu\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 180, i32 18 }
@___asan_gen_.332 = private unnamed_addr constant [25 x i8] c"eq_coeff_fmeu1_ra02_m6db\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 186, i32 18 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 433, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant [10 x i8] c"dab12_map\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 107, i32 37 }
@___asan_gen_.344 = private unnamed_addr constant [14 x i8] c"ch_coeff_dab1\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 174, i32 18 }
@___asan_gen_.347 = private unnamed_addr constant [14 x i8] c"ch_coeff_fmna\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 192, i32 18 }
@___asan_gen_.350 = private unnamed_addr constant [25 x i8] c"eq_coeff_fmna1_ra02_m6db\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 198, i32 18 }
@___asan_gen_.353 = private unnamed_addr constant [12 x i8] c"fmna1p0_map\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 141, i32 37 }
@___asan_gen_.356 = private unnamed_addr constant [12 x i8] c"fmna2p0_map\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 158, i32 37 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 496, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 499, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 502, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 725, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 424, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1159, i32 20 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1023, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1008, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1201, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1217, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1243, i32 10 }
@___asan_gen_.413 = private unnamed_addr constant [25 x i8] c"max2175_ctrl_eu_rx_modes\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1230, i32 27 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1231, i32 24 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1232, i32 22 }
@___asan_gen_.422 = private unnamed_addr constant [25 x i8] c"max2175_ctrl_na_rx_modes\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1235, i32 27 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1236, i32 24 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 1237, i32 24 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 959, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 998, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant [15 x i8] c"full_fm_eu_1p0\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 62, i32 17 }
@___asan_gen_.443 = private unnamed_addr constant [15 x i8] c"full_fm_na_1p0\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 84, i32 17 }
@___asan_gen_.446 = private unnamed_addr constant [12 x i8] c"adc_presets\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 204, i32 17 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 848, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 867, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.471 = private constant [31 x i8] c"../drivers/media/i2c/max2175.c\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.471, i32 884, i32 2 }
@llvm.compiler.used = appending global [144 x ptr] [ptr @__UNIQUE_ID_author324, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file322, ptr @__UNIQUE_ID_license323, ptr @__exitcall_max2175_driver_exit, ptr @__initcall__kmod_max2175__320_1439_max2175_driver_init6, ptr @max2175_driver_exit, ptr @max2175_init_power_manager._entry, ptr @max2175_init_power_manager._entry_ptr, ptr @max2175_poll_csm_ready._entry, ptr @max2175_poll_csm_ready._entry_ptr, ptr @max2175_probe._entry, ptr @max2175_probe._entry.13, ptr @max2175_probe._entry.16, ptr @max2175_probe._entry.22, ptr @max2175_probe._entry.9, ptr @max2175_probe._entry_ptr, ptr @max2175_probe._entry_ptr.11, ptr @max2175_probe._entry_ptr.15, ptr @max2175_probe._entry_ptr.19, ptr @max2175_probe._entry_ptr.24, ptr @max2175_read._entry, ptr @max2175_read._entry_ptr, ptr @max2175_recalibrate_adc._entry, ptr @max2175_recalibrate_adc._entry_ptr, ptr @max2175_write._entry, ptr @max2175_write._entry_ptr, ptr @max2175_write_bits._entry, ptr @max2175_write_bits._entry_ptr, ptr @max2175_driver, ptr @.str, ptr @max2175_of_ids, ptr @max2175_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @max2175_probe._key, ptr @max2175_regmap_config, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @max2175_ops, ptr @max2175_probe._key.20, ptr @.str.21, ptr @max2175_ctrl_ops, ptr @max2175_i2s_en, ptr @max2175_hsls, ptr @max2175_eu_rx_mode, ptr @eu_rx_modes, ptr @eu_bands_rf, ptr @max2175_na_rx_mode, ptr @na_rx_modes, ptr @na_bands_rf, ptr @.str.23, ptr @max2175_volatile_regs, ptr @max2175_reg_defaults, ptr @max2175_regmap_volatile_range, ptr @max2175_tuner_ops, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @fmeu1p2_map, ptr @ch_coeff_fmeu, ptr @eq_coeff_fmeu1_ra02_m6db, ptr @.str.57, ptr @.str.58, ptr @dab12_map, ptr @ch_coeff_dab1, ptr @ch_coeff_fmna, ptr @eq_coeff_fmna1_ra02_m6db, ptr @fmna1p0_map, ptr @fmna2p0_map, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @max2175_ctrl_eu_rx_modes, ptr @.str.77, ptr @.str.78, ptr @max2175_ctrl_na_rx_modes, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @full_fm_eu_1p0, ptr @full_fm_na_1p0, ptr @adc_presets, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89], section "llvm.metadata"
@0 = internal global [126 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_probe._key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_i2s_en to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_hsls to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_eu_rx_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eu_rx_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eu_bands_rf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_na_rx_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @na_rx_modes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @na_bands_rf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_reg_defaults to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_regmap_volatile_range to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_poll_csm_ready._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_write_bits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmeu1p2_map to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_coeff_fmeu to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_coeff_fmeu1_ra02_m6db to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dab12_map to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_coeff_dab1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch_coeff_fmna to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_coeff_fmna1_ra02_m6db to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmna1p0_map to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmna2p0_map to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_ctrl_eu_rx_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_ctrl_na_rx_modes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_fm_eu_1p0 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @full_fm_na_1p0 to i32), i32 145, i32 192, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_presets to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_init_power_manager._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max2175_recalibrate_adc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max2175_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max2175_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max2175_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @max2175_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2175_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ctrl_hdl = getelementptr inbounds %struct.max2175, ptr %1, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #9
  tail call void @v4l2_async_unregister_subdev(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2175_probe(ptr noundef %client) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %refout_load = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %refout_load) #9
  %0 = ptrtoint ptr %refout_load to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %refout_load, align 4, !annotation !261
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #9
  %3 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  br label %if.end

of_parse_phandle.exit:                            ; preds = %entry
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #9
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %of_parse_phandle.exit.if.end_crit_edge, label %if.then

of_parse_phandle.exit.if.end_crit_edge:           ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @of_node_put(ptr noundef nonnull %5) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %of_parse_phandle.exit.if.end_crit_edge, %of_parse_phandle.exit.thread
  %tobool.not190 = phi i1 [ true, %of_parse_phandle.exit.thread ], [ false, %if.then ], [ true, %of_parse_phandle.exit.if.end_crit_edge ]
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool3.not = icmp eq ptr %7, null
  %fwnode4 = getelementptr inbounds %struct.device_node, ptr %7, i32 0, i32 3
  %spec.select = select i1 %tobool3.not, ptr null, ptr %fwnode4
  %call5 = call zeroext i1 @fwnode_property_present(ptr noundef %spec.select, ptr noundef nonnull @.str.2) #9
  %call.i183 = call i32 @fwnode_property_read_u32_array(ptr noundef %spec.select, ptr noundef nonnull @.str.3, ptr noundef nonnull %refout_load, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %tobool9.not = icmp eq i32 %call.i183, 0
  br i1 %tobool9.not, label %if.then10, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10:                                        ; preds = %if.end
  %8 = ptrtoint ptr %refout_load to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %refout_load, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 41, i32 %9)
  %cmp.i = icmp ult i32 %9, 41
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %div.lhs.trunc.i = trunc i32 %9 to i8
  %div1.i = udiv i8 %div.lhs.trunc.i, 10
  %div.zext.i = zext i8 %div1.i to i32
  br label %if.end16

if.else.i:                                        ; preds = %if.then10
  %10 = add i32 %9, -60
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %10)
  %11 = icmp ult i32 %10, 11
  br i1 %11, label %if.then3.i, label %do.end

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %div4.lhs.trunc.i = trunc i32 %9 to i8
  %div42.i = udiv i8 %div4.lhs.trunc.i, 10
  %div4.zext.i = zext i8 %div42.i to i32
  %sub.i = add nsw i32 %div4.zext.i, -1
  br label %if.end16

do.end:                                           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %9) #12
  br label %cleanup

if.end16:                                         ; preds = %if.then3.i, %if.then.i, %if.end.if.end16_crit_edge
  %refout_bits.1 = phi i32 [ 0, %if.end.if.end16_crit_edge ], [ %div.zext.i, %if.then.i ], [ %sub.i, %if.then3.i ]
  %call18 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #9
  %cmp.i185 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then20, label %if.end26

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %call18 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %12) #12
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %call28 = call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max2175_regmap_config, ptr noundef nonnull @max2175_probe._key, ptr noundef nonnull @.str.12) #9
  %cmp.i186 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then30, label %if.end36

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %call28 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %13) #12
  br label %cleanup

if.end36:                                         ; preds = %if.end26
  %call.i187 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 440, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i187, null
  br i1 %cmp, label %if.end36.cleanup_crit_edge, label %if.end40

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  %master43 = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 15
  %frombool = zext i1 %tobool.not190 to i8
  %14 = ptrtoint ptr %master43 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %master43, align 4
  %am_hiz45 = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 16
  %frombool46 = zext i1 %call5 to i8
  %15 = ptrtoint ptr %am_hiz45 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool46, ptr %am_hiz45, align 1
  %mode_resolved = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 20
  %16 = ptrtoint ptr %mode_resolved to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %mode_resolved, align 1
  %regmap47 = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 9
  %17 = ptrtoint ptr %regmap47 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call28, ptr %regmap47, align 4
  %call48 = call i32 @clk_get_rate(ptr noundef %call18) #9
  %xtal_freq = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 13
  %18 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call48, ptr %xtal_freq, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call48) #12
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i187, ptr noundef %client, ptr noundef nonnull @max2175_ops) #9
  %client54 = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 1
  %19 = ptrtoint ptr %client54 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %client, ptr %client54, align 4
  %flags = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i187, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %or = or i32 %21, 4
  store i32 %or, ptr %flags, align 4
  %ctrl_hdl = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 2
  %call56 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %ctrl_hdl, i32 noundef 7, ptr noundef nonnull @max2175_probe._key.20, ptr noundef nonnull @.str.21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end59, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end40
  %call60 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @max2175_ctrl_ops, i32 noundef 10619178, i64 noundef 0, i64 noundef 63, i64 noundef 1, i64 noundef 0) #9
  %lna_gain = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 3
  %22 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call60, ptr %lna_gain, align 4
  %flags62 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call60, i32 0, i32 20
  %23 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags62, align 4
  %or63 = or i32 %24, 132
  store i32 %or63, ptr %flags62, align 4
  %call64 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @max2175_ctrl_ops, i32 noundef 10619198, i64 noundef 0, i64 noundef 31, i64 noundef 1, i64 noundef 0) #9
  %if_gain = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 4
  %25 = ptrtoint ptr %if_gain to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call64, ptr %if_gain, align 4
  %flags66 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call64, i32 0, i32 20
  %26 = ptrtoint ptr %flags66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags66, align 4
  %or67 = or i32 %27, 132
  store i32 %or67, ptr %flags66, align 4
  %call68 = call ptr @v4l2_ctrl_new_std(ptr noundef %ctrl_hdl, ptr noundef nonnull @max2175_ctrl_ops, i32 noundef 10619227, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #9
  %pll_lock = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 5
  %28 = ptrtoint ptr %pll_lock to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call68, ptr %pll_lock, align 4
  %flags70 = getelementptr inbounds %struct.v4l2_ctrl, ptr %call68, i32 0, i32 20
  %29 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags70, align 4
  %or71 = or i32 %30, 132
  store i32 %or71, ptr %flags70, align 4
  %call72 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull @max2175_i2s_en, ptr noundef null) #9
  %i2s_en = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 6
  %31 = ptrtoint ptr %i2s_en to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call72, ptr %i2s_en, align 4
  %call73 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull @max2175_hsls, ptr noundef null) #9
  %hsls = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 7
  %32 = ptrtoint ptr %hsls to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call73, ptr %hsls, align 4
  %33 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %34)
  %cmp75 = icmp eq i32 %34, 36864000
  %max2175_eu_rx_mode.max2175_na_rx_mode = select i1 %cmp75, ptr @max2175_eu_rx_mode, ptr @max2175_na_rx_mode
  %eu_rx_modes.na_rx_modes = select i1 %cmp75, ptr @eu_rx_modes, ptr @na_rx_modes
  %eu_bands_rf.na_bands_rf = select i1 %cmp75, ptr @eu_bands_rf, ptr @na_bands_rf
  %call78 = call ptr @v4l2_ctrl_new_custom(ptr noundef %ctrl_hdl, ptr noundef nonnull %max2175_eu_rx_mode.max2175_na_rx_mode, ptr noundef null) #9
  %35 = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call78, ptr %35, align 4
  %37 = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 11
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %eu_rx_modes.na_rx_modes, ptr %37, align 4
  %39 = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 12
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %eu_bands_rf.na_bands_rf, ptr %39, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i187, i32 0, i32 8
  %41 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %ctrl_hdl, ptr %ctrl_handler, align 4
  %freq = getelementptr inbounds %struct.max2175, ptr %call.i187, i32 0, i32 10
  %42 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65000000, ptr %freq, align 4
  %call86 = call i32 @v4l2_async_register_subdev(ptr noundef nonnull %call.i187) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end93, label %do.end91

do.end91:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #12
  br label %err_reg

if.end93:                                         ; preds = %if.end59
  %call94 = call fastcc i32 @max2175_core_init(ptr noundef nonnull %call.i187, i32 noundef %refout_bits.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.err_init_crit_edge

if.end93.err_init_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init

if.end97:                                         ; preds = %if.end93
  %call98 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %ctrl_hdl) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end97.cleanup_crit_edge, label %if.end97.err_init_crit_edge

if.end97.err_init_crit_edge:                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_init

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_init:                                         ; preds = %if.end97.err_init_crit_edge, %if.end93.err_init_crit_edge
  %ret.0 = phi i32 [ %call94, %if.end93.err_init_crit_edge ], [ %call98, %if.end97.err_init_crit_edge ]
  call void @v4l2_async_unregister_subdev(ptr noundef nonnull %call.i187) #9
  br label %err_reg

err_reg:                                          ; preds = %err_init, %do.end91
  %ret.1 = phi i32 [ %call86, %do.end91 ], [ %ret.0, %err_init ]
  call void @v4l2_ctrl_handler_free(ptr noundef %ctrl_hdl) #9
  br label %cleanup

cleanup:                                          ; preds = %err_reg, %if.end97.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.then30, %if.then20, %do.end
  %retval.0 = phi i32 [ %12, %if.then20 ], [ -19, %if.then30 ], [ %ret.1, %err_reg ], [ -22, %do.end ], [ -12, %if.end36.cleanup_crit_edge ], [ %call56, %if.end40.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %refout_load) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_async_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_custom(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_async_register_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_core_init(ptr noundef %ctx, i32 noundef %refout_bits) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xtal_freq = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 13
  %0 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %1)
  %cmp = icmp eq i32 %1, 36864000
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  br i1 %cmp, label %entry.for.body.i_crit_edge, label %entry.for.body.i77_crit_edge

entry.for.body.i77_crit_edge:                     ; preds = %entry
  br label %for.body.i77

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %max2175_write.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %add.i, %max2175_write.exit.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %add.i = add nuw nsw i32 %i.05.i, 1
  %arrayidx.i = getelementptr [145 x i8], ptr @full_fm_eu_1p0, i32 0, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i.i = zext i8 %3 to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %add.i, i32 noundef %conv1.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.max2175_write.exit.i_crit_edge, label %do.end.i.i

for.body.i.max2175_write.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i

do.end.i.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.40, i32 noundef %call.i.i, i32 noundef %add.i, i32 noundef %conv1.i.i) #12
  br label %max2175_write.exit.i

max2175_write.exit.i:                             ; preds = %do.end.i.i, %for.body.i.max2175_write.exit.i_crit_edge
  %exitcond.not.i = icmp eq i32 %add.i, 145
  br i1 %exitcond.not.i, label %max2175_write.exit.i.if.end_crit_edge, label %max2175_write.exit.i.for.body.i_crit_edge

max2175_write.exit.i.for.body.i_crit_edge:        ; preds = %max2175_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

max2175_write.exit.i.if.end_crit_edge:            ; preds = %max2175_write.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.i77:                                     ; preds = %max2175_write.exit.i81.for.body.i77_crit_edge, %entry.for.body.i77_crit_edge
  %i.05.i71 = phi i32 [ %add.i72, %max2175_write.exit.i81.for.body.i77_crit_edge ], [ 0, %entry.for.body.i77_crit_edge ]
  %add.i72 = add nuw nsw i32 %i.05.i71, 1
  %arrayidx.i73 = getelementptr [145 x i8], ptr @full_fm_na_1p0, i32 0, i32 %i.05.i71
  %8 = ptrtoint ptr %arrayidx.i73 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i73, align 1
  %10 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i.i74 = zext i8 %9 to i32
  %call.i.i75 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %add.i72, i32 noundef %conv1.i.i74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75)
  %tobool.not.i.i76 = icmp eq i32 %call.i.i75, 0
  br i1 %tobool.not.i.i76, label %for.body.i77.max2175_write.exit.i81_crit_edge, label %do.end.i.i79

for.body.i77.max2175_write.exit.i81_crit_edge:    ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i81

do.end.i.i79:                                     ; preds = %for.body.i77
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i.i, align 4
  %dev.i.i78 = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i78, ptr noundef nonnull @.str.40, i32 noundef %call.i.i75, i32 noundef %add.i72, i32 noundef %conv1.i.i74) #12
  br label %max2175_write.exit.i81

max2175_write.exit.i81:                           ; preds = %do.end.i.i79, %for.body.i77.max2175_write.exit.i81_crit_edge
  %exitcond.not.i80 = icmp eq i32 %add.i72, 145
  br i1 %exitcond.not.i80, label %max2175_write.exit.i81.if.end_crit_edge, label %max2175_write.exit.i81.for.body.i77_crit_edge

max2175_write.exit.i81.for.body.i77_crit_edge:    ; preds = %max2175_write.exit.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i77

max2175_write.exit.i81.if.end_crit_edge:          ; preds = %max2175_write.exit.i81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %max2175_write.exit.i81.if.end_crit_edge, %max2175_write.exit.i.if.end_crit_edge
  %.sink = phi i32 [ 36, %max2175_write.exit.i.if.end_crit_edge ], [ 27, %max2175_write.exit.i81.if.end_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5500, i32 noundef 2) #9
  %decim_ratio.i82 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 14
  %14 = ptrtoint ptr %decim_ratio.i82 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %decim_ratio.i82, align 4
  %master = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 15
  %15 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %master, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then1, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then1:                                         ; preds = %if.end
  %regmap.i.i83 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %17 = ptrtoint ptr %regmap.i.i83 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i83, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 30, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i84 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i84, label %if.then1.do.body_crit_edge, label %do.end.i.i87

if.then1.do.body_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end.i.i87:                                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i85 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %client.i.i85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i.i85, align 4
  %dev.i.i86 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i86, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i, i32 noundef 30) #12
  br label %do.body

do.body:                                          ; preds = %do.end.i.i87, %if.then1.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_core_init.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_core_init, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !263

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_core_init.__UNIQUE_ID_ddebug309, ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %refout_bits) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %regmap.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %conv5.i = shl i32 %refout_bits, 5
  %shl7.i = and i32 %conv5.i, 8160
  %call.i.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 56, i32 noundef 224, i32 noundef %shl7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i88)
  %tobool.not.i = icmp eq i32 %call.i.i88, 0
  br i1 %tobool.not.i, label %do.end.max2175_write_bits.exit_crit_edge, label %do.end.i

do.end.max2175_write_bits.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %25 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i88, i32 noundef 56) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i, %do.end.max2175_write_bits.exit_crit_edge
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i90 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 99, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i90)
  %tobool.not.i.i91 = icmp eq i32 %call.i.i.i90, 0
  br i1 %tobool.not.i.i91, label %max2175_write_bits.exit.max2175_write_bit.exit95_crit_edge, label %do.end.i.i94

max2175_write_bits.exit.max2175_write_bit.exit95_crit_edge: ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit95

do.end.i.i94:                                     ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i92 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %29 = ptrtoint ptr %client.i.i92 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i.i92, align 4
  %dev.i.i93 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i93, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i90, i32 noundef 99) #12
  br label %max2175_write_bit.exit95

max2175_write_bit.exit95:                         ; preds = %do.end.i.i94, %max2175_write_bits.exit.max2175_write_bit.exit95_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i97 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 99, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i97)
  %tobool.not.i.i98 = icmp eq i32 %call.i.i.i97, 0
  br i1 %tobool.not.i.i98, label %max2175_write_bit.exit95.max2175_write_bit.exit102_crit_edge, label %do.end.i.i101

max2175_write_bit.exit95.max2175_write_bit.exit102_crit_edge: ; preds = %max2175_write_bit.exit95
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit102

do.end.i.i101:                                    ; preds = %max2175_write_bit.exit95
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i99 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %33 = ptrtoint ptr %client.i.i99 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client.i.i99, align 4
  %dev.i.i100 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i100, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i97, i32 noundef 99) #12
  br label %max2175_write_bit.exit102

max2175_write_bit.exit102:                        ; preds = %do.end.i.i101, %max2175_write_bit.exit95.max2175_write_bit.exit102_crit_edge
  %client.i.i104 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  br label %for.body3.i

for.body3.i:                                      ; preds = %max2175_write.exit.i111.for.body3.i_crit_edge, %max2175_write_bit.exit102
  %j.015.i = phi i32 [ 0, %max2175_write_bit.exit102 ], [ %inc.i, %max2175_write.exit.i111.for.body3.i_crit_edge ]
  %add4.i = add nuw nsw i32 %j.015.i, 146
  %arrayidx5.i = getelementptr [2 x [23 x i8]], ptr @adc_presets, i32 0, i32 0, i32 %j.015.i
  %35 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx5.i, align 1
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %conv1.i.i105 = zext i8 %36 to i32
  %call.i.i106 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %add4.i, i32 noundef %conv1.i.i105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i106)
  %tobool.not.i.i107 = icmp eq i32 %call.i.i106, 0
  br i1 %tobool.not.i.i107, label %for.body3.i.max2175_write.exit.i111_crit_edge, label %do.end.i.i109

for.body3.i.max2175_write.exit.i111_crit_edge:    ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i111

do.end.i.i109:                                    ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i.i104, align 4
  %dev.i.i108 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i108, ptr noundef nonnull @.str.40, i32 noundef %call.i.i106, i32 noundef %add4.i, i32 noundef %conv1.i.i105) #12
  br label %max2175_write.exit.i111

max2175_write.exit.i111:                          ; preds = %do.end.i.i109, %for.body3.i.max2175_write.exit.i111_crit_edge
  %inc.i = add nuw nsw i32 %j.015.i, 1
  %exitcond.not.i110 = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i110, label %max2175_write.exit.i111.for.body3.1.i_crit_edge, label %max2175_write.exit.i111.for.body3.i_crit_edge

max2175_write.exit.i111.for.body3.i_crit_edge:    ; preds = %max2175_write.exit.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.i

max2175_write.exit.i111.for.body3.1.i_crit_edge:  ; preds = %max2175_write.exit.i111
  br label %for.body3.1.i

for.body3.1.i:                                    ; preds = %max2175_write.exit.1.i.for.body3.1.i_crit_edge, %max2175_write.exit.i111.for.body3.1.i_crit_edge
  %j.015.1.i = phi i32 [ %inc.1.i, %max2175_write.exit.1.i.for.body3.1.i_crit_edge ], [ 0, %max2175_write.exit.i111.for.body3.1.i_crit_edge ]
  %add4.1.i = add nuw nsw i32 %j.015.1.i, 201
  %arrayidx5.1.i = getelementptr [2 x [23 x i8]], ptr @adc_presets, i32 0, i32 1, i32 %j.015.1.i
  %41 = ptrtoint ptr %arrayidx5.1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx5.1.i, align 1
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %conv1.i.1.i = zext i8 %42 to i32
  %call.i.1.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef %add4.1.i, i32 noundef %conv1.i.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  br i1 %tobool.not.i.1.i, label %for.body3.1.i.max2175_write.exit.1.i_crit_edge, label %do.end.i.1.i

for.body3.1.i.max2175_write.exit.1.i_crit_edge:   ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.1.i

do.end.i.1.i:                                     ; preds = %for.body3.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client.i.i104, align 4
  %dev.i.1.i = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.1.i, ptr noundef nonnull @.str.40, i32 noundef %call.i.1.i, i32 noundef %add4.1.i, i32 noundef %conv1.i.1.i) #12
  br label %max2175_write.exit.1.i

max2175_write.exit.1.i:                           ; preds = %do.end.i.1.i, %for.body3.1.i.max2175_write.exit.1.i_crit_edge
  %inc.1.i = add nuw nsw i32 %j.015.1.i, 1
  %exitcond.1.not.i = icmp eq i32 %inc.1.i, 23
  br i1 %exitcond.1.not.i, label %max2175_load_adc_presets.exit, label %max2175_write.exit.1.i.for.body3.1.i_crit_edge

max2175_write.exit.1.i.for.body3.1.i_crit_edge:   ; preds = %max2175_write.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3.1.i

max2175_load_adc_presets.exit:                    ; preds = %max2175_write.exit.1.i
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 99, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %max2175_load_adc_presets.exit.max2175_write_bit.exit.i_crit_edge, label %do.end.i.i.i

max2175_load_adc_presets.exit.max2175_write_bit.exit.i_crit_edge: ; preds = %max2175_load_adc_presets.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit.i

do.end.i.i.i:                                     ; preds = %max2175_load_adc_presets.exit
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client.i.i104, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i.i, i32 noundef 99) #12
  br label %max2175_write_bit.exit.i

max2175_write_bit.exit.i:                         ; preds = %do.end.i.i.i, %max2175_load_adc_presets.exit.max2175_write_bit.exit.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1500, i32 noundef 2) #9
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 99, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i8.i)
  %tobool.not.i.i9.i = icmp eq i32 %call.i.i.i8.i, 0
  br i1 %tobool.not.i.i9.i, label %max2175_write_bit.exit.i.max2175_write_bit.exit13.i_crit_edge, label %do.end.i.i12.i

max2175_write_bit.exit.i.max2175_write_bit.exit13.i_crit_edge: ; preds = %max2175_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit13.i

do.end.i.i12.i:                                   ; preds = %max2175_write_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client.i.i104, align 4
  %dev.i.i11.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i11.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i8.i, i32 noundef 99) #12
  br label %max2175_write_bit.exit13.i

max2175_write_bit.exit13.i:                       ; preds = %do.end.i.i12.i, %max2175_write_bit.exit.i.max2175_write_bit.exit13.i_crit_edge
  %call2.i = tail call fastcc i32 @max2175_poll_timeout(ptr noundef %ctx, i8 noundef zeroext 7, i8 noundef zeroext 7, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i112 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i112, label %if.end15, label %max2175_init_power_manager.exit

max2175_init_power_manager.exit:                  ; preds = %max2175_write_bit.exit13.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %client.i.i104, align 4
  %dev.i114 = getelementptr inbounds %struct.i2c_client, ptr %56, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i114, ptr noundef nonnull @.str.84) #12
  br label %cleanup

if.end15:                                         ; preds = %max2175_write_bit.exit13.i
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %call.i.i117 = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 150, i32 noundef 255) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i117)
  %tobool.not.i.i118 = icmp eq i32 %call.i.i117, 0
  br i1 %tobool.not.i.i118, label %if.end15.max2175_write.exit.i122_crit_edge, label %do.end.i.i121

if.end15.max2175_write.exit.i122_crit_edge:       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i122

do.end.i.i121:                                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %client.i.i104, align 4
  %dev.i.i120 = getelementptr inbounds %struct.i2c_client, ptr %60, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i120, ptr noundef nonnull @.str.40, i32 noundef %call.i.i117, i32 noundef 150, i32 noundef 255) #12
  br label %max2175_write.exit.i122

max2175_write.exit.i122:                          ; preds = %do.end.i.i121, %if.end15.max2175_write.exit.i122_crit_edge
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %call.i16.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 205, i32 noundef 255) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16.i)
  %tobool.not.i17.i = icmp eq i32 %call.i16.i, 0
  br i1 %tobool.not.i17.i, label %max2175_write.exit.i122.max2175_write.exit21.i_crit_edge, label %do.end.i20.i

max2175_write.exit.i122.max2175_write.exit21.i_crit_edge: ; preds = %max2175_write.exit.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit21.i

do.end.i20.i:                                     ; preds = %max2175_write.exit.i122
  call void @__sanitizer_cov_trace_pc() #11
  %63 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %client.i.i104, align 4
  %dev.i19.i = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i19.i, ptr noundef nonnull @.str.40, i32 noundef %call.i16.i, i32 noundef 205, i32 noundef 255) #12
  br label %max2175_write.exit21.i

max2175_write.exit21.i:                           ; preds = %do.end.i20.i, %max2175_write.exit.i122.max2175_write.exit21.i_crit_edge
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %call.i23.i = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 147, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23.i)
  %tobool.not.i24.i = icmp eq i32 %call.i23.i, 0
  br i1 %tobool.not.i24.i, label %max2175_write.exit21.i.max2175_write.exit28.i_crit_edge, label %do.end.i27.i

max2175_write.exit21.i.max2175_write.exit28.i_crit_edge: ; preds = %max2175_write.exit21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit28.i

do.end.i27.i:                                     ; preds = %max2175_write.exit21.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %client.i.i104, align 4
  %dev.i26.i = getelementptr inbounds %struct.i2c_client, ptr %68, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i26.i, ptr noundef nonnull @.str.40, i32 noundef %call.i23.i, i32 noundef 147, i32 noundef 32) #12
  br label %max2175_write.exit28.i

max2175_write.exit28.i:                           ; preds = %do.end.i27.i, %max2175_write.exit21.i.max2175_write.exit28.i_crit_edge
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 4
  %call.i30.i = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 147, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %max2175_write.exit28.i.max2175_write.exit35.i_crit_edge, label %do.end.i34.i

max2175_write.exit28.i.max2175_write.exit35.i_crit_edge: ; preds = %max2175_write.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit35.i

do.end.i34.i:                                     ; preds = %max2175_write.exit28.i
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %client.i.i104, align 4
  %dev.i33.i = getelementptr inbounds %struct.i2c_client, ptr %72, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i33.i, ptr noundef nonnull @.str.40, i32 noundef %call.i30.i, i32 noundef 147, i32 noundef 0) #12
  br label %max2175_write.exit35.i

max2175_write.exit35.i:                           ; preds = %do.end.i34.i, %max2175_write.exit28.i.max2175_write.exit35.i_crit_edge
  %73 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i, align 4
  %call.i37.i = tail call i32 @regmap_write(ptr noundef %74, i32 noundef 202, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37.i)
  %tobool.not.i38.i = icmp eq i32 %call.i37.i, 0
  br i1 %tobool.not.i38.i, label %max2175_write.exit35.i.max2175_write.exit42.i_crit_edge, label %do.end.i41.i

max2175_write.exit35.i.max2175_write.exit42.i_crit_edge: ; preds = %max2175_write.exit35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit42.i

do.end.i41.i:                                     ; preds = %max2175_write.exit35.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %client.i.i104, align 4
  %dev.i40.i = getelementptr inbounds %struct.i2c_client, ptr %76, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i40.i, ptr noundef nonnull @.str.40, i32 noundef %call.i37.i, i32 noundef 202, i32 noundef 32) #12
  br label %max2175_write.exit42.i

max2175_write.exit42.i:                           ; preds = %do.end.i41.i, %max2175_write.exit35.i.max2175_write.exit42.i_crit_edge
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %call.i44.i = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 202, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool.not.i45.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool.not.i45.i, label %max2175_write.exit42.i.max2175_write.exit49.i_crit_edge, label %do.end.i48.i

max2175_write.exit42.i.max2175_write.exit49.i_crit_edge: ; preds = %max2175_write.exit42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit49.i

do.end.i48.i:                                     ; preds = %max2175_write.exit42.i
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client.i.i104, align 4
  %dev.i47.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47.i, ptr noundef nonnull @.str.40, i32 noundef %call.i44.i, i32 noundef 202, i32 noundef 0) #12
  br label %max2175_write.exit49.i

max2175_write.exit49.i:                           ; preds = %do.end.i48.i, %max2175_write.exit42.i.max2175_write.exit49.i_crit_edge
  %call6.i = tail call fastcc i32 @max2175_poll_timeout(ptr noundef %ctx, i8 noundef zeroext 4, i8 noundef zeroext 3, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool.not.i123 = icmp eq i32 %call6.i, 0
  br i1 %tobool.not.i123, label %if.end19, label %max2175_recalibrate_adc.exit

max2175_recalibrate_adc.exit:                     ; preds = %max2175_write.exit49.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %client.i.i104, align 4
  %dev.i125 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i125, ptr noundef nonnull @.str.86) #12
  br label %cleanup

if.end19:                                         ; preds = %max2175_write.exit49.i
  %call.i = tail call fastcc zeroext i8 @max2175_read_rom(ptr noundef %ctx, i8 noundef zeroext 0) #9
  %and.i = and i8 %call.i, 15
  %rom_bbf_bw_am.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 17
  %83 = ptrtoint ptr %rom_bbf_bw_am.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %and.i, ptr %rom_bbf_bw_am.i, align 2
  %84 = lshr i8 %call.i, 4
  %85 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i, align 4
  %conv5.i.i = zext i8 %84 to i32
  %call.i.i.i128 = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 81, i32 noundef 15, i32 noundef %conv5.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i128)
  %tobool.not.i.i129 = icmp eq i32 %call.i.i.i128, 0
  br i1 %tobool.not.i.i129, label %if.end19.max2175_write_bits.exit.i_crit_edge, label %do.end.i.i132

if.end19.max2175_write_bits.exit.i_crit_edge:     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit.i

do.end.i.i132:                                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %client.i.i104, align 4
  %dev.i.i131 = getelementptr inbounds %struct.i2c_client, ptr %88, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i131, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i128, i32 noundef 81) #12
  br label %max2175_write_bits.exit.i

max2175_write_bits.exit.i:                        ; preds = %do.end.i.i132, %if.end19.max2175_write_bits.exit.i_crit_edge
  %call5.i = tail call fastcc zeroext i8 @max2175_read_rom(ptr noundef %ctx, i8 noundef zeroext 1) #9
  %and7.i = and i8 %call5.i, 15
  %rom_bbf_bw_fm.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 18
  %89 = ptrtoint ptr %rom_bbf_bw_fm.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %and7.i, ptr %rom_bbf_bw_fm.i, align 1
  %90 = lshr i8 %call5.i, 4
  %rom_bbf_bw_dab.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 19
  %91 = ptrtoint ptr %rom_bbf_bw_dab.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %90, ptr %rom_bbf_bw_dab.i, align 4
  %call12.i = tail call fastcc zeroext i8 @max2175_read_rom(ptr noundef %ctx, i8 noundef zeroext 2) #9
  %and14.i = and i8 %call12.i, 31
  %92 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap.i, align 4
  %conv5.i96.i = zext i8 %and14.i to i32
  %call.i.i97.i = tail call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 82, i32 noundef 31, i32 noundef %conv5.i96.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call.i.i97.i, 0
  br i1 %tobool.not.i98.i, label %max2175_write_bits.exit.i.max2175_write_bits.exit102.i_crit_edge, label %do.end.i101.i

max2175_write_bits.exit.i.max2175_write_bits.exit102.i_crit_edge: ; preds = %max2175_write_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit102.i

do.end.i101.i:                                    ; preds = %max2175_write_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %94 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %client.i.i104, align 4
  %dev.i100.i = getelementptr inbounds %struct.i2c_client, ptr %95, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i100.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i97.i, i32 noundef 82) #12
  br label %max2175_write_bits.exit102.i

max2175_write_bits.exit102.i:                     ; preds = %do.end.i101.i, %max2175_write_bits.exit.i.max2175_write_bits.exit102.i_crit_edge
  %96 = and i8 %call12.i, -32
  %97 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i, align 4
  %shl7.i.i = zext i8 %96 to i32
  %call.i.i105.i = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 82, i32 noundef 224, i32 noundef %shl7.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i105.i)
  %tobool.not.i106.i = icmp eq i32 %call.i.i105.i, 0
  br i1 %tobool.not.i106.i, label %max2175_write_bits.exit102.i.max2175_write_bits.exit110.i_crit_edge, label %do.end.i109.i

max2175_write_bits.exit102.i.max2175_write_bits.exit110.i_crit_edge: ; preds = %max2175_write_bits.exit102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit110.i

do.end.i109.i:                                    ; preds = %max2175_write_bits.exit102.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %client.i.i104, align 4
  %dev.i108.i = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i108.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i105.i, i32 noundef 82) #12
  br label %max2175_write_bits.exit110.i

max2175_write_bits.exit110.i:                     ; preds = %do.end.i109.i, %max2175_write_bits.exit102.i.max2175_write_bits.exit110.i_crit_edge
  %call21.i = tail call fastcc zeroext i8 @max2175_read_rom(ptr noundef %ctx, i8 noundef zeroext 3) #9
  %am_hiz.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 16
  %101 = ptrtoint ptr %am_hiz.i to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %am_hiz.i, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %102)
  %tobool.not.i133 = icmp eq i8 %102, 0
  br i1 %tobool.not.i133, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %max2175_write_bits.exit110.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = and i8 %call21.i, 15
  %call25.i = tail call fastcc zeroext i8 @max2175_read_rom(ptr noundef %ctx, i8 noundef zeroext 7) #9
  %104 = lshr i8 %call25.i, 2
  %105 = and i8 %104, 16
  %or93.i = or i8 %105, %103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or93.i)
  %tobool31.not.i = icmp eq i8 %or93.i, 0
  %spec.select.i = select i1 %tobool31.not.i, i8 2, i8 %or93.i
  br label %if.end53.i

if.else.i:                                        ; preds = %max2175_write_bits.exit110.i
  call void @__sanitizer_cov_trace_pc() #11
  %106 = lshr i8 %call21.i, 4
  %call40.i = tail call fastcc zeroext i8 @max2175_read_rom(ptr noundef %ctx, i8 noundef zeroext 7) #9
  %107 = lshr i8 %call40.i, 3
  %108 = and i8 %107, 16
  %or4592.i = or i8 %108, %106
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %or4592.i)
  %tobool47.not.i = icmp eq i8 %or4592.i, 0
  %spec.select94.i = select i1 %tobool47.not.i, i8 30, i8 %or4592.i
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.else.i, %if.then.i
  %data.0.i = phi i8 [ %spec.select.i, %if.then.i ], [ %spec.select94.i, %if.else.i ]
  %add.i134 = add nsw i8 %data.0.i, 31
  %109 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i, align 4
  %conv5.i112.i = zext i8 %add.i134 to i32
  %call.i.i113.i = tail call i32 @regmap_update_bits_base(ptr noundef %110, i32 noundef 80, i32 noundef 63, i32 noundef %conv5.i112.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113.i)
  %tobool.not.i114.i = icmp eq i32 %call.i.i113.i, 0
  br i1 %tobool.not.i114.i, label %if.end53.i.max2175_write_bits.exit118.i_crit_edge, label %do.end.i117.i

if.end53.i.max2175_write_bits.exit118.i_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit118.i

do.end.i117.i:                                    ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #11
  %111 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %client.i.i104, align 4
  %dev.i116.i = getelementptr inbounds %struct.i2c_client, ptr %112, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i116.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i113.i, i32 noundef 80) #12
  br label %max2175_write_bits.exit118.i

max2175_write_bits.exit118.i:                     ; preds = %do.end.i117.i, %if.end53.i.max2175_write_bits.exit118.i_crit_edge
  %call57.i = tail call fastcc zeroext i8 @max2175_read_rom(ptr noundef %ctx, i8 noundef zeroext 6) #9
  %113 = and i8 %call57.i, -64
  %114 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap.i, align 4
  %shl7.i121.i = zext i8 %113 to i32
  %call.i.i122.i = tail call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 81, i32 noundef 192, i32 noundef %shl7.i121.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122.i)
  %tobool.not.i123.i = icmp eq i32 %call.i.i122.i, 0
  br i1 %tobool.not.i123.i, label %max2175_write_bits.exit118.i.max2175_load_from_rom.exit_crit_edge, label %do.end.i126.i

max2175_write_bits.exit118.i.max2175_load_from_rom.exit_crit_edge: ; preds = %max2175_write_bits.exit118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_load_from_rom.exit

do.end.i126.i:                                    ; preds = %max2175_write_bits.exit118.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %client.i.i104, align 4
  %dev.i125.i = getelementptr inbounds %struct.i2c_client, ptr %117, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i125.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i122.i, i32 noundef 81) #12
  br label %max2175_load_from_rom.exit

max2175_load_from_rom.exit:                       ; preds = %do.end.i126.i, %max2175_write_bits.exit118.i.max2175_load_from_rom.exit_crit_edge
  %118 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %119)
  %cmp21 = icmp eq i32 %119, 36864000
  %ch_coeff_fmeu.ch_coeff_fmna = select i1 %cmp21, ptr @ch_coeff_fmeu, ptr @ch_coeff_fmna
  %eq_coeff_fmeu1_ra02_m6db.eq_coeff_fmna1_ra02_m6db = select i1 %cmp21, ptr @eq_coeff_fmeu1_ra02_m6db, ptr @eq_coeff_fmna1_ra02_m6db
  tail call fastcc void @max2175_set_filter_coeffs(ptr noundef %ctx, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull %ch_coeff_fmeu.ch_coeff_fmna)
  tail call fastcc void @max2175_set_filter_coeffs(ptr noundef %ctx, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull %eq_coeff_fmeu1_ra02_m6db.eq_coeff_fmna1_ra02_m6db)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_core_init.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_core_init, %if.then38)) #9
          to label %cleanup [label %if.then38], !srcloc !263

if.then38:                                        ; preds = %max2175_load_from_rom.exit
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %client.i.i104 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %client.i.i104, align 4
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_core_init.__UNIQUE_ID_ddebug310, ptr noundef %dev40, ptr noundef nonnull @.str.83) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %max2175_load_from_rom.exit, %max2175_recalibrate_adc.exit, %max2175_init_power_manager.exit
  %retval.0 = phi i32 [ %call2.i, %max2175_init_power_manager.exit ], [ %call6.i, %max2175_recalibrate_adc.exit ], [ 0, %if.then38 ], [ 0, %max2175_load_from_rom.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2175_s_frequency(ptr noundef %sd, ptr nocapture noundef readonly %vf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_s_frequency.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_s_frequency, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !263

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %2 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %frequency, align 4
  %freq4 = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 10
  %4 = ptrtoint ptr %freq4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq4, align 4
  %mode_resolved = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 20
  %6 = ptrtoint ptr %mode_resolved to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mode_resolved, align 1, !range !262
  %8 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_s_frequency.__UNIQUE_ID_ddebug314, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %3, i32 noundef %5, i32 noundef %8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %9 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  %frequency9 = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %11 = ptrtoint ptr %frequency9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frequency9, align 4
  %bands_rf = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 12
  %13 = ptrtoint ptr %bands_rf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %bands_rf, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_frequency_band, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rangelow, align 4
  %17 = tail call i32 @llvm.umax.i32(i32 %12, i32 %16)
  %rangehigh = getelementptr inbounds %struct.v4l2_frequency_band, ptr %14, i32 0, i32 5
  %18 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rangehigh, align 4
  %20 = tail call i32 @llvm.umin.i32(i32 %17, i32 %19)
  %mode_resolved21 = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 20
  %21 = ptrtoint ptr %mode_resolved21 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %mode_resolved21, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool22.not = icmp eq i8 %22, 0
  br i1 %tobool22.not, label %if.end8.if.else_crit_edge, label %land.lhs.true

if.end8.if.else_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %if.end8
  %rx_mode = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 8
  %23 = ptrtoint ptr %rx_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rx_mode, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur, align 8
  %27 = add i32 %20, -144000
  call void @__sanitizer_cov_trace_const_cmp4(i32 25956001, i32 %27)
  %28 = icmp ult i32 %27, 25956001
  %29 = add i32 %20, -65000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 43000001, i32 %29)
  %30 = icmp ult i32 %29, 43000001
  %spec.select.i.i = select i1 %30, i32 1, i32 2
  %retval.0.i.i = select i1 %28, i32 0, i32 %spec.select.i.i
  %rx_modes.i = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 11
  %31 = ptrtoint ptr %rx_modes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_modes.i, align 4
  %arrayidx.i = getelementptr %struct.max2175_rxmode, ptr %32, i32 %26
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %retval.0.i.i)
  %cmp.i = icmp eq i32 %34, %retval.0.i.i
  br i1 %cmp.i, label %if.then26, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv27 = zext i32 %20 to i64
  %hsls = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 7
  %35 = ptrtoint ptr %hsls to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hsls, align 4
  %cur28 = getelementptr inbounds %struct.v4l2_ctrl, ptr %36, i32 0, i32 23
  %37 = ptrtoint ptr %cur28 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cur28, align 8
  %call30 = tail call fastcc i32 @max2175_tune_rf_freq(ptr noundef %sd, i64 noundef %conv27, i32 noundef %38)
  br label %do.body33

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end8.if.else_crit_edge
  %call31 = tail call fastcc i32 @max2175_set_freq_and_mode(ptr noundef %sd, i32 noundef %20)
  br label %do.body33

do.body33:                                        ; preds = %if.else, %if.then26
  %ret.0 = phi i32 [ %call30, %if.then26 ], [ %call31, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_s_frequency.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_s_frequency, %if.then45)) #9
          to label %cleanup [label %if.then45], !srcloc !263

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %client46 = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 1
  %39 = ptrtoint ptr %client46 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client46, align 4
  %dev47 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  %freq48 = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 10
  %41 = ptrtoint ptr %freq48 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %freq48, align 4
  %43 = ptrtoint ptr %mode_resolved21 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mode_resolved21, align 1, !range !262
  %45 = zext i8 %44 to i32
  %rx_mode52 = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 8
  %46 = ptrtoint ptr %rx_mode52 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_mode52, align 4
  %cur53 = getelementptr inbounds %struct.v4l2_ctrl, ptr %47, i32 0, i32 23
  %48 = ptrtoint ptr %cur53 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cur53, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_s_frequency.__UNIQUE_ID_ddebug319, ptr noundef %dev47, ptr noundef nonnull @.str.27, i32 noundef %ret.0, i32 noundef %42, i32 noundef %45, i32 noundef %49) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %do.body33, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ %ret.0, %if.then45 ], [ %ret.0, %do.body33 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max2175_g_frequency(ptr nocapture noundef readonly %sd, ptr nocapture noundef %vf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %type, align 4
  %freq = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 10
  %3 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %vf, i32 0, i32 2
  %5 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max2175_enum_freq_bands(ptr nocapture noundef readonly %sd, ptr nocapture noundef %band) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %band, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %bands_rf = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 12
  %4 = ptrtoint ptr %bands_rf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bands_rf, align 4
  %6 = call ptr @memcpy(ptr %band, ptr %5, i32 64)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2175_g_tuner(ptr nocapture noundef readonly %sd, ptr noundef %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 1
  %call1 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.69, i32 noundef 32) #9
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 5, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %3 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 5120, ptr %capability, align 4
  %bands_rf = getelementptr inbounds %struct.max2175, ptr %sd, i32 0, i32 12
  %4 = ptrtoint ptr %bands_rf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bands_rf, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_frequency_band, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rangelow, align 4
  %rangelow2 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 4
  %8 = ptrtoint ptr %rangelow2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rangelow2, align 4
  %9 = load ptr, ptr %bands_rf, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_frequency_band, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rangehigh, align 4
  %rangehigh4 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 5
  %12 = ptrtoint ptr %rangehigh4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rangehigh4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max2175_s_tuner(ptr nocapture noundef readnone %sd, ptr nocapture noundef readonly %vt) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_tune_rf_freq(ptr nocapture noundef %ctx, i64 noundef %freq, i32 noundef %hsls) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @max2175_set_rf_freq(ptr noundef %ctx, i64 noundef %freq, i32 noundef %hsls)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_csm_action.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_tune_rf_freq, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !263

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_csm_action.__UNIQUE_ID_ddebug298, ptr noundef %dev.i, ptr noundef nonnull @.str.47, i32 noundef 8) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.end
  %call3.i = tail call fastcc i32 @max2175_set_csm_mode(ptr noundef %ctx, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %max2175_csm_action.exit, label %do.end.i.cleanup_crit_edge

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

max2175_csm_action.exit:                          ; preds = %do.end.i
  %call7.i = tail call fastcc i32 @max2175_set_csm_mode(ptr noundef %ctx, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool2.not = icmp eq i32 %call7.i, 0
  br i1 %tobool2.not, label %do.body, label %max2175_csm_action.exit.cleanup_crit_edge

max2175_csm_action.exit.cleanup_crit_edge:        ; preds = %max2175_csm_action.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %max2175_csm_action.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_tune_rf_freq.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_tune_rf_freq, %if.then9)) #9
          to label %do.end [label %if.then9], !srcloc !263

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %freq10 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 10
  %4 = ptrtoint ptr %freq10 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_tune_rf_freq.__UNIQUE_ID_ddebug303, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %5, i64 noundef %freq) #9
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %conv = trunc i64 %freq to i32
  %freq12 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 10
  %6 = ptrtoint ptr %freq12 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %freq12, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %max2175_csm_action.exit.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call7.i, %max2175_csm_action.exit.cleanup_crit_edge ], [ %call3.i, %do.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_set_freq_and_mode(ptr noundef %ctx, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %freq, -144000
  call void @__sanitizer_cov_trace_const_cmp4(i32 25956001, i32 %0)
  %1 = icmp ult i32 %0, 25956001
  %2 = add i32 %freq, -65000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 43000001, i32 %2)
  %3 = icmp ult i32 %2, 43000001
  %spec.select.i.i = select i1 %3, i32 1, i32 2
  %retval.0.i18.i = select i1 %1, i32 0, i32 %spec.select.i.i
  %rx_mode.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 8
  %4 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_mode.i, align 4
  %maximum.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %maximum.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %maximum.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %cmp.not21.i = icmp slt i64 %7, 0
  br i1 %cmp.not21.i, label %entry.cleanup_crit_edge, label %for.body.lr.ph.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %entry
  %rx_modes.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 11
  %8 = ptrtoint ptr %rx_modes.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_modes.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.022.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.max2175_rxmode, ptr %9, i32 %i.022.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %retval.0.i18.i)
  %cmp3.i = icmp eq i32 %11, %retval.0.i18.i
  br i1 %cmp3.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_rx_mode_from_freq.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_freq_and_mode, %if.then8.i)) #9
          to label %do.body [label %if.then8.i], !srcloc !263

if.then8.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %12 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_rx_mode_from_freq.__UNIQUE_ID_ddebug307, ptr noundef %dev.i, ptr noundef nonnull @.str.53, i32 noundef %freq, i32 noundef %i.022.i) #9
  br label %do.body

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add i32 %i.022.i, 1
  %conv.i = zext i32 %inc.i to i64
  %cmp.not.i = icmp slt i64 %7, %conv.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.then8.i, %if.then.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_freq_and_mode.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_freq_and_mode, %if.then5)) #9
          to label %do.end [label %if.then5], !srcloc !263

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_freq_and_mode.__UNIQUE_ID_ddebug313, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %freq, i32 noundef %i.022.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  tail call fastcc void @max2175_set_rx_mode(ptr noundef %ctx, i32 noundef %i.022.i)
  %16 = ptrtoint ptr %rx_mode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_mode.i, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 23
  %18 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %i.022.i, ptr %cur, align 8
  %conv = zext i32 %freq to i64
  %hsls = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 7
  %19 = ptrtoint ptr %hsls to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hsls, align 4
  %cur9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 23
  %21 = ptrtoint ptr %cur9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur9, align 8
  %call11 = tail call fastcc i32 @max2175_tune_rf_freq(ptr noundef %ctx, i64 noundef %conv, i32 noundef %22)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_set_rf_freq(ptr nocapture noundef readonly %ctx, i64 noundef %freq, i32 noundef %lo_pos) unnamed_addr #2 align 64 {
entry:
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %0 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !261
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %max2175_read_bits.exit, label %max2175_read_bits.exit.thread

max2175_read_bits.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %if.then

max2175_read_bits.exit:                           ; preds = %entry
  %5 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  %conv8.i.i20 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i.i20)
  %cmp = icmp eq i32 %conv8.i.i20, 0
  br i1 %cmp, label %max2175_read_bits.exit.if.then_crit_edge, label %if.else

max2175_read_bits.exit.if.then_crit_edge:         ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %max2175_read_bits.exit.if.then_crit_edge, %max2175_read_bits.exit.thread
  %conv2 = trunc i64 %freq to i32
  %call3 = call fastcc i32 @max2175_set_nco_freq(ptr noundef %ctx, i32 noundef %conv2)
  br label %do.body

if.else:                                          ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call fastcc i32 @max2175_set_rf_freq_non_am_bands(ptr noundef %ctx, i64 noundef %freq, i32 noundef %lo_pos)
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.else ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_rf_freq.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_rf_freq, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !263

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_rf_freq.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %ret.0, i64 noundef %freq) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_set_nco_freq(ptr nocapture noundef readonly %ctx, i32 noundef %nco_freq) unnamed_addr #2 align 64 {
entry:
  %remainder.i17.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %xtal_freq = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 13
  %0 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xtal_freq, align 4
  %decim_ratio = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 14
  %2 = ptrtoint ptr %decim_ratio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %decim_ratio, align 4
  %div = udiv i32 %1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nco_freq)
  %cmp = icmp slt i32 %nco_freq, 0
  %4 = tail call i32 @llvm.abs.i32(i32 %nco_freq, i1 false)
  %div1 = sdiv i32 %div, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %div1)
  %cmp2 = icmp ult i32 %4, %div1
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = shl i32 %nco_freq, 1
  %conv = sext i32 %mul to i64
  br label %if.end10

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub3 = sub i32 %div, %4
  %conv4 = zext i32 %sub3 to i64
  %mul5 = shl nuw nsw i64 %conv4, 1
  %sub9 = sub nsw i64 0, %mul5
  %spec.select = select i1 %cmp, i64 %sub9, i64 %mul5
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then
  %nco_val_desired.0 = phi i64 [ %conv, %if.then ], [ %spec.select, %if.else ]
  %shl = shl nsw i64 %nco_val_desired.0, 20
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nco_val_desired.0)
  %cmp.i = icmp sgt i64 %nco_val_desired.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp1.i = icmp sgt i32 %div, 0
  %or.cond.i = and i1 %cmp1.i, %cmp.i
  br i1 %or.cond.i, label %if.end10.if.then.i_crit_edge, label %lor.lhs.false.i

if.end10.if.then.i_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %nco_val_desired.0)
  %cmp2.i = icmp slt i64 %nco_val_desired.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp4.i = icmp slt i32 %div, 0
  %or.cond16.i = and i1 %cmp4.i, %cmp2.i
  br i1 %or.cond16.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end10.if.then.i_crit_edge
  %conv.i = sext i32 %div1 to i64
  %add.i = add nsw i64 %shl, %conv.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #9
  %5 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !261
  %call.i.i = call i64 @div_s64_rem(i64 noundef %add.i, i32 noundef %div, ptr noundef nonnull %remainder.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #9
  %extract.t = trunc i64 %call.i.i to i32
  br label %max2175_round_closest.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = sext i32 %div1 to i64
  %sub.i = sub nsw i64 %shl, %conv6.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i17.i) #9
  %6 = ptrtoint ptr %remainder.i17.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %remainder.i17.i, align 4, !annotation !261
  %call.i18.i = call i64 @div_s64_rem(i64 noundef %sub.i, i32 noundef %div, ptr noundef nonnull %remainder.i17.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i17.i) #9
  %extract.t89 = trunc i64 %call.i18.i to i32
  br label %max2175_round_closest.exit

max2175_round_closest.exit:                       ; preds = %if.end.i, %if.then.i
  %call.i.i.sink.off0 = phi i32 [ %extract.t, %if.then.i ], [ %extract.t89, %if.end.i ]
  %add = add i32 %call.i.i.sink.off0, 2097152
  %spec.select60 = select i1 %cmp, i32 %add, i32 %call.i.i.sink.off0
  %call.i = call fastcc i32 @max2175_poll_timeout(ptr noundef %ctx, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body, label %max2175_poll_csm_ready.exit

max2175_poll_csm_ready.exit:                      ; preds = %max2175_round_closest.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %7 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36) #12
  br label %cleanup

do.body:                                          ; preds = %max2175_round_closest.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_nco_freq.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_nco_freq, %if.then24)) #9
          to label %do.end [label %if.then24], !srcloc !263

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_nco_freq.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %nco_freq, i64 noundef %nco_val_desired.0, i32 noundef %spec.select60) #9
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %shr = lshr i32 %spec.select60, 16
  %conv26 = and i32 %shr, 31
  %regmap.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i63 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 7, i32 noundef 31, i32 noundef %conv26, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %tobool.not.i64 = icmp eq i32 %call.i.i63, 0
  br i1 %tobool.not.i64, label %do.end.max2175_write_bits.exit_crit_edge, label %do.end.i67

do.end.max2175_write_bits.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i67:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i65 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %client.i65 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i65, align 4
  %dev.i66 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i66, ptr noundef nonnull @.str.38, i32 noundef %call.i.i63, i32 noundef 7) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i67, %do.end.max2175_write_bits.exit_crit_edge
  %shr28 = lshr i32 %spec.select60, 8
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %conv1.i = and i32 %shr28, 255
  %call.i70 = call i32 @regmap_write(ptr noundef %16, i32 noundef 8, i32 noundef %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool.not.i71 = icmp eq i32 %call.i70, 0
  br i1 %tobool.not.i71, label %max2175_write_bits.exit.max2175_write.exit_crit_edge, label %do.end.i74

max2175_write_bits.exit.max2175_write.exit_crit_edge: ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit

do.end.i74:                                       ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i72 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %client.i72 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i72, align 4
  %dev.i73 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i73, ptr noundef nonnull @.str.40, i32 noundef %call.i70, i32 noundef 8, i32 noundef %conv1.i) #12
  br label %max2175_write.exit

max2175_write.exit:                               ; preds = %do.end.i74, %max2175_write_bits.exit.max2175_write.exit_crit_edge
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %conv1.i77 = and i32 %spec.select60, 255
  %call.i78 = call i32 @regmap_write(ptr noundef %20, i32 noundef 9, i32 noundef %conv1.i77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool.not.i79 = icmp eq i32 %call.i78, 0
  br i1 %tobool.not.i79, label %max2175_write.exit.cleanup_crit_edge, label %do.end.i82

max2175_write.exit.cleanup_crit_edge:             ; preds = %max2175_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i82:                                       ; preds = %max2175_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i80 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %client.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i80, align 4
  %dev.i81 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i81, ptr noundef nonnull @.str.40, i32 noundef %call.i78, i32 noundef 9, i32 noundef %conv1.i77) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i82, %max2175_write.exit.cleanup_crit_edge, %max2175_poll_csm_ready.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_set_rf_freq_non_am_bands(ptr nocapture noundef readonly %ctx, i64 noundef %freq, i32 noundef %lo_pos) unnamed_addr #2 align 64 {
entry:
  %regval.i.i63 = alloca i32, align 4
  %regval.i.i50 = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_rf_freq_non_am_bands.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_rf_freq_non_am_bands, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !263

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_rf_freq_non_am_bands.__UNIQUE_ID_ddebug301, ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %2 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !261
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 12, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %max2175_read_bits.exit, label %max2175_read_bits.exit.thread

max2175_read_bits.exit.thread:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %if.end15

max2175_read_bits.exit:                           ; preds = %do.end
  %7 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  %9 = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %max2175_read_bits.exit.if.end15_crit_edge, label %if.else

max2175_read_bits.exit.if.end15_crit_edge:        ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.else:                                          ; preds = %max2175_read_bits.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i50) #9
  %10 = ptrtoint ptr %regval.i.i50 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %regval.i.i50, align 4, !annotation !261
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i52 = call i32 @regmap_read(ptr noundef %12, i32 noundef 12, ptr noundef nonnull %regval.i.i50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i52)
  %tobool.not.i.i53 = icmp eq i32 %call.i.i52, 0
  br i1 %tobool.not.i.i53, label %max2175_read_bits.exit62, label %max2175_read_bits.exit62.thread

max2175_read_bits.exit62.thread:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i54 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %client.i.i54 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i.i54, align 4
  %dev.i.i55 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i55, ptr noundef nonnull @.str.32, i32 noundef %call.i.i52, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i50) #9
  br label %if.else11

max2175_read_bits.exit62:                         ; preds = %if.else
  %15 = ptrtoint ptr %regval.i.i50 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regval.i.i50, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i50) #9
  %17 = and i32 %16, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp8 = icmp eq i32 %17, 16
  br i1 %cmp8, label %max2175_read_bits.exit62.if.end15_crit_edge, label %max2175_read_bits.exit62.if.else11_crit_edge

max2175_read_bits.exit62.if.else11_crit_edge:     ; preds = %max2175_read_bits.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else11

max2175_read_bits.exit62.if.end15_crit_edge:      ; preds = %max2175_read_bits.exit62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.else11:                                        ; preds = %max2175_read_bits.exit62.if.else11_crit_edge, %max2175_read_bits.exit62.thread
  %conv12 = trunc i64 %freq to i32
  %call13 = call fastcc i32 @max2175_set_lo_freq(ptr noundef %ctx, i32 noundef %conv12)
  br label %cleanup

if.end15:                                         ; preds = %max2175_read_bits.exit62.if.end15_crit_edge, %max2175_read_bits.exit.if.end15_crit_edge, %max2175_read_bits.exit.thread
  %low_if_freq.0 = phi i64 [ 128000, %max2175_read_bits.exit.if.end15_crit_edge ], [ 228000, %max2175_read_bits.exit62.if.end15_crit_edge ], [ 128000, %max2175_read_bits.exit.thread ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i63) #9
  %18 = ptrtoint ptr %regval.i.i63 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %regval.i.i63, align 4, !annotation !261
  %19 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i65 = call i32 @regmap_read(ptr noundef %20, i32 noundef 5, ptr noundef nonnull %regval.i.i63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i.i66, label %if.end.i72, label %max2175_read.exit.i69

max2175_read.exit.i69:                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i67 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %21 = ptrtoint ptr %client.i.i67 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i.i67, align 4
  %dev.i.i68 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i68, ptr noundef nonnull @.str.32, i32 noundef %call.i.i65, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i63) #9
  br label %max2175_read_bits.exit74

if.end.i72:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %regval.i.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regval.i.i63, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i63) #9
  %and5.i.i70 = and i32 %24, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and5.i.i70)
  %phi.cmp = icmp ne i32 %and5.i.i70, 2
  br label %max2175_read_bits.exit74

max2175_read_bits.exit74:                         ; preds = %if.end.i72, %max2175_read.exit.i69
  %retval.0.i73 = phi i1 [ %phi.cmp, %if.end.i72 ], [ true, %max2175_read.exit.i69 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %lo_pos)
  %cmp20 = icmp eq i32 %lo_pos, 1
  %cmp22 = xor i1 %cmp20, %retval.0.i73
  %25 = sub nsw i64 0, %low_if_freq.0
  %adj_freq.0.off0.v.p = select i1 %cmp22, i64 %low_if_freq.0, i64 %25
  %adj_freq.0.off0.v = add i64 %adj_freq.0.off0.v.p, %freq
  %adj_freq.0.off0 = trunc i64 %adj_freq.0.off0.v to i32
  %call28 = call fastcc i32 @max2175_set_lo_freq(ptr noundef %ctx, i32 noundef %adj_freq.0.off0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %max2175_read_bits.exit74.cleanup_crit_edge

max2175_read_bits.exit74.cleanup_crit_edge:       ; preds = %max2175_read_bits.exit74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31:                                         ; preds = %max2175_read_bits.exit74
  call void @__sanitizer_cov_trace_pc() #11
  %26 = trunc i64 %low_if_freq.0 to i32
  %conv33 = sub nsw i32 0, %26
  %call34 = call fastcc i32 @max2175_set_nco_freq(ptr noundef %ctx, i32 noundef %conv33)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %max2175_read_bits.exit74.cleanup_crit_edge, %if.else11
  %retval.0 = phi i32 [ %call34, %if.end31 ], [ %call13, %if.else11 ], [ %call28, %max2175_read_bits.exit74.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_poll_timeout(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %msb, i8 noundef zeroext %lsb, i8 noundef zeroext %exp_bitval) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !261
  %call = tail call i64 @ktime_get() #9
  %add.i = add i64 %call, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.6, i32 noundef 377) #9
  %regmap = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1024 = call i32 @regmap_read(ptr noundef %2, i32 noundef 69, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1024)
  %tobool.not25 = icmp eq i32 %call1024, 0
  br i1 %tobool.not25, label %lor.lhs.false.lr.ph, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

lor.lhs.false.lr.ph:                              ; preds = %entry
  %conv1.i = zext i8 %lsb to i32
  %shl.neg.i = shl nsw i32 -1, %conv1.i
  %conv2.i = zext i8 %msb to i32
  %sub3.i = sub nsw i32 31, %conv2.i
  %shr.i = lshr i32 -1, %sub3.i
  %conv.i = and i32 %shr.i, 255
  %and.i = and i32 %conv.i, %shl.neg.i
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then30.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and5.i = and i32 %and.i, %4
  %shr7.i = lshr i32 %and5.i, %conv1.i
  %conv8.i = trunc i32 %shr7.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv8.i, i8 %exp_bitval)
  %cmp15 = icmp eq i8 %conv8.i, %exp_bitval
  br i1 %cmp15, label %lor.lhs.false.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then30

if.then30:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call10 = call i32 @regmap_read(ptr noundef %6, i32 noundef 69, ptr noundef nonnull %val) #9
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then30.lor.lhs.false_crit_edge, label %if.then30.lor.end_crit_edge

if.then30.lor.end_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

if.then30.lor.lhs.false_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call27 = call i32 @regmap_read(ptr noundef %8, i32 noundef 69, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool32.not = icmp eq i32 %call27, 0
  br i1 %tobool32.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and5.i8 = and i32 %and.i, %10
  %shr7.i9 = lshr i32 %and5.i8, %conv1.i
  %conv8.i10 = trunc i32 %shr7.i9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv8.i10, i8 %exp_bitval)
  %cmp37 = icmp eq i8 %conv8.i10, %exp_bitval
  %phi.sel = select i1 %cmp37, i32 0, i32 -110
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %for.end.lor.end_crit_edge, %if.then30.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool32.not15 = phi i32 [ %call27, %for.end.lor.end_crit_edge ], [ %phi.sel, %lor.rhs ], [ %call1024, %entry.lor.end_crit_edge ], [ %call10, %if.then30.lor.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %tobool32.not15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_set_lo_freq(ptr nocapture noundef readonly %ctx, i32 noundef %lo_freq) unnamed_addr #2 align 64 {
entry:
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %0 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !261
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %max2175_read_bits.exit, label %max2175_read_bits.exit.thread

max2175_read_bits.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %if.else20

max2175_read_bits.exit:                           ; preds = %entry
  %5 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  %7 = trunc i32 %6 to i2
  %8 = zext i2 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i2 %7, label %if.then18 [
    i2 0, label %max2175_read_bits.exit.if.else20_crit_edge
    i2 1, label %sw.bb1
    i2 -2, label %sw.bb10
  ]

max2175_read_bits.exit.if.else20_crit_edge:       ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20

sw.bb1:                                           ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 74700001, i32 %lo_freq)
  %cmp = icmp ult i32 %lo_freq, 74700001
  br i1 %cmp, label %sw.bb1.if.else20_crit_edge, label %land.lhs.true

sw.bb1.if.else20_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else20

land.lhs.true:                                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 110000001, i32 %lo_freq)
  %cmp5 = icmp ult i32 %lo_freq, 110000001
  %. = select i1 %cmp5, i32 0, i32 192
  br label %if.else20

sw.bb10:                                          ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 210000001, i32 %lo_freq)
  %cmp11 = icmp ult i32 %lo_freq, 210000001
  %.85 = select i1 %cmp11, i32 128, i32 64
  br label %if.else20

if.then18:                                        ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %div176 = lshr i32 %lo_freq, 1
  br label %if.end22

if.else20:                                        ; preds = %sw.bb10, %land.lhs.true, %sw.bb1.if.else20_crit_edge, %max2175_read_bits.exit.if.else20_crit_edge, %max2175_read_bits.exit.thread
  %lo_mult.0.ph = phi i32 [ 16, %max2175_read_bits.exit.thread ], [ 8, %land.lhs.true ], [ 16, %sw.bb1.if.else20_crit_edge ], [ 16, %max2175_read_bits.exit.if.else20_crit_edge ], [ 4, %sw.bb10 ]
  %loband_bits.0.ph = phi i32 [ 0, %max2175_read_bits.exit.thread ], [ 4, %land.lhs.true ], [ 0, %sw.bb1.if.else20_crit_edge ], [ 0, %max2175_read_bits.exit.if.else20_crit_edge ], [ 8, %sw.bb10 ]
  %vcodiv_bits.1.ph = phi i32 [ 0, %max2175_read_bits.exit.thread ], [ %., %land.lhs.true ], [ 0, %sw.bb1.if.else20_crit_edge ], [ 0, %max2175_read_bits.exit.if.else20_crit_edge ], [ %.85, %sw.bb10 ]
  %mul = mul i32 %lo_mult.0.ph, %lo_freq
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  %vcodiv_bits.1150 = phi i32 [ 128, %if.then18 ], [ %vcodiv_bits.1.ph, %if.else20 ]
  %loband_bits.0148 = phi i32 [ 12, %if.then18 ], [ %loband_bits.0.ph, %if.else20 ]
  %lo_mult.0146 = phi i32 [ 2, %if.then18 ], [ %lo_mult.0.ph, %if.else20 ]
  %lo_freq.addr.0 = phi i32 [ %div176, %if.then18 ], [ %mul, %if.else20 ]
  %xtal_freq = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 13
  %9 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xtal_freq, align 4
  %.frozen = freeze i32 %10
  %div23 = udiv i32 %lo_freq.addr.0, %.frozen
  %11 = mul i32 %div23, %.frozen
  %rem.decomposed = sub i32 %lo_freq.addr.0, %11
  %conv25 = zext i32 %rem.decomposed to i64
  %shl = shl nuw nsw i64 %conv25, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %rem.decomposed)
  %cmp164.i.i = icmp ult i32 %rem.decomposed, 4096
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !264

if.then168.i.i:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %shl to i32
  %div172.i.i = udiv i32 %conv169.i.i, %10
  %extract162 = lshr i32 %div172.i.i, 8
  %extract170 = lshr i32 %div172.i.i, 16
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %10, i64 %shl) #13, !srcloc !265
  %asmresult1.i.i.i = extractvalue { i64, i64 } %12, 1
  %extract.t154 = trunc i64 %asmresult1.i.i.i to i32
  %extract164 = lshr i64 %asmresult1.i.i.i, 8
  %extract.t165 = trunc i64 %extract164 to i32
  %extract172 = lshr i64 %asmresult1.i.i.i, 16
  %extract.t173 = trunc i64 %extract172 to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t154, %if.else174.i.i ]
  %dividend.addr.0.i.i.off8 = phi i32 [ %extract162, %if.then168.i.i ], [ %extract.t165, %if.else174.i.i ]
  %dividend.addr.0.i.i.off16 = phi i32 [ %extract170, %if.then168.i.i ], [ %extract.t173, %if.else174.i.i ]
  %call.i = call fastcc i32 @max2175_poll_timeout(ptr noundef %ctx, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body, label %max2175_poll_csm_ready.exit

max2175_poll_csm_ready.exit:                      ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36) #12
  br label %cleanup

do.body:                                          ; preds = %div_u64.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_lo_freq.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_lo_freq, %if.then36)) #9
          to label %do.end [label %if.then36], !srcloc !263

if.then36:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_lo_freq.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %lo_mult.0146, i32 noundef %div23, i32 noundef %dividend.addr.0.i.i.off0) #9
  br label %do.end

do.end:                                           ; preds = %if.then36, %do.body
  %17 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i = and i32 %div23, 255
  %call.i89 = call i32 @regmap_write(ptr noundef %18, i32 noundef 1, i32 noundef %conv1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %do.end.max2175_write.exit_crit_edge, label %do.end.i93

do.end.max2175_write.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit

do.end.i93:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i91 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %client.i91 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i91, align 4
  %dev.i92 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i92, ptr noundef nonnull @.str.40, i32 noundef %call.i89, i32 noundef 1, i32 noundef %conv1.i) #12
  br label %max2175_write.exit

max2175_write.exit:                               ; preds = %do.end.i93, %do.end.max2175_write.exit_crit_edge
  %conv41 = and i32 %dividend.addr.0.i.i.off16, 15
  %21 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i96 = call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 2, i32 noundef 15, i32 noundef %conv41, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i96)
  %tobool.not.i97 = icmp eq i32 %call.i.i96, 0
  br i1 %tobool.not.i97, label %max2175_write.exit.max2175_write_bits.exit_crit_edge, label %do.end.i100

max2175_write.exit.max2175_write_bits.exit_crit_edge: ; preds = %max2175_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i100:                                      ; preds = %max2175_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i98 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %23 = ptrtoint ptr %client.i98 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i98, align 4
  %dev.i99 = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i99, ptr noundef nonnull @.str.38, i32 noundef %call.i.i96, i32 noundef 2) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i100, %max2175_write.exit.max2175_write_bits.exit_crit_edge
  %25 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i103 = and i32 %dividend.addr.0.i.i.off8, 255
  %call.i104 = call i32 @regmap_write(ptr noundef %26, i32 noundef 3, i32 noundef %conv1.i103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %tobool.not.i105 = icmp eq i32 %call.i104, 0
  br i1 %tobool.not.i105, label %max2175_write_bits.exit.max2175_write.exit110_crit_edge, label %do.end.i108

max2175_write_bits.exit.max2175_write.exit110_crit_edge: ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit110

do.end.i108:                                      ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i106 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %27 = ptrtoint ptr %client.i106 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client.i106, align 4
  %dev.i107 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i107, ptr noundef nonnull @.str.40, i32 noundef %call.i104, i32 noundef 3, i32 noundef %conv1.i103) #12
  br label %max2175_write.exit110

max2175_write.exit110:                            ; preds = %do.end.i108, %max2175_write_bits.exit.max2175_write.exit110_crit_edge
  %29 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i.i, align 4
  %conv1.i112 = and i32 %dividend.addr.0.i.i.off0, 255
  %call.i113 = call i32 @regmap_write(ptr noundef %30, i32 noundef 4, i32 noundef %conv1.i112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool.not.i114 = icmp eq i32 %call.i113, 0
  br i1 %tobool.not.i114, label %max2175_write.exit110.max2175_write.exit119_crit_edge, label %do.end.i117

max2175_write.exit110.max2175_write.exit119_crit_edge: ; preds = %max2175_write.exit110
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit119

do.end.i117:                                      ; preds = %max2175_write.exit110
  call void @__sanitizer_cov_trace_pc() #11
  %client.i115 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %31 = ptrtoint ptr %client.i115 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i115, align 4
  %dev.i116 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i116, ptr noundef nonnull @.str.40, i32 noundef %call.i113, i32 noundef 4, i32 noundef %conv1.i112) #12
  br label %max2175_write.exit119

max2175_write.exit119:                            ; preds = %do.end.i117, %max2175_write.exit110.max2175_write.exit119_crit_edge
  %33 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i.i, align 4
  %conv5.i121 = and i32 %loband_bits.0148, 1020
  %call.i.i122 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 5, i32 noundef 12, i32 noundef %conv5.i121, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i122)
  %tobool.not.i123 = icmp eq i32 %call.i.i122, 0
  br i1 %tobool.not.i123, label %max2175_write.exit119.max2175_write_bits.exit128_crit_edge, label %do.end.i126

max2175_write.exit119.max2175_write_bits.exit128_crit_edge: ; preds = %max2175_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit128

do.end.i126:                                      ; preds = %max2175_write.exit119
  call void @__sanitizer_cov_trace_pc() #11
  %client.i124 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %client.i124 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client.i124, align 4
  %dev.i125 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i125, ptr noundef nonnull @.str.38, i32 noundef %call.i.i122, i32 noundef 5) #12
  br label %max2175_write_bits.exit128

max2175_write_bits.exit128:                       ; preds = %do.end.i126, %max2175_write.exit119.max2175_write_bits.exit128_crit_edge
  %37 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i, align 4
  %conv5.i130 = and i32 %vcodiv_bits.1150, 16320
  %call.i.i132 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 6, i32 noundef 192, i32 noundef %conv5.i130, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i132)
  %tobool.not.i133 = icmp eq i32 %call.i.i132, 0
  br i1 %tobool.not.i133, label %max2175_write_bits.exit128.cleanup_crit_edge, label %do.end.i136

max2175_write_bits.exit128.cleanup_crit_edge:     ; preds = %max2175_write_bits.exit128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end.i136:                                      ; preds = %max2175_write_bits.exit128
  call void @__sanitizer_cov_trace_pc() #11
  %client.i134 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %39 = ptrtoint ptr %client.i134 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i134, align 4
  %dev.i135 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i135, ptr noundef nonnull @.str.38, i32 noundef %call.i.i132, i32 noundef 6) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i136, %max2175_write_bits.exit128.cleanup_crit_edge, %max2175_poll_csm_ready.exit
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max2175_set_csm_mode(ptr nocapture noundef readonly %ctx, i32 noundef %new_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @max2175_poll_timeout(ptr noundef %ctx, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %regmap.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %conv5.i = and i32 %new_mode, 255
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 7, i32 noundef %conv5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i15 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i15, label %if.end.max2175_write_bits.exit_crit_edge, label %do.end.i18

if.end.max2175_write_bits.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i18:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i16 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %client.i16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i16, align 4
  %dev.i17 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i17, ptr noundef nonnull @.str.38, i32 noundef %call.i.i, i32 noundef 0) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i18, %if.end.max2175_write_bits.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_csm_mode.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_csm_mode, %if.then6)) #9
          to label %do.end [label %if.then6], !srcloc !263

if.then6:                                         ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_csm_mode.__UNIQUE_ID_ddebug297, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %new_mode) #9
  br label %do.end

do.end:                                           ; preds = %if.then6, %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %new_mode)
  %cond = icmp eq i32 %new_mode, 1
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 51100, i32 noundef 51500, i32 noundef 2) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  %call.i19 = tail call fastcc i32 @max2175_poll_timeout(ptr noundef %ctx, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.cleanup.sink.split_crit_edge

sw.epilog.cleanup.sink.split_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.epilog.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call.i19, %sw.epilog.cleanup.sink.split_crit_edge ]
  %client.i21 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %client.i21 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i21, align 4
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.36) #12
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max2175_set_rx_mode(ptr noundef %ctx, i32 noundef %rx_mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_rx_mode.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_rx_mode, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !263

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %am_hiz = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 16
  %2 = ptrtoint ptr %am_hiz to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %am_hiz, align 1, !range !262
  %4 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_rx_mode.__UNIQUE_ID_ddebug305, ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %rx_mode, i32 noundef %4) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %xtal_freq = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 13
  %5 = ptrtoint ptr %xtal_freq to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %xtal_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864000, i32 %6)
  %cmp = icmp eq i32 %6, 36864000
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %do.end
  %7 = zext i32 %rx_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %rx_mode, label %if.then5.sw.epilog.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.then5.sw.epilog.i_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then5
  %regmap.i.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %client.i.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %max2175_write.exit.i.i.for.body.i.i_crit_edge, %sw.bb.i
  %i.08.i.i = phi i32 [ 0, %sw.bb.i ], [ %inc.i.i, %max2175_write.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [49 x %struct.max2175_reg_map], ptr @fmeu1p2_map, i32 0, i32 %i.08.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i, align 1
  %val.i.i = getelementptr [49 x %struct.max2175_reg_map], ptr @fmeu1p2_map, i32 0, i32 %i.08.i.i, i32 1
  %10 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %val.i.i, align 1
  %12 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i.i, align 4
  %conv.i.i.i = zext i8 %9 to i32
  %conv1.i.i.i = zext i8 %11 to i32
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef %conv.i.i.i, i32 noundef %conv1.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.max2175_write.exit.i.i_crit_edge, label %do.end.i.i.i

for.body.i.i.max2175_write.exit.i.i_crit_edge:    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i.i

do.end.i.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.40, i32 noundef %call.i.i.i, i32 noundef %conv.i.i.i, i32 noundef %conv1.i.i.i) #12
  br label %max2175_write.exit.i.i

max2175_write.exit.i.i:                           ; preds = %do.end.i.i.i, %for.body.i.i.max2175_write.exit.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 49
  br i1 %exitcond.not.i.i, label %max2175_load_fmeu_1p2.exit.i, label %max2175_write.exit.i.i.for.body.i.i_crit_edge

max2175_write.exit.i.i.for.body.i.i_crit_edge:    ; preds = %max2175_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

max2175_load_fmeu_1p2.exit.i:                     ; preds = %max2175_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %decim_ratio.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 14
  %16 = ptrtoint ptr %decim_ratio.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 36, ptr %decim_ratio.i.i, align 4
  tail call fastcc void @max2175_set_filter_coeffs(ptr noundef %ctx, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @ch_coeff_fmeu) #9
  tail call fastcc void @max2175_set_filter_coeffs(ptr noundef %ctx, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @eq_coeff_fmeu1_ra02_m6db) #9
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then5
  %regmap.i.i5.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %client.i.i6.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  br label %for.body.i13.i

for.body.i13.i:                                   ; preds = %max2175_write.exit.i18.i.for.body.i13.i_crit_edge, %sw.bb1.i
  %i.07.i.i = phi i32 [ 0, %sw.bb1.i ], [ %inc.i16.i, %max2175_write.exit.i18.i.for.body.i13.i_crit_edge ]
  %arrayidx.i7.i = getelementptr [49 x %struct.max2175_reg_map], ptr @dab12_map, i32 0, i32 %i.07.i.i
  %17 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i7.i, align 1
  %val.i8.i = getelementptr [49 x %struct.max2175_reg_map], ptr @dab12_map, i32 0, i32 %i.07.i.i, i32 1
  %19 = ptrtoint ptr %val.i8.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %val.i8.i, align 1
  %21 = ptrtoint ptr %regmap.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i.i5.i, align 4
  %conv.i.i9.i = zext i8 %18 to i32
  %conv1.i.i10.i = zext i8 %20 to i32
  %call.i.i11.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef %conv.i.i9.i, i32 noundef %conv1.i.i10.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i)
  %tobool.not.i.i12.i = icmp eq i32 %call.i.i11.i, 0
  br i1 %tobool.not.i.i12.i, label %for.body.i13.i.max2175_write.exit.i18.i_crit_edge, label %do.end.i.i15.i

for.body.i13.i.max2175_write.exit.i18.i_crit_edge: ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i18.i

do.end.i.i15.i:                                   ; preds = %for.body.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %client.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client.i.i6.i, align 4
  %dev.i.i14.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i14.i, ptr noundef nonnull @.str.40, i32 noundef %call.i.i11.i, i32 noundef %conv.i.i9.i, i32 noundef %conv1.i.i10.i) #12
  br label %max2175_write.exit.i18.i

max2175_write.exit.i18.i:                         ; preds = %do.end.i.i15.i, %for.body.i13.i.max2175_write.exit.i18.i_crit_edge
  %inc.i16.i = add nuw nsw i32 %i.07.i.i, 1
  %exitcond.not.i17.i = icmp eq i32 %inc.i16.i, 49
  br i1 %exitcond.not.i17.i, label %max2175_load_dab_1p2.exit.i, label %max2175_write.exit.i18.i.for.body.i13.i_crit_edge

max2175_write.exit.i18.i.for.body.i13.i_crit_edge: ; preds = %max2175_write.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i13.i

max2175_load_dab_1p2.exit.i:                      ; preds = %max2175_write.exit.i18.i
  call void @__sanitizer_cov_trace_pc() #11
  %decim_ratio.i19.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 14
  %25 = ptrtoint ptr %decim_ratio.i19.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %decim_ratio.i19.i, align 4
  tail call fastcc void @max2175_set_filter_coeffs(ptr noundef %ctx, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef nonnull @ch_coeff_dab1) #9
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %max2175_load_dab_1p2.exit.i, %max2175_load_fmeu_1p2.exit.i, %if.then5.sw.epilog.i_crit_edge
  %master.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 15
  %26 = ptrtoint ptr %master.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %master.i, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.epilog.i.if.end6_crit_edge

sw.epilog.i.if.end6_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i:                                        ; preds = %sw.epilog.i
  %regmap.i.i20.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %28 = ptrtoint ptr %regmap.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i.i20.i, align 4
  %call.i.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 30, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i21.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i21.i, label %if.then.i.if.end6_crit_edge, label %do.end.i.i24.i

if.then.i.if.end6_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

do.end.i.i24.i:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i22.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %30 = ptrtoint ptr %client.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client.i.i22.i, align 4
  %dev.i.i23.i = getelementptr inbounds %struct.i2c_client, ptr %31, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i23.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i.i, i32 noundef 30) #12
  br label %if.end6

if.else:                                          ; preds = %do.end
  %32 = zext i32 %rx_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %rx_mode, label %if.else.sw.epilog.i22_crit_edge [
    i32 0, label %sw.bb.i6
    i32 1, label %sw.bb1.i19
  ]

if.else.sw.epilog.i22_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i22

sw.bb.i6:                                         ; preds = %if.else
  %regmap.i.i.i4 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %client.i.i.i5 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  br label %for.body.i.i13

for.body.i.i13:                                   ; preds = %max2175_write.exit.i.i18.for.body.i.i13_crit_edge, %sw.bb.i6
  %i.05.i.i = phi i32 [ 0, %sw.bb.i6 ], [ %inc.i.i16, %max2175_write.exit.i.i18.for.body.i.i13_crit_edge ]
  %arrayidx.i.i7 = getelementptr [49 x %struct.max2175_reg_map], ptr @fmna1p0_map, i32 0, i32 %i.05.i.i
  %33 = ptrtoint ptr %arrayidx.i.i7 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i7, align 1
  %val.i.i8 = getelementptr [49 x %struct.max2175_reg_map], ptr @fmna1p0_map, i32 0, i32 %i.05.i.i, i32 1
  %35 = ptrtoint ptr %val.i.i8 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %val.i.i8, align 1
  %37 = ptrtoint ptr %regmap.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i.i4, align 4
  %conv.i.i.i9 = zext i8 %34 to i32
  %conv1.i.i.i10 = zext i8 %36 to i32
  %call.i.i.i11 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef %conv.i.i.i9, i32 noundef %conv1.i.i.i10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i11)
  %tobool.not.i.i.i12 = icmp eq i32 %call.i.i.i11, 0
  br i1 %tobool.not.i.i.i12, label %for.body.i.i13.max2175_write.exit.i.i18_crit_edge, label %do.end.i.i.i15

for.body.i.i13.max2175_write.exit.i.i18_crit_edge: ; preds = %for.body.i.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i.i18

do.end.i.i.i15:                                   ; preds = %for.body.i.i13
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %client.i.i.i5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i.i.i5, align 4
  %dev.i.i.i14 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i14, ptr noundef nonnull @.str.40, i32 noundef %call.i.i.i11, i32 noundef %conv.i.i.i9, i32 noundef %conv1.i.i.i10) #12
  br label %max2175_write.exit.i.i18

max2175_write.exit.i.i18:                         ; preds = %do.end.i.i.i15, %for.body.i.i13.max2175_write.exit.i.i18_crit_edge
  %inc.i.i16 = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i17 = icmp eq i32 %inc.i.i16, 49
  br i1 %exitcond.not.i.i17, label %max2175_write.exit.i.i18.sw.epilog.i22_crit_edge, label %max2175_write.exit.i.i18.for.body.i.i13_crit_edge

max2175_write.exit.i.i18.for.body.i.i13_crit_edge: ; preds = %max2175_write.exit.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i13

max2175_write.exit.i.i18.sw.epilog.i22_crit_edge: ; preds = %max2175_write.exit.i.i18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i22

sw.bb1.i19:                                       ; preds = %if.else
  %regmap.i.i8.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %client.i.i9.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  br label %for.body.i17.i

for.body.i17.i:                                   ; preds = %max2175_write.exit.i22.i.for.body.i17.i_crit_edge, %sw.bb1.i19
  %i.05.i10.i = phi i32 [ 0, %sw.bb1.i19 ], [ %inc.i20.i, %max2175_write.exit.i22.i.for.body.i17.i_crit_edge ]
  %arrayidx.i11.i = getelementptr [49 x %struct.max2175_reg_map], ptr @fmna2p0_map, i32 0, i32 %i.05.i10.i
  %41 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.i11.i, align 1
  %val.i12.i = getelementptr [49 x %struct.max2175_reg_map], ptr @fmna2p0_map, i32 0, i32 %i.05.i10.i, i32 1
  %43 = ptrtoint ptr %val.i12.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %val.i12.i, align 1
  %45 = ptrtoint ptr %regmap.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i.i8.i, align 4
  %conv.i.i13.i = zext i8 %42 to i32
  %conv1.i.i14.i = zext i8 %44 to i32
  %call.i.i15.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef %conv.i.i13.i, i32 noundef %conv1.i.i14.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i15.i)
  %tobool.not.i.i16.i = icmp eq i32 %call.i.i15.i, 0
  br i1 %tobool.not.i.i16.i, label %for.body.i17.i.max2175_write.exit.i22.i_crit_edge, label %do.end.i.i19.i

for.body.i17.i.max2175_write.exit.i22.i_crit_edge: ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit.i22.i

do.end.i.i19.i:                                   ; preds = %for.body.i17.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %client.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %client.i.i9.i, align 4
  %dev.i.i18.i = getelementptr inbounds %struct.i2c_client, ptr %48, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i18.i, ptr noundef nonnull @.str.40, i32 noundef %call.i.i15.i, i32 noundef %conv.i.i13.i, i32 noundef %conv1.i.i14.i) #12
  br label %max2175_write.exit.i22.i

max2175_write.exit.i22.i:                         ; preds = %do.end.i.i19.i, %for.body.i17.i.max2175_write.exit.i22.i_crit_edge
  %inc.i20.i = add nuw nsw i32 %i.05.i10.i, 1
  %exitcond.not.i21.i = icmp eq i32 %inc.i20.i, 49
  br i1 %exitcond.not.i21.i, label %max2175_write.exit.i22.i.sw.epilog.i22_crit_edge, label %max2175_write.exit.i22.i.for.body.i17.i_crit_edge

max2175_write.exit.i22.i.for.body.i17.i_crit_edge: ; preds = %max2175_write.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i17.i

max2175_write.exit.i22.i.sw.epilog.i22_crit_edge: ; preds = %max2175_write.exit.i22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i22

sw.epilog.i22:                                    ; preds = %max2175_write.exit.i22.i.sw.epilog.i22_crit_edge, %max2175_write.exit.i.i18.sw.epilog.i22_crit_edge, %if.else.sw.epilog.i22_crit_edge
  %master.i20 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 15
  %49 = ptrtoint ptr %master.i20 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %master.i20, align 4, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i21 = icmp eq i8 %50, 0
  br i1 %tobool.not.i21, label %if.then.i24, label %sw.epilog.i22.max2175_set_na_rx_mode.exit_crit_edge

sw.epilog.i22.max2175_set_na_rx_mode.exit_crit_edge: ; preds = %sw.epilog.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_set_na_rx_mode.exit

if.then.i24:                                      ; preds = %sw.epilog.i22
  %regmap.i.i23.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %51 = ptrtoint ptr %regmap.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i.i23.i, align 4
  %call.i.i.i.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 30, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i23)
  %tobool.not.i.i24.i = icmp eq i32 %call.i.i.i.i23, 0
  br i1 %tobool.not.i.i24.i, label %if.then.i24.max2175_set_na_rx_mode.exit_crit_edge, label %do.end.i.i27.i

if.then.i24.max2175_set_na_rx_mode.exit_crit_edge: ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_set_na_rx_mode.exit

do.end.i.i27.i:                                   ; preds = %if.then.i24
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i25.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %53 = ptrtoint ptr %client.i.i25.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %client.i.i25.i, align 4
  %dev.i.i26.i = getelementptr inbounds %struct.i2c_client, ptr %54, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i26.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i.i23, i32 noundef 30) #12
  br label %max2175_set_na_rx_mode.exit

max2175_set_na_rx_mode.exit:                      ; preds = %do.end.i.i27.i, %if.then.i24.max2175_set_na_rx_mode.exit_crit_edge, %sw.epilog.i22.max2175_set_na_rx_mode.exit_crit_edge
  %decim_ratio.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 14
  %55 = ptrtoint ptr %decim_ratio.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 27, ptr %decim_ratio.i, align 4
  tail call fastcc void @max2175_set_filter_coeffs(ptr noundef %ctx, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @ch_coeff_fmna) #9
  tail call fastcc void @max2175_set_filter_coeffs(ptr noundef %ctx, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @eq_coeff_fmna1_ra02_m6db) #9
  br label %if.end6

if.end6:                                          ; preds = %max2175_set_na_rx_mode.exit, %do.end.i.i24.i, %if.then.i.if.end6_crit_edge, %sw.epilog.i.if.end6_crit_edge
  %am_hiz7 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 16
  %56 = ptrtoint ptr %am_hiz7 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %am_hiz7, align 1, !range !262
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool8.not = icmp eq i8 %57, 0
  br i1 %tobool8.not, label %if.end6.if.end31_crit_edge, label %do.body10

if.end6.if.end31_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.body10:                                        ; preds = %if.end6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_rx_mode.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_rx_mode, %if.then22)) #9
          to label %do.end26 [label %if.then22], !srcloc !263

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %client23 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %58 = ptrtoint ptr %client23 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %client23, align 4
  %dev24 = getelementptr inbounds %struct.i2c_client, ptr %59, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_rx_mode.__UNIQUE_ID_ddebug306, ptr noundef %dev24, ptr noundef nonnull @.str.56) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %60 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 50, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i25)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i25, 0
  br i1 %tobool.not.i.i, label %do.end26.max2175_write_bit.exit_crit_edge, label %do.end.i.i

do.end26.max2175_write_bit.exit_crit_edge:        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit

do.end.i.i:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %62 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %63, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i25, i32 noundef 50) #12
  br label %max2175_write_bit.exit

max2175_write_bit.exit:                           ; preds = %do.end.i.i, %do.end26.max2175_write_bit.exit_crit_edge
  %64 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 90, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i27)
  %tobool.not.i.i28 = icmp eq i32 %call.i.i.i27, 0
  br i1 %tobool.not.i.i28, label %max2175_write_bit.exit.max2175_write_bit.exit32_crit_edge, label %do.end.i.i31

max2175_write_bit.exit.max2175_write_bit.exit32_crit_edge: ; preds = %max2175_write_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit32

do.end.i.i31:                                     ; preds = %max2175_write_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i29 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %66 = ptrtoint ptr %client.i.i29 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %client.i.i29, align 4
  %dev.i.i30 = getelementptr inbounds %struct.i2c_client, ptr %67, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i30, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i27, i32 noundef 90) #12
  br label %max2175_write_bit.exit32

max2175_write_bit.exit32:                         ; preds = %do.end.i.i31, %max2175_write_bit.exit.max2175_write_bit.exit32_crit_edge
  %68 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 73, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i33 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i33, label %max2175_write_bit.exit32.max2175_write_bits.exit_crit_edge, label %do.end.i

max2175_write_bit.exit32.max2175_write_bits.exit_crit_edge: ; preds = %max2175_write_bit.exit32
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i:                                         ; preds = %max2175_write_bit.exit32
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %70 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %71, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i, i32 noundef 73) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i, %max2175_write_bit.exit32.max2175_write_bits.exit_crit_edge
  %72 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 80, i32 noundef 63, i32 noundef 33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i35)
  %tobool.not.i36 = icmp eq i32 %call.i.i35, 0
  br i1 %tobool.not.i36, label %max2175_write_bits.exit.if.end31_crit_edge, label %do.end.i39

max2175_write_bits.exit.if.end31_crit_edge:       ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

do.end.i39:                                       ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i37 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %74 = ptrtoint ptr %client.i37 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %client.i37, align 4
  %dev.i38 = getelementptr inbounds %struct.i2c_client, ptr %75, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i38, ptr noundef nonnull @.str.38, i32 noundef %call.i.i35, i32 noundef 80) #12
  br label %if.end31

if.end31:                                         ; preds = %do.end.i39, %max2175_write_bits.exit.if.end31_crit_edge, %if.end6.if.end31_crit_edge
  tail call fastcc void @max2175_set_bbfilter(ptr noundef %ctx)
  %hsls = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 7
  %76 = ptrtoint ptr %hsls to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %hsls, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %77, i32 0, i32 23
  %78 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cur, align 8
  tail call fastcc void @max2175_set_hsls(ptr noundef %ctx, i32 noundef %79)
  %i2s_en = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 6
  %80 = ptrtoint ptr %i2s_en to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %i2s_en, align 4
  %cur32 = getelementptr inbounds %struct.v4l2_ctrl, ptr %81, i32 0, i32 23
  %82 = ptrtoint ptr %cur32 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %cur32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool34 = icmp ne i32 %83, 0
  tail call fastcc void @max2175_i2s_enable(ptr noundef %ctx, i1 noundef zeroext %tobool34)
  %mode_resolved = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 20
  %84 = ptrtoint ptr %mode_resolved to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 1, ptr %mode_resolved, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max2175_set_bbfilter(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %regval.i.i79 = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %0 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !261
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %1 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 5, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %max2175_read_bits.exit, label %max2175_read_bits.exit.thread

max2175_read_bits.exit.thread:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %3 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %if.then

max2175_read_bits.exit:                           ; preds = %entry
  %5 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  %conv8.i.i116 = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv8.i.i116)
  %cmp = icmp eq i32 %conv8.i.i116, 0
  br i1 %cmp, label %max2175_read_bits.exit.if.then_crit_edge, label %if.else

max2175_read_bits.exit.if.then_crit_edge:         ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %max2175_read_bits.exit.if.then_crit_edge, %max2175_read_bits.exit.thread
  %rom_bbf_bw_am = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 17
  %7 = ptrtoint ptr %rom_bbf_bw_am to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rom_bbf_bw_am, align 2
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %conv5.i = zext i8 %8 to i32
  %call.i.i77 = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 12, i32 noundef 15, i32 noundef %conv5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool.not.i = icmp eq i32 %call.i.i77, 0
  br i1 %tobool.not.i, label %if.then.max2175_write_bits.exit_crit_edge, label %do.end.i

if.then.max2175_write_bits.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i77, i32 noundef 12) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i, %if.then.max2175_write_bits.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_bbfilter.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_bbfilter, %if.then6)) #9
          to label %if.end56 [label %if.then6], !srcloc !263

if.then6:                                         ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %rom_bbf_bw_am to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rom_bbf_bw_am, align 2
  %conv8 = zext i8 %16 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_bbfilter.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %conv8) #9
  br label %if.end56

if.else:                                          ; preds = %max2175_read_bits.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i79) #9
  %17 = ptrtoint ptr %regval.i.i79 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %regval.i.i79, align 4, !annotation !261
  %18 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i81 = call i32 @regmap_read(ptr noundef %19, i32 noundef 12, ptr noundef nonnull %regval.i.i79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool.not.i.i82 = icmp eq i32 %call.i.i81, 0
  br i1 %tobool.not.i.i82, label %max2175_read_bits.exit90, label %max2175_read_bits.exit90.thread

max2175_read_bits.exit90.thread:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i83 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %20 = ptrtoint ptr %client.i.i83 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %client.i.i83, align 4
  %dev.i.i84 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i84, ptr noundef nonnull @.str.32, i32 noundef %call.i.i81, i32 noundef 12) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i79) #9
  br label %if.else34

max2175_read_bits.exit90:                         ; preds = %if.else
  %22 = ptrtoint ptr %regval.i.i79 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regval.i.i79, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i79) #9
  %24 = and i32 %23, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %24)
  %cmp11 = icmp eq i32 %24, 32
  br i1 %cmp11, label %if.then13, label %max2175_read_bits.exit90.if.else34_crit_edge

max2175_read_bits.exit90.if.else34_crit_edge:     ; preds = %max2175_read_bits.exit90
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else34

if.then13:                                        ; preds = %max2175_read_bits.exit90
  %rom_bbf_bw_dab = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 19
  %25 = ptrtoint ptr %rom_bbf_bw_dab to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rom_bbf_bw_dab, align 4
  %27 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i.i, align 4
  %conv5.i92 = zext i8 %26 to i32
  %call.i.i93 = call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 12, i32 noundef 15, i32 noundef %conv5.i92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool.not.i94 = icmp eq i32 %call.i.i93, 0
  br i1 %tobool.not.i94, label %if.then13.max2175_write_bits.exit99_crit_edge, label %do.end.i97

if.then13.max2175_write_bits.exit99_crit_edge:    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit99

do.end.i97:                                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #11
  %client.i95 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %29 = ptrtoint ptr %client.i95 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client.i95, align 4
  %dev.i96 = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i96, ptr noundef nonnull @.str.38, i32 noundef %call.i.i93, i32 noundef 12) #12
  br label %max2175_write_bits.exit99

max2175_write_bits.exit99:                        ; preds = %do.end.i97, %if.then13.max2175_write_bits.exit99_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_bbfilter.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_bbfilter, %if.then27)) #9
          to label %if.end56 [label %if.then27], !srcloc !263

if.then27:                                        ; preds = %max2175_write_bits.exit99
  call void @__sanitizer_cov_trace_pc() #11
  %client28 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %31 = ptrtoint ptr %client28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client28, align 4
  %dev29 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %rom_bbf_bw_dab to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %rom_bbf_bw_dab, align 4
  %conv31 = zext i8 %34 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_bbfilter.__UNIQUE_ID_ddebug295, ptr noundef %dev29, ptr noundef nonnull @.str.61, i32 noundef %conv31) #9
  br label %if.end56

if.else34:                                        ; preds = %max2175_read_bits.exit90.if.else34_crit_edge, %max2175_read_bits.exit90.thread
  %rom_bbf_bw_fm = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 18
  %35 = ptrtoint ptr %rom_bbf_bw_fm to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %rom_bbf_bw_fm, align 1
  %37 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i.i, align 4
  %conv5.i101 = zext i8 %36 to i32
  %call.i.i102 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 12, i32 noundef 15, i32 noundef %conv5.i101, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %tobool.not.i103 = icmp eq i32 %call.i.i102, 0
  br i1 %tobool.not.i103, label %if.else34.max2175_write_bits.exit108_crit_edge, label %do.end.i106

if.else34.max2175_write_bits.exit108_crit_edge:   ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit108

do.end.i106:                                      ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #11
  %client.i104 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %39 = ptrtoint ptr %client.i104 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client.i104, align 4
  %dev.i105 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i105, ptr noundef nonnull @.str.38, i32 noundef %call.i.i102, i32 noundef 12) #12
  br label %max2175_write_bits.exit108

max2175_write_bits.exit108:                       ; preds = %do.end.i106, %if.else34.max2175_write_bits.exit108_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_bbfilter.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_bbfilter, %if.then48)) #9
          to label %if.end56 [label %if.then48], !srcloc !263

if.then48:                                        ; preds = %max2175_write_bits.exit108
  call void @__sanitizer_cov_trace_pc() #11
  %client49 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %41 = ptrtoint ptr %client49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %client49, align 4
  %dev50 = getelementptr inbounds %struct.i2c_client, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %rom_bbf_bw_fm to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rom_bbf_bw_fm, align 1
  %conv52 = zext i8 %44 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_bbfilter.__UNIQUE_ID_ddebug296, ptr noundef %dev50, ptr noundef nonnull @.str.62, i32 noundef %conv52) #9
  br label %if.end56

if.end56:                                         ; preds = %if.then48, %max2175_write_bits.exit108, %if.then27, %max2175_write_bits.exit99, %if.then6, %max2175_write_bits.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max2175_set_hsls(ptr nocapture noundef readonly %ctx, i32 noundef %lo_pos) unnamed_addr #2 align 64 {
entry:
  %regval.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_hsls.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_hsls, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !263

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_hsls.__UNIQUE_ID_ddebug304, ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %lo_pos) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lo_pos)
  %cmp = icmp ne i32 %lo_pos, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %2 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !261
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %3 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 5, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %max2175_read_bits.exit, label %max2175_read.exit.i

max2175_read.exit.i:                              ; preds = %do.end
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br i1 %cmp, label %max2175_read.exit.i.if.then9_crit_edge, label %max2175_read.exit.i.if.else_crit_edge

max2175_read.exit.i.if.else_crit_edge:            ; preds = %max2175_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

max2175_read.exit.i.if.then9_crit_edge:           ; preds = %max2175_read.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

max2175_read_bits.exit:                           ; preds = %do.end
  %7 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  %conv8.i.i30 = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv8.i.i30)
  %cmp5 = icmp eq i32 %conv8.i.i30, 2
  %cmp7 = xor i1 %cmp, %cmp5
  br i1 %cmp7, label %max2175_read_bits.exit.if.then9_crit_edge, label %max2175_read_bits.exit.if.else_crit_edge

max2175_read_bits.exit.if.else_crit_edge:         ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

max2175_read_bits.exit.if.then9_crit_edge:        ; preds = %max2175_read_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %max2175_read_bits.exit.if.then9_crit_edge, %max2175_read.exit.i.if.then9_crit_edge
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 5, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i19 = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i19, label %if.then9.if.end12_crit_edge, label %if.then9.if.end12.sink.split_crit_edge

if.then9.if.end12.sink.split_crit_edge:           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

if.then9.if.end12_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.else:                                          ; preds = %max2175_read_bits.exit.if.else_crit_edge, %max2175_read.exit.i.if.else_crit_edge
  %11 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i23 = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 5, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i23)
  %tobool.not.i.i24 = icmp eq i32 %call.i.i.i23, 0
  br i1 %tobool.not.i.i24, label %if.else.if.end12_crit_edge, label %if.else.if.end12.sink.split_crit_edge

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.sink.split

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end12.sink.split:                              ; preds = %if.else.if.end12.sink.split_crit_edge, %if.then9.if.end12.sink.split_crit_edge
  %call.i.i.i23.sink = phi i32 [ %call.i.i.i, %if.then9.if.end12.sink.split_crit_edge ], [ %call.i.i.i23, %if.else.if.end12.sink.split_crit_edge ]
  %client.i.i25 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %13 = ptrtoint ptr %client.i.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i.i25, align 4
  %dev.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i26, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i23.sink, i32 noundef 5) #12
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge, %if.then9.if.end12_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max2175_i2s_enable(ptr nocapture noundef readonly %ctx, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 104, i32 noundef 15, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.then.do.body_crit_edge, label %if.then.do.body.sink.split_crit_edge

if.then.do.body.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.else:                                          ; preds = %entry
  %call.i.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 104, i32 noundef 15, i32 noundef 9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14)
  %tobool.not.i15 = icmp eq i32 %call.i.i14, 0
  br i1 %tobool.not.i15, label %if.else.do.body_crit_edge, label %if.else.do.body.sink.split_crit_edge

if.else.do.body.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.else.do.body_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body.sink.split:                               ; preds = %if.else.do.body.sink.split_crit_edge, %if.then.do.body.sink.split_crit_edge
  %call.i.i14.sink = phi i32 [ %call.i.i, %if.then.do.body.sink.split_crit_edge ], [ %call.i.i14, %if.else.do.body.sink.split_crit_edge ]
  %client.i16 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %client.i16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i16, align 4
  %dev.i17 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i17, ptr noundef nonnull @.str.38, i32 noundef %call.i.i14.sink, i32 noundef 104) #12
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.else.do.body_crit_edge, %if.then.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_i2s_enable.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_i2s_enable, %if.then7)) #9
          to label %do.end [label %if.then7], !srcloc !263

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %cond = select i1 %enable, ptr @.str.67, ptr @.str.68
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_i2s_enable.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.66, ptr noundef nonnull %cond) #9
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @max2175_set_filter_coeffs(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %m_sel, i8 noundef zeroext %bank, ptr nocapture noundef readonly %coeffs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_set_filter_coeffs.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_set_filter_coeffs, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !263

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %conv = zext i8 %m_sel to i32
  %conv3 = zext i8 %bank to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_set_filter_coeffs.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.58, i32 noundef %conv, i32 noundef %conv3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %conv5.i = zext i8 %m_sel to i32
  %shl7.i = shl nuw nsw i32 %conv5.i, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 114, i32 noundef 48, i32 noundef %shl7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %do.end.max2175_write_bits.exit_crit_edge, label %do.end.i

do.end.max2175_write_bits.exit_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i, i32 noundef 114) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i, %do.end.max2175_write_bits.exit_crit_edge
  %conv12 = zext i8 %bank to i32
  %mul = mul nuw nsw i32 %conv12, 24
  %client.i39 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %max2175_write.exit57.for.body_crit_edge, %max2175_write_bits.exit
  %i.059 = phi i32 [ 0, %max2175_write_bits.exit ], [ %inc, %max2175_write.exit57.for.body_crit_edge ]
  %add = add nuw nsw i32 %i.059, %mul
  %arrayidx = getelementptr i16, ptr %coeffs, i32 %i.059
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = lshr i16 %7, 8
  %conv15 = zext i16 %8 to i32
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 115, i32 noundef %conv15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i38 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i38, label %for.body.max2175_write.exit_crit_edge, label %do.end.i41

for.body.max2175_write.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit

do.end.i41:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %client.i39 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i39, align 4
  %dev.i40 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i40, ptr noundef nonnull @.str.40, i32 noundef %call.i, i32 noundef 115, i32 noundef %conv15) #12
  br label %max2175_write.exit

max2175_write.exit:                               ; preds = %do.end.i41, %for.body.max2175_write.exit_crit_edge
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx, align 2
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %17 = and i16 %14, 255
  %conv1.i43 = zext i16 %17 to i32
  %call.i44 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 116, i32 noundef %conv1.i43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i45 = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i45, label %max2175_write.exit.max2175_write.exit49_crit_edge, label %do.end.i48

max2175_write.exit.max2175_write.exit49_crit_edge: ; preds = %max2175_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit49

do.end.i48:                                       ; preds = %max2175_write.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %client.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client.i39, align 4
  %dev.i47 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i47, ptr noundef nonnull @.str.40, i32 noundef %call.i44, i32 noundef 116, i32 noundef %conv1.i43) #12
  br label %max2175_write.exit49

max2175_write.exit49:                             ; preds = %do.end.i48, %max2175_write.exit.max2175_write.exit49_crit_edge
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %conv21 = and i32 %add, 127
  %conv1.i51 = or i32 %conv21, 128
  %call.i52 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 117, i32 noundef %conv1.i51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool.not.i53 = icmp eq i32 %call.i52, 0
  br i1 %tobool.not.i53, label %max2175_write.exit49.max2175_write.exit57_crit_edge, label %do.end.i56

max2175_write.exit49.max2175_write.exit57_crit_edge: ; preds = %max2175_write.exit49
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write.exit57

do.end.i56:                                       ; preds = %max2175_write.exit49
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %client.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i39, align 4
  %dev.i55 = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i55, ptr noundef nonnull @.str.40, i32 noundef %call.i52, i32 noundef 117, i32 noundef %conv1.i51) #12
  br label %max2175_write.exit57

max2175_write.exit57:                             ; preds = %do.end.i56, %max2175_write.exit49.max2175_write.exit57_crit_edge
  %inc = add nuw nsw i32 %i.059, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.end, label %max2175_write.exit57.for.body_crit_edge

max2175_write.exit57.for.body_crit_edge:          ; preds = %max2175_write.exit57
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %max2175_write.exit57
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 117, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.end.max2175_write_bit.exit_crit_edge, label %do.end.i.i

for.end.max2175_write_bit.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit

do.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %client.i39 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i39, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i, i32 noundef 117) #12
  br label %max2175_write_bit.exit

max2175_write_bit.exit:                           ; preds = %do.end.i.i, %for.end.max2175_write_bit.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2175_g_volatile_ctrl(ptr nocapture noundef %ctrl) #2 align 64 {
entry:
  %regval.i.i16 = alloca i32, align 4
  %regval.i.i = alloca i32, align 4
  %regval.i.i36.i = alloca i32, align 4
  %regval.i.i24.i = alloca i32, align 4
  %regval.i.i12.i = alloca i32, align 4
  %regval.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 10619178, label %sw.bb
    i32 10619198, label %sw.bb2
    i32 10619227, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i.i) #9
  %5 = ptrtoint ptr %regval.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %regval.i.i.i, align 4, !annotation !261
  %regmap.i.i.i = getelementptr i8, ptr %1, i32 208
  %6 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i.i = call i32 @regmap_read(ptr noundef %7, i32 noundef 5, ptr noundef nonnull %regval.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %max2175_read_bits.exit.i, label %max2175_read_bits.exit.thread.i

max2175_read_bits.exit.thread.i:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i.i = getelementptr i8, ptr %1, i32 -4
  %8 = ptrtoint ptr %client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client.i.i.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i.i, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i.i) #9
  br label %sw.bb.i

max2175_read_bits.exit.i:                         ; preds = %sw.bb
  %10 = ptrtoint ptr %regval.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regval.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i.i) #9
  %12 = trunc i32 %11 to i2
  %13 = zext i2 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.93)
  switch i2 %12, label %max2175_read_bits.exit.i.sw.epilog.sink.split_crit_edge [
    i2 0, label %max2175_read_bits.exit.i.sw.bb.i_crit_edge
    i2 1, label %sw.bb3.i
    i2 -2, label %sw.bb6.i
  ]

max2175_read_bits.exit.i.sw.bb.i_crit_edge:       ; preds = %max2175_read_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

max2175_read_bits.exit.i.sw.epilog.sink.split_crit_edge: ; preds = %max2175_read_bits.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb.i:                                          ; preds = %max2175_read_bits.exit.i.sw.bb.i_crit_edge, %max2175_read_bits.exit.thread.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i12.i) #9
  %14 = ptrtoint ptr %regval.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %regval.i.i12.i, align 4, !annotation !261
  %15 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i14.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 51, ptr noundef nonnull %regval.i.i12.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i14.i)
  %tobool.not.i.i15.i = icmp eq i32 %call.i.i14.i, 0
  br i1 %tobool.not.i.i15.i, label %if.end.i21.i, label %max2175_read.exit.i18.i

max2175_read.exit.i18.i:                          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i16.i = getelementptr i8, ptr %1, i32 -4
  %17 = ptrtoint ptr %client.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i.i16.i, align 4
  %dev.i.i17.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i17.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i14.i, i32 noundef 51) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i12.i) #9
  br label %sw.epilog.sink.split

if.end.i21.i:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %regval.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval.i.i12.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i12.i) #9
  %and5.i.i19.i = and i32 %20, 15
  br label %sw.epilog.sink.split

sw.bb3.i:                                         ; preds = %max2175_read_bits.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i24.i) #9
  %21 = ptrtoint ptr %regval.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %regval.i.i24.i, align 4, !annotation !261
  %22 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i26.i = call i32 @regmap_read(ptr noundef %23, i32 noundef 50, ptr noundef nonnull %regval.i.i24.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i26.i)
  %tobool.not.i.i27.i = icmp eq i32 %call.i.i26.i, 0
  br i1 %tobool.not.i.i27.i, label %if.end.i33.i, label %max2175_read.exit.i30.i

max2175_read.exit.i30.i:                          ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i28.i = getelementptr i8, ptr %1, i32 -4
  %24 = ptrtoint ptr %client.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i.i28.i, align 4
  %dev.i.i29.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i29.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i26.i, i32 noundef 50) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i24.i) #9
  br label %sw.epilog.sink.split

if.end.i33.i:                                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %regval.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %regval.i.i24.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i24.i) #9
  %and5.i.i31.i = and i32 %27, 15
  br label %sw.epilog.sink.split

sw.bb6.i:                                         ; preds = %max2175_read_bits.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i36.i) #9
  %28 = ptrtoint ptr %regval.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %regval.i.i36.i, align 4, !annotation !261
  %29 = ptrtoint ptr %regmap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i.i.i, align 4
  %call.i.i38.i = call i32 @regmap_read(ptr noundef %30, i32 noundef 52, ptr noundef nonnull %regval.i.i36.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38.i)
  %tobool.not.i.i39.i = icmp eq i32 %call.i.i38.i, 0
  br i1 %tobool.not.i.i39.i, label %if.end.i45.i, label %max2175_read.exit.i42.i

max2175_read.exit.i42.i:                          ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i40.i = getelementptr i8, ptr %1, i32 -4
  %31 = ptrtoint ptr %client.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client.i.i40.i, align 4
  %dev.i.i41.i = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i41.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i38.i, i32 noundef 52) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i36.i) #9
  br label %sw.epilog.sink.split

if.end.i45.i:                                     ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %regval.i.i36.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regval.i.i36.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i36.i) #9
  %and5.i.i43.i = and i32 %34, 63
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i) #9
  %35 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %regval.i.i, align 4, !annotation !261
  %regmap.i.i = getelementptr i8, ptr %1, i32 208
  %36 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %37, i32 noundef 49, ptr noundef nonnull %regval.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %max2175_read.exit.i

max2175_read.exit.i:                              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr i8, ptr %1, i32 -4
  %38 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.32, i32 noundef %call.i.i, i32 noundef 49) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  br label %sw.epilog.sink.split

if.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i) #9
  %and5.i.i = and i32 %41, 31
  br label %sw.epilog.sink.split

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i.i16) #9
  %42 = ptrtoint ptr %regval.i.i16 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %regval.i.i16, align 4, !annotation !261
  %regmap.i.i17 = getelementptr i8, ptr %1, i32 208
  %43 = ptrtoint ptr %regmap.i.i17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i.i17, align 4
  %call.i.i18 = call i32 @regmap_read(ptr noundef %44, i32 noundef 60, ptr noundef nonnull %regval.i.i16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18)
  %tobool.not.i.i19 = icmp eq i32 %call.i.i18, 0
  br i1 %tobool.not.i.i19, label %if.end.i25, label %max2175_read.exit.i22

max2175_read.exit.i22:                            ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i20 = getelementptr i8, ptr %1, i32 -4
  %45 = ptrtoint ptr %client.i.i20 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %client.i.i20, align 4
  %dev.i.i21 = getelementptr inbounds %struct.i2c_client, ptr %46, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i21, ptr noundef nonnull @.str.32, i32 noundef %call.i.i18, i32 noundef 60) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i16) #9
  br label %sw.epilog.sink.split

if.end.i25:                                       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %regval.i.i16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %regval.i.i16, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i.i16) #9
  %and5.i.i23 = and i32 %48, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and5.i.i23)
  %phi.cmp = icmp eq i32 %and5.i.i23, 192
  %phi.cast = zext i1 %phi.cmp to i32
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end.i25, %max2175_read.exit.i22, %if.end.i, %max2175_read.exit.i, %if.end.i45.i, %max2175_read.exit.i42.i, %if.end.i33.i, %max2175_read.exit.i30.i, %if.end.i21.i, %max2175_read.exit.i18.i, %max2175_read_bits.exit.i.sw.epilog.sink.split_crit_edge
  %retval.0.i26.sink = phi i32 [ 0, %max2175_read_bits.exit.i.sw.epilog.sink.split_crit_edge ], [ %and5.i.i19.i, %if.end.i21.i ], [ 0, %max2175_read.exit.i18.i ], [ %and5.i.i31.i, %if.end.i33.i ], [ 0, %max2175_read.exit.i30.i ], [ %and5.i.i43.i, %if.end.i45.i ], [ 0, %max2175_read.exit.i42.i ], [ %and5.i.i, %if.end.i ], [ 0, %max2175_read.exit.i ], [ %phi.cast, %if.end.i25 ], [ 0, %max2175_read.exit.i22 ]
  %val9 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %49 = ptrtoint ptr %val9 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %retval.0.i26.sink, ptr %val9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max2175_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -200
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_s_ctrl.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_s_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !263

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_s_ctrl.__UNIQUE_ID_ddebug312, ptr noundef %dev, ptr noundef nonnull @.str.71, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %8 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id4, align 8
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %9, label %do.end.sw.epilog_crit_edge [
    i32 9968017, label %sw.bb
    i32 9968018, label %sw.bb7
    i32 9968019, label %sw.bb9
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %val5 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %11 = ptrtoint ptr %val5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6 = icmp ne i32 %12, 0
  tail call fastcc void @max2175_i2s_enable(ptr noundef %add.ptr.i, i1 noundef zeroext %tobool6)
  br label %sw.epilog

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val8, align 4
  tail call fastcc void @max2175_set_hsls(ptr noundef %add.ptr.i, i32 noundef %14)
  br label %sw.epilog

sw.bb9:                                           ; preds = %do.end
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %15 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val10, align 4
  tail call fastcc void @max2175_set_rx_mode(ptr noundef %add.ptr.i, i32 noundef %16) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_s_ctrl_rx_mode.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_s_ctrl, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !263

if.then.i:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr i8, ptr %1, i32 -4
  %17 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  %freq.i = getelementptr i8, ptr %1, i32 212
  %19 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %freq.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_s_ctrl_rx_mode.__UNIQUE_ID_ddebug311, ptr noundef %dev.i, ptr noundef nonnull @.str.73, i32 noundef %16, i32 noundef %20) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb9
  %freq4.i = getelementptr i8, ptr %1, i32 212
  %21 = ptrtoint ptr %freq4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %freq4.i, align 4
  %23 = add i32 %22, -144000
  call void @__sanitizer_cov_trace_const_cmp4(i32 25956001, i32 %23)
  %24 = icmp ult i32 %23, 25956001
  %25 = add i32 %22, -65000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 43000001, i32 %25)
  %26 = icmp ult i32 %25, 43000001
  %spec.select.i.i.i = select i1 %26, i32 1, i32 2
  %retval.0.i.i.i = select i1 %24, i32 0, i32 %spec.select.i.i.i
  %rx_modes.i.i = getelementptr i8, ptr %1, i32 216
  %27 = ptrtoint ptr %rx_modes.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rx_modes.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.max2175_rxmode, ptr %28, i32 %16
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %retval.0.i.i.i)
  %cmp.i.i = icmp eq i32 %30, %retval.0.i.i.i
  br i1 %cmp.i.i, label %do.end.i.max2175_s_ctrl_rx_mode.exit_crit_edge, label %if.else.i

do.end.i.max2175_s_ctrl_rx_mode.exit_crit_edge:   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_s_ctrl_rx_mode.exit

if.else.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %freq9.i = getelementptr %struct.max2175_rxmode, ptr %28, i32 %16, i32 1
  %31 = ptrtoint ptr %freq9.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %freq9.i, align 4
  br label %max2175_s_ctrl_rx_mode.exit

max2175_s_ctrl_rx_mode.exit:                      ; preds = %if.else.i, %do.end.i.max2175_s_ctrl_rx_mode.exit_crit_edge
  %.sink.i = phi i32 [ %32, %if.else.i ], [ %22, %do.end.i.max2175_s_ctrl_rx_mode.exit_crit_edge ]
  %conv10.i = zext i32 %.sink.i to i64
  %hsls11.i = getelementptr i8, ptr %1, i32 200
  %33 = ptrtoint ptr %hsls11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hsls11.i, align 4
  %cur12.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 23
  %35 = ptrtoint ptr %cur12.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cur12.i, align 8
  %call14.i = tail call fastcc i32 @max2175_tune_rf_freq(ptr noundef %add.ptr.i, i64 noundef %conv10.i, i32 noundef %36) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %max2175_s_ctrl_rx_mode.exit, %sw.bb7, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @max2175_read_rom(ptr nocapture noundef readonly %ctx, i8 noundef zeroext %row) unnamed_addr #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 9
  %0 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 56, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %entry.max2175_write_bit.exit_crit_edge, label %do.end.i.i

entry.max2175_write_bit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bit.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %client.i.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %2 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i.i, i32 noundef 56) #12
  br label %max2175_write_bit.exit

max2175_write_bit.exit:                           ; preds = %do.end.i.i, %entry.max2175_write_bit.exit_crit_edge
  %4 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i.i, align 4
  %conv5.i = zext i8 %row to i32
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 56, i32 noundef 15, i32 noundef %conv5.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %max2175_write_bit.exit.max2175_write_bits.exit_crit_edge, label %do.end.i

max2175_write_bit.exit.max2175_write_bits.exit_crit_edge: ; preds = %max2175_write_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit

do.end.i:                                         ; preds = %max2175_write_bit.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %call.i.i, i32 noundef 56) #12
  br label %max2175_write_bits.exit

max2175_write_bits.exit:                          ; preds = %do.end.i, %max2175_write_bit.exit.max2175_write_bits.exit_crit_edge
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #9
  %8 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %regval.i, align 4, !annotation !261
  %9 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 58, ptr noundef nonnull %regval.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i14 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i14, label %if.else.i, label %do.end.i17

do.end.i17:                                       ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i15 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %11 = ptrtoint ptr %client.i15 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client.i15, align 4
  %dev.i16 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i16, ptr noundef nonnull @.str.32, i32 noundef %call.i, i32 noundef 58) #12
  br label %max2175_read.exit

if.else.i:                                        ; preds = %max2175_write_bits.exit
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regval.i, align 4
  %conv2.i = trunc i32 %14 to i8
  br label %max2175_read.exit

max2175_read.exit:                                ; preds = %if.else.i, %do.end.i17
  %data.0 = phi i8 [ %conv2.i, %if.else.i ], [ 0, %do.end.i17 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #9
  %15 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i19 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 56, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19)
  %tobool.not.i20 = icmp eq i32 %call.i.i19, 0
  br i1 %tobool.not.i20, label %max2175_read.exit.max2175_write_bits.exit24_crit_edge, label %do.end.i23

max2175_read.exit.max2175_write_bits.exit24_crit_edge: ; preds = %max2175_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %max2175_write_bits.exit24

do.end.i23:                                       ; preds = %max2175_read.exit
  call void @__sanitizer_cov_trace_pc() #11
  %client.i21 = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %17 = ptrtoint ptr %client.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %client.i21, align 4
  %dev.i22 = getelementptr inbounds %struct.i2c_client, ptr %18, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i22, ptr noundef nonnull @.str.38, i32 noundef %call.i.i19, i32 noundef 56) #12
  br label %max2175_write_bits.exit24

max2175_write_bits.exit24:                        ; preds = %do.end.i23, %max2175_read.exit.max2175_write_bits.exit24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max2175_read_rom.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max2175_read_rom, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !263

if.then:                                          ; preds = %max2175_write_bits.exit24
  call void @__sanitizer_cov_trace_pc() #11
  %client = getelementptr inbounds %struct.max2175, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  %conv7 = zext i8 %data.0 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max2175_read_rom.__UNIQUE_ID_ddebug308, ptr noundef %dev, ptr noundef nonnull @.str.89, i32 noundef %conv5.i, i32 noundef %conv7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %max2175_write_bits.exit24
  ret i8 %data.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 126)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !135, !137, !138, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !159, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !174, !175, !177, !179, !181, !182, !183, !185, !186, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !224, !225, !227, !228, !230, !232, !234, !236, !237, !238, !239, !241, !242, !243, !244, !246, !247, !248, !250}
!llvm.module.flags = !{!252, !253, !254, !255, !256, !257, !258, !259}
!llvm.ident = !{!260}

!0 = !{ptr @__initcall__kmod_max2175__320_1439_max2175_driver_init6, !1, !"__initcall__kmod_max2175__320_1439_max2175_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/max2175.c", i32 1439, i32 1}
!2 = !{ptr @__exitcall_max2175_driver_exit, !1, !"__exitcall_max2175_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/media/i2c/max2175.c", i32 1441, i32 1}
!5 = !{ptr @__UNIQUE_ID_file322, !6, !"__UNIQUE_ID_file322", i1 false, i1 false}
!6 = !{!"../drivers/media/i2c/max2175.c", i32 1442, i32 1}
!7 = !{ptr @__UNIQUE_ID_license323, !6, !"__UNIQUE_ID_license323", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author324, !9, !"__UNIQUE_ID_author324", i1 false, i1 false}
!9 = !{!"../drivers/media/i2c/max2175.c", i32 1443, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/max2175.c", i32 1431, i32 11}
!12 = !{ptr @max2175_driver, !13, !"max2175_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/max2175.c", i32 1429, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/i2c/max2175.c", i32 1287, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/max2175.c", i32 1294, i32 38}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/max2175.c", i32 1297, i32 40}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/max2175.c", i32 1302, i32 4}
!22 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @max2175_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @max2175_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/max2175.c", i32 1311, i32 3}
!30 = !{ptr @max2175_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @max2175_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @max2175_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/max2175.c", i32 1315, i32 11}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/max2175.c", i32 1318, i32 3}
!37 = !{ptr @max2175_probe._entry.13, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max2175_probe._entry_ptr.15, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/max2175.c", i32 1333, i32 2}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @max2175_probe._entry.16, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @max2175_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @max2175_probe._key.20, !45, !"_key", i1 false, i1 false}
!45 = !{!"../drivers/media/i2c/max2175.c", i32 1342, i32 8}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/max2175.c", i32 1383, i32 3}
!49 = !{ptr @max2175_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @max2175_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @max2175_regmap_config, !52, !"max2175_regmap_config", i1 false, i1 false}
!52 = !{!"../drivers/media/i2c/max2175.c", i32 253, i32 35}
!53 = !{ptr @max2175_volatile_regs, !54, !"max2175_volatile_regs", i1 false, i1 false}
!54 = !{!"../drivers/media/i2c/max2175.c", i32 244, i32 41}
!55 = !{ptr @max2175_regmap_volatile_range, !56, !"max2175_regmap_volatile_range", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/max2175.c", i32 237, i32 34}
!57 = !{ptr @max2175_reg_defaults, !58, !"max2175_reg_defaults", i1 false, i1 false}
!58 = !{!"../drivers/media/i2c/max2175.c", i32 249, i32 33}
!59 = !{ptr @max2175_ops, !60, !"max2175_ops", i1 false, i1 false}
!60 = !{!"../drivers/media/i2c/max2175.c", i32 1185, i32 37}
!61 = !{ptr @max2175_tuner_ops, !62, !"max2175_tuner_ops", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/max2175.c", i32 1177, i32 43}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/media/i2c/max2175.c", i32 1101, i32 2}
!65 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @max2175_s_frequency.__UNIQUE_ID_ddebug314, !64, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/max2175.c", i32 1118, i32 2}
!69 = !{ptr @max2175_s_frequency.__UNIQUE_ID_ddebug319, !68, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/max2175.c", i32 717, i32 2}
!72 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @max2175_tune_rf_freq.__UNIQUE_ID_ddebug303, !71, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/i2c/max2175.c", i32 700, i32 2}
!76 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @max2175_set_rf_freq.__UNIQUE_ID_ddebug302, !75, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/i2c/max2175.c", i32 323, i32 3}
!80 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @max2175_read._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @max2175_read._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/i2c/max2175.c", i32 653, i32 2}
!85 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @max2175_set_nco_freq.__UNIQUE_ID_ddebug300, !84, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/i2c/max2175.c", i32 386, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @max2175_poll_csm_ready._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @max2175_poll_csm_ready._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/max2175.c", i32 359, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @max2175_write_bits._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @max2175_write_bits._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/i2c/max2175.c", i32 336, i32 3}
!99 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @max2175_write._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @max2175_write._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/max2175.c", i32 670, i32 2}
!104 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @max2175_set_rf_freq_non_am_bands.__UNIQUE_ID_ddebug301, !103, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/max2175.c", i32 602, i32 2}
!108 = !{ptr @.str.45, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @max2175_set_lo_freq.__UNIQUE_ID_ddebug299, !107, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/max2175.c", i32 538, i32 2}
!112 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @max2175_csm_action.__UNIQUE_ID_ddebug298, !111, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/max2175.c", i32 515, i32 2}
!116 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @max2175_set_csm_mode.__UNIQUE_ID_ddebug297, !115, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/max2175.c", i32 1084, i32 2}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @max2175_set_freq_and_mode.__UNIQUE_ID_ddebug313, !119, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!122 = !{ptr @.str.52, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/max2175.c", i32 810, i32 4}
!124 = !{ptr @.str.53, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @max2175_rx_mode_from_freq.__UNIQUE_ID_ddebug307, !123, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!126 = !{ptr @.str.54, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/max2175.c", i32 773, i32 2}
!128 = !{ptr @.str.55, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @max2175_set_rx_mode.__UNIQUE_ID_ddebug305, !127, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/max2175.c", i32 780, i32 3}
!132 = !{ptr @max2175_set_rx_mode.__UNIQUE_ID_ddebug306, !131, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!133 = !{ptr @fmeu1p2_map, !134, !"fmeu1p2_map", i1 false, i1 false}
!134 = !{!"../drivers/media/i2c/max2175.c", i32 124, i32 37}
!135 = !{ptr @.str.57, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/max2175.c", i32 433, i32 2}
!137 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @max2175_set_filter_coeffs.__UNIQUE_ID_ddebug293, !136, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!139 = !{ptr @ch_coeff_fmeu, !140, !"ch_coeff_fmeu", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/max2175.c", i32 180, i32 18}
!141 = !{ptr @eq_coeff_fmeu1_ra02_m6db, !142, !"eq_coeff_fmeu1_ra02_m6db", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/max2175.c", i32 186, i32 18}
!143 = !{ptr @dab12_map, !144, !"dab12_map", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/max2175.c", i32 107, i32 37}
!145 = !{ptr @ch_coeff_dab1, !146, !"ch_coeff_dab1", i1 false, i1 false}
!146 = !{!"../drivers/media/i2c/max2175.c", i32 174, i32 18}
!147 = !{ptr @fmna1p0_map, !148, !"fmna1p0_map", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/max2175.c", i32 141, i32 37}
!149 = !{ptr @fmna2p0_map, !150, !"fmna2p0_map", i1 false, i1 false}
!150 = !{!"../drivers/media/i2c/max2175.c", i32 158, i32 37}
!151 = !{ptr @ch_coeff_fmna, !152, !"ch_coeff_fmna", i1 false, i1 false}
!152 = !{!"../drivers/media/i2c/max2175.c", i32 192, i32 18}
!153 = !{ptr @eq_coeff_fmna1_ra02_m6db, !154, !"eq_coeff_fmna1_ra02_m6db", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/max2175.c", i32 198, i32 18}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/max2175.c", i32 496, i32 3}
!157 = !{ptr @.str.60, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @max2175_set_bbfilter.__UNIQUE_ID_ddebug294, !156, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/i2c/max2175.c", i32 499, i32 3}
!161 = !{ptr @max2175_set_bbfilter.__UNIQUE_ID_ddebug295, !160, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!162 = !{ptr @.str.62, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/max2175.c", i32 502, i32 3}
!164 = !{ptr @max2175_set_bbfilter.__UNIQUE_ID_ddebug296, !163, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!165 = !{ptr @.str.63, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/media/i2c/max2175.c", i32 725, i32 2}
!167 = !{ptr @.str.64, !166, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @max2175_set_hsls.__UNIQUE_ID_ddebug304, !166, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!169 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/media/i2c/max2175.c", i32 424, i32 2}
!171 = !{ptr @.str.66, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @max2175_i2s_enable.__UNIQUE_ID_ddebug292, !170, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!173 = !{ptr @.str.67, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.68, !170, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.69, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/max2175.c", i32 1159, i32 20}
!177 = !{ptr @max2175_ctrl_ops, !178, !"max2175_ctrl_ops", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/max2175.c", i32 1189, i32 35}
!179 = !{ptr @.str.70, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/i2c/max2175.c", i32 1023, i32 2}
!181 = !{ptr @.str.71, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @max2175_s_ctrl.__UNIQUE_ID_ddebug312, !180, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/max2175.c", i32 1008, i32 2}
!185 = !{ptr @.str.73, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @max2175_s_ctrl_rx_mode.__UNIQUE_ID_ddebug311, !184, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!187 = !{ptr @.str.74, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/i2c/max2175.c", i32 1201, i32 10}
!189 = !{ptr @max2175_i2s_en, !190, !"max2175_i2s_en", i1 false, i1 false}
!190 = !{!"../drivers/media/i2c/max2175.c", i32 1198, i32 38}
!191 = !{ptr @.str.75, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/i2c/max2175.c", i32 1217, i32 10}
!193 = !{ptr @max2175_hsls, !194, !"max2175_hsls", i1 false, i1 false}
!194 = !{!"../drivers/media/i2c/max2175.c", i32 1214, i32 38}
!195 = !{ptr @.str.76, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/i2c/max2175.c", i32 1243, i32 10}
!197 = !{ptr @max2175_eu_rx_mode, !198, !"max2175_eu_rx_mode", i1 false, i1 false}
!198 = !{!"../drivers/media/i2c/max2175.c", i32 1240, i32 38}
!199 = !{ptr @.str.77, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/i2c/max2175.c", i32 1231, i32 24}
!201 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/max2175.c", i32 1232, i32 22}
!203 = !{ptr @max2175_ctrl_eu_rx_modes, !204, !"max2175_ctrl_eu_rx_modes", i1 false, i1 false}
!204 = !{!"../drivers/media/i2c/max2175.c", i32 1230, i32 27}
!205 = !{ptr @eu_rx_modes, !206, !"eu_rx_modes", i1 false, i1 false}
!206 = !{!"../drivers/media/i2c/max2175.c", i32 46, i32 36}
!207 = !{ptr @eu_bands_rf, !208, !"eu_bands_rf", i1 false, i1 false}
!208 = !{!"../drivers/media/i2c/max2175.c", i32 218, i32 41}
!209 = !{ptr @max2175_na_rx_mode, !210, !"max2175_na_rx_mode", i1 false, i1 false}
!210 = !{!"../drivers/media/i2c/max2175.c", i32 1250, i32 38}
!211 = !{ptr @.str.79, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/i2c/max2175.c", i32 1236, i32 24}
!213 = !{ptr @.str.80, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/i2c/max2175.c", i32 1237, i32 24}
!215 = !{ptr @max2175_ctrl_na_rx_modes, !216, !"max2175_ctrl_na_rx_modes", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/max2175.c", i32 1235, i32 27}
!217 = !{ptr @na_rx_modes, !218, !"na_rx_modes", i1 false, i1 false}
!218 = !{!"../drivers/media/i2c/max2175.c", i32 52, i32 36}
!219 = !{ptr @na_bands_rf, !220, !"na_bands_rf", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/max2175.c", i32 227, i32 41}
!221 = !{ptr @.str.81, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/i2c/max2175.c", i32 959, i32 2}
!223 = !{ptr @.str.82, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @max2175_core_init.__UNIQUE_ID_ddebug309, !222, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!225 = !{ptr @.str.83, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/media/i2c/max2175.c", i32 998, i32 2}
!227 = !{ptr @max2175_core_init.__UNIQUE_ID_ddebug310, !226, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!228 = !{ptr @full_fm_eu_1p0, !229, !"full_fm_eu_1p0", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/max2175.c", i32 62, i32 17}
!230 = !{ptr @full_fm_na_1p0, !231, !"full_fm_na_1p0", i1 false, i1 false}
!231 = !{!"../drivers/media/i2c/max2175.c", i32 84, i32 17}
!232 = !{ptr @adc_presets, !233, !"adc_presets", i1 false, i1 false}
!233 = !{!"../drivers/media/i2c/max2175.c", i32 204, i32 17}
!234 = !{ptr @.str.84, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/i2c/max2175.c", i32 848, i32 3}
!236 = !{ptr @.str.85, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @max2175_init_power_manager._entry, !235, !"_entry", i1 false, i1 false}
!238 = !{ptr @max2175_init_power_manager._entry_ptr, !235, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.86, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/i2c/max2175.c", i32 867, i32 3}
!241 = !{ptr @.str.87, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @max2175_recalibrate_adc._entry, !240, !"_entry", i1 false, i1 false}
!243 = !{ptr @max2175_recalibrate_adc._entry_ptr, !240, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.88, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/i2c/max2175.c", i32 884, i32 2}
!246 = !{ptr @.str.89, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @max2175_read_rom.__UNIQUE_ID_ddebug308, !245, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!248 = !{ptr @max2175_of_ids, !249, !"max2175_of_ids", i1 false, i1 false}
!249 = !{!"../drivers/media/i2c/max2175.c", i32 1423, i32 34}
!250 = !{ptr @max2175_id, !251, !"max2175_id", i1 false, i1 false}
!251 = !{!"../drivers/media/i2c/max2175.c", i32 1417, i32 35}
!252 = !{i32 1, !"wchar_size", i32 2}
!253 = !{i32 1, !"min_enum_size", i32 4}
!254 = !{i32 8, !"branch-target-enforcement", i32 0}
!255 = !{i32 8, !"sign-return-address", i32 0}
!256 = !{i32 8, !"sign-return-address-all", i32 0}
!257 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!258 = !{i32 7, !"uwtable", i32 1}
!259 = !{i32 7, !"frame-pointer", i32 2}
!260 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!261 = !{!"auto-init"}
!262 = !{i8 0, i8 2}
!263 = !{i64 2148758440, i64 2148758445, i64 2148758458, i64 2148758502, i64 2148758536, i64 2148758557}
!264 = !{!"branch_weights", i32 2000, i32 1}
!265 = !{i64 2148667159, i64 2148667439, i64 2148667773, i64 2148668107}
