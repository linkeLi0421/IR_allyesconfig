; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/e4000.c_pt.bc'
source_filename = "../drivers/media/tuners/e4000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.e4000_pll = type { i32, i8, i8 }
%struct.e4000_lna_filter = type { i32, i8 }
%struct.e4000_if_filter = type { i32, i8, i8 }
%struct.e4000_band = type { i32, i8, i8 }
%struct.e4000_if_gain = type { i8, i8 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.e4000_config = type { ptr, i32 }
%struct.e4000_dev = type { ptr, ptr, i32, ptr, %struct.v4l2_subdev, i8, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.91 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.94, %union.anon.95, i32, ptr, i32, %struct.anon.96, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.94 = type { i64 }
%union.anon.95 = type { ptr }
%struct.anon.96 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@__initcall__kmod_e4000__320_740_e4000_driver_init6 = internal global ptr @e4000_driver_init, section ".initcall6.init", align 4
@e4000_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @e4000_probe, ptr @e4000_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @e4000_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_e4000_driver_exit = internal global ptr @e4000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description321 = internal constant [53 x i8] c"e4000.description=Elonics E4000 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [44 x i8] c"e4000.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file323 = internal constant [38 x i8] c"e4000.file=drivers/media/tuners/e4000\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [18 x i8] c"e4000.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"e4000\00", [26 x i8] zeroinitializer }, align 32
@e4000_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"e4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@e4000_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@e4000_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"e4000:634:(&regmap_config)->lock\00", [63 x i8] zeroinitializer }, align 32
@e4000_probe.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"e4000_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/media/tuners/e4000.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@e4000_probe._key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"e4000:659:(&dev->hdl)->_lock\00", [35 x i8] zeroinitializer }, align 32
@e4000_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @e4000_g_volatile_ctrl, ptr null, ptr @e4000_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@e4000_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 684, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@e4000_probe._entry_ptr = internal global ptr @e4000_probe._entry, section ".printk_index", align 4
@bands = internal constant { [2 x %struct.v4l2_frequency_band], [32 x i8] } { [2 x %struct.v4l2_frequency_band] [%struct.v4l2_frequency_band { i32 0, i32 5, i32 0, i32 5120, i32 59000000, i32 1105000000, i32 0, [9 x i32] zeroinitializer }, %struct.v4l2_frequency_band { i32 0, i32 5, i32 1, i32 5120, i32 1249000000, i32 -2086967296, i32 0, [9 x i32] zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@e4000_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr @e4000_subdev_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@e4000_dvb_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Elonics E4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @e4000_dvb_init, ptr @e4000_dvb_sleep, ptr null, ptr null, ptr @e4000_dvb_set_params, ptr null, ptr null, ptr null, ptr null, ptr @e4000_dvb_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@e4000_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 700, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Elonics E4000 successfully identified\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@e4000_probe._entry_ptr.13 = internal global ptr @e4000_probe._entry.10, section ".printk_index", align 4
@e4000_probe.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@e4000_g_volatile_ctrl.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 -128, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e4000_g_volatile_ctrl\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unknown ctrl: id=%d name=%s\0A\00", [35 x i8] zeroinitializer }, align 32
@e4000_pll_lock.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.3, ptr @.str.14, i8 0, i8 124, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"e4000_pll_lock\00", [17 x i8] zeroinitializer }, align 32
@e4000_s_ctrl.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.16, i8 0, i8 -117, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"e4000_s_ctrl\00", [19 x i8] zeroinitializer }, align 32
@e4000_set_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"e4000_set_params\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tuner is sleeping\0A\00", [45 x i8] zeroinitializer }, align 32
@e4000_pll_lut = internal constant { [11 x %struct.e4000_pll], [40 x i8] } { [11 x %struct.e4000_pll] [%struct.e4000_pll { i32 72400000, i8 15, i8 48 }, %struct.e4000_pll { i32 81200000, i8 14, i8 40 }, %struct.e4000_pll { i32 108300000, i8 13, i8 32 }, %struct.e4000_pll { i32 162500000, i8 12, i8 24 }, %struct.e4000_pll { i32 216600000, i8 11, i8 16 }, %struct.e4000_pll { i32 325000000, i8 10, i8 12 }, %struct.e4000_pll { i32 350000000, i8 9, i8 8 }, %struct.e4000_pll { i32 432000000, i8 3, i8 8 }, %struct.e4000_pll { i32 667000000, i8 2, i8 6 }, %struct.e4000_pll { i32 1200000000, i8 1, i8 4 }, %struct.e4000_pll { i32 -1, i8 0, i8 2 }], [40 x i8] zeroinitializer }, align 32
@e4000_set_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.21, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"frequency=%u bandwidth=%u f_vco=%llu F_REF=%u div_n=%u k=%u k_cw=%04x div_out=%u\0A\00", [46 x i8] zeroinitializer }, align 32
@e400_lna_filter_lut = internal constant { [32 x %struct.e4000_lna_filter], [64 x i8] } { [32 x %struct.e4000_lna_filter] [%struct.e4000_lna_filter { i32 370000000, i8 0 }, %struct.e4000_lna_filter { i32 392500000, i8 1 }, %struct.e4000_lna_filter { i32 415000000, i8 2 }, %struct.e4000_lna_filter { i32 437500000, i8 3 }, %struct.e4000_lna_filter { i32 462500000, i8 4 }, %struct.e4000_lna_filter { i32 490000000, i8 5 }, %struct.e4000_lna_filter { i32 522500000, i8 6 }, %struct.e4000_lna_filter { i32 557500000, i8 7 }, %struct.e4000_lna_filter { i32 595000000, i8 8 }, %struct.e4000_lna_filter { i32 642500000, i8 9 }, %struct.e4000_lna_filter { i32 695000000, i8 10 }, %struct.e4000_lna_filter { i32 740000000, i8 11 }, %struct.e4000_lna_filter { i32 800000000, i8 12 }, %struct.e4000_lna_filter { i32 865000000, i8 13 }, %struct.e4000_lna_filter { i32 930000000, i8 14 }, %struct.e4000_lna_filter { i32 1000000000, i8 15 }, %struct.e4000_lna_filter { i32 1310000000, i8 0 }, %struct.e4000_lna_filter { i32 1340000000, i8 1 }, %struct.e4000_lna_filter { i32 1385000000, i8 2 }, %struct.e4000_lna_filter { i32 1427500000, i8 3 }, %struct.e4000_lna_filter { i32 1452500000, i8 4 }, %struct.e4000_lna_filter { i32 1475000000, i8 5 }, %struct.e4000_lna_filter { i32 1510000000, i8 6 }, %struct.e4000_lna_filter { i32 1545000000, i8 7 }, %struct.e4000_lna_filter { i32 1575000000, i8 8 }, %struct.e4000_lna_filter { i32 1615000000, i8 9 }, %struct.e4000_lna_filter { i32 1650000000, i8 10 }, %struct.e4000_lna_filter { i32 1670000000, i8 11 }, %struct.e4000_lna_filter { i32 1690000000, i8 12 }, %struct.e4000_lna_filter { i32 1710000000, i8 13 }, %struct.e4000_lna_filter { i32 1735000000, i8 14 }, %struct.e4000_lna_filter { i32 -1, i8 15 }], [64 x i8] zeroinitializer }, align 32
@e4000_if_filter_lut = internal constant { [33 x %struct.e4000_if_filter], [88 x i8] } { [33 x %struct.e4000_if_filter] [%struct.e4000_if_filter { i32 4300000, i8 -3, i8 31 }, %struct.e4000_if_filter { i32 4400000, i8 -3, i8 30 }, %struct.e4000_if_filter { i32 4480000, i8 -4, i8 29 }, %struct.e4000_if_filter { i32 4560000, i8 -4, i8 28 }, %struct.e4000_if_filter { i32 4600000, i8 -4, i8 27 }, %struct.e4000_if_filter { i32 4800000, i8 -4, i8 26 }, %struct.e4000_if_filter { i32 4900000, i8 -4, i8 25 }, %struct.e4000_if_filter { i32 5000000, i8 -4, i8 24 }, %struct.e4000_if_filter { i32 5100000, i8 -4, i8 23 }, %struct.e4000_if_filter { i32 5200000, i8 -4, i8 22 }, %struct.e4000_if_filter { i32 5400000, i8 -4, i8 21 }, %struct.e4000_if_filter { i32 5500000, i8 -4, i8 20 }, %struct.e4000_if_filter { i32 5600000, i8 -4, i8 19 }, %struct.e4000_if_filter { i32 5800000, i8 -5, i8 18 }, %struct.e4000_if_filter { i32 5900000, i8 -5, i8 17 }, %struct.e4000_if_filter { i32 6000000, i8 -5, i8 16 }, %struct.e4000_if_filter { i32 6200000, i8 -5, i8 15 }, %struct.e4000_if_filter { i32 6400000, i8 -6, i8 14 }, %struct.e4000_if_filter { i32 6600000, i8 -6, i8 13 }, %struct.e4000_if_filter { i32 6800000, i8 -7, i8 12 }, %struct.e4000_if_filter { i32 7200000, i8 -7, i8 11 }, %struct.e4000_if_filter { i32 7400000, i8 -7, i8 10 }, %struct.e4000_if_filter { i32 7600000, i8 -8, i8 9 }, %struct.e4000_if_filter { i32 7800000, i8 -8, i8 8 }, %struct.e4000_if_filter { i32 8200000, i8 -8, i8 7 }, %struct.e4000_if_filter { i32 8600000, i8 -9, i8 6 }, %struct.e4000_if_filter { i32 8800000, i8 -9, i8 5 }, %struct.e4000_if_filter { i32 9200000, i8 -9, i8 4 }, %struct.e4000_if_filter { i32 9600000, i8 -10, i8 3 }, %struct.e4000_if_filter { i32 10000000, i8 -10, i8 2 }, %struct.e4000_if_filter { i32 10600000, i8 -11, i8 1 }, %struct.e4000_if_filter { i32 11000000, i8 -11, i8 0 }, %struct.e4000_if_filter { i32 -1, i8 0, i8 32 }], [88 x i8] zeroinitializer }, align 32
@e4000_band_lut = internal constant { [4 x %struct.e4000_band], [32 x i8] } { [4 x %struct.e4000_band] [%struct.e4000_band { i32 140000000, i8 1, i8 3 }, %struct.e4000_band { i32 350000000, i8 3, i8 3 }, %struct.e4000_band { i32 1000000000, i8 5, i8 3 }, %struct.e4000_band { i32 -1, i8 7, i8 0 }], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\00~$\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\00\7F\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01\00", [30 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"~\00", [30 x i8] zeroinitializer }, align 32
@e4000_set_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.14, i8 0, i8 63, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e4000_set_lna_gain.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"e4000_set_lna_gain\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"lna auto=%d->%d val=%d->%d\0A\00", [36 x i8] zeroinitializer }, align 32
@e4000_set_lna_gain.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.14, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e4000_set_mixer_gain.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"e4000_set_mixer_gain\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mixer auto=%d->%d val=%d->%d\0A\00", [34 x i8] zeroinitializer }, align 32
@e4000_set_mixer_gain.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.14, i8 0, i8 109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e4000_set_if_gain.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 113, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"e4000_set_if_gain\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"if auto=%d->%d val=%d->%d\0A\00", [37 x i8] zeroinitializer }, align 32
@e4000_if_gain_lut = internal constant { [55 x %struct.e4000_if_gain], [50 x i8] } { [55 x %struct.e4000_if_gain] [%struct.e4000_if_gain zeroinitializer, %struct.e4000_if_gain { i8 32, i8 0 }, %struct.e4000_if_gain { i8 64, i8 0 }, %struct.e4000_if_gain { i8 2, i8 0 }, %struct.e4000_if_gain { i8 34, i8 0 }, %struct.e4000_if_gain { i8 66, i8 0 }, %struct.e4000_if_gain { i8 4, i8 0 }, %struct.e4000_if_gain { i8 36, i8 0 }, %struct.e4000_if_gain { i8 68, i8 0 }, %struct.e4000_if_gain { i8 1, i8 0 }, %struct.e4000_if_gain { i8 33, i8 0 }, %struct.e4000_if_gain { i8 65, i8 0 }, %struct.e4000_if_gain { i8 3, i8 0 }, %struct.e4000_if_gain { i8 35, i8 0 }, %struct.e4000_if_gain { i8 67, i8 0 }, %struct.e4000_if_gain { i8 5, i8 0 }, %struct.e4000_if_gain { i8 37, i8 0 }, %struct.e4000_if_gain { i8 69, i8 0 }, %struct.e4000_if_gain { i8 7, i8 0 }, %struct.e4000_if_gain { i8 39, i8 0 }, %struct.e4000_if_gain { i8 71, i8 0 }, %struct.e4000_if_gain { i8 15, i8 0 }, %struct.e4000_if_gain { i8 47, i8 0 }, %struct.e4000_if_gain { i8 79, i8 0 }, %struct.e4000_if_gain { i8 23, i8 0 }, %struct.e4000_if_gain { i8 55, i8 0 }, %struct.e4000_if_gain { i8 87, i8 0 }, %struct.e4000_if_gain { i8 31, i8 0 }, %struct.e4000_if_gain { i8 63, i8 0 }, %struct.e4000_if_gain { i8 95, i8 0 }, %struct.e4000_if_gain { i8 31, i8 1 }, %struct.e4000_if_gain { i8 63, i8 1 }, %struct.e4000_if_gain { i8 95, i8 1 }, %struct.e4000_if_gain { i8 31, i8 2 }, %struct.e4000_if_gain { i8 63, i8 2 }, %struct.e4000_if_gain { i8 95, i8 2 }, %struct.e4000_if_gain { i8 31, i8 3 }, %struct.e4000_if_gain { i8 63, i8 3 }, %struct.e4000_if_gain { i8 95, i8 3 }, %struct.e4000_if_gain { i8 31, i8 4 }, %struct.e4000_if_gain { i8 63, i8 4 }, %struct.e4000_if_gain { i8 95, i8 4 }, %struct.e4000_if_gain { i8 31, i8 12 }, %struct.e4000_if_gain { i8 63, i8 12 }, %struct.e4000_if_gain { i8 95, i8 12 }, %struct.e4000_if_gain { i8 31, i8 20 }, %struct.e4000_if_gain { i8 63, i8 20 }, %struct.e4000_if_gain { i8 95, i8 20 }, %struct.e4000_if_gain { i8 31, i8 28 }, %struct.e4000_if_gain { i8 63, i8 28 }, %struct.e4000_if_gain { i8 95, i8 28 }, %struct.e4000_if_gain { i8 31, i8 36 }, %struct.e4000_if_gain { i8 63, i8 36 }, %struct.e4000_if_gain { i8 95, i8 36 }, %struct.e4000_if_gain { i8 127, i8 36 }], [50 x i8] zeroinitializer }, align 32
@e4000_set_if_gain.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.14, i8 0, i8 119, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e4000_subdev_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr @e4000_standby, ptr null, ptr @e4000_s_frequency, ptr @e4000_g_frequency, ptr @e4000_enum_freq_bands, ptr @e4000_g_tuner, ptr @e4000_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@e4000_sleep.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"e4000_sleep\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@e4000_sleep.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.32, ptr @.str.3, ptr @.str.14, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e4000_s_frequency.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.35, i8 0, i8 84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"e4000_s_frequency\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tuner=%d type=%d frequency=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@e4000_g_frequency.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.36, ptr @.str.3, ptr @.str.37, i8 0, i8 81, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"e4000_g_frequency\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tuner=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@e4000_enum_freq_bands.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.39, i8 0, i8 87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"e4000_enum_freq_bands\00", [42 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner=%d type=%d index=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@e4000_g_tuner.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"e4000_g_tuner\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"index=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Elonics E4000\00", [18 x i8] zeroinitializer }, align 32
@e4000_s_tuner.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.3, ptr @.str.41, i8 0, i8 78, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"e4000_s_tuner\00", [18 x i8] zeroinitializer }, align 32
@e4000_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.33, i8 0, i8 3, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"e4000_init\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\FE\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" \01\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\7F\07\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\01\01\00", [29 x i8] zeroinitializer }, align 32
@e4000_init.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.3, ptr @.str.14, i8 0, i8 18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@e4000_remove.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.33, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"e4000_remove\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 10619147, i64 10619148, i64 10619177, i64 10619178, i64 10619187, i64 10619188, i64 10619197, i64 10619198]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"e4000_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 730, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 732, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"e4000_id_table\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 724, i32 35 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 620, i32 36 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 634, i32 16 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 645, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 659, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [15 x i8] c"e4000_ctrl_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 563, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 684, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"bands\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 261, i32 41 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"e4000_subdev_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 370, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant [20 x i8] c"e4000_dvb_tuner_ops\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 598, i32 35 }
@___asan_gen_.108 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 700, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 705, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 514, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 496, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 555, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 106, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [14 x i8] c"e4000_pll_lut\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 46, i32 31 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 146, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [20 x i8] c"e400_lna_filter_lut\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 66, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c"e4000_if_filter_lut\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 120, i32 37 }
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"e4000_band_lut\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 107, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 212, i32 47 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 214, i32 47 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 216, i32 47 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 218, i32 47 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 381, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 417, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 450, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"e4000_if_gain_lut\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [37 x i8] c"../drivers/media/tuners/e4000_priv.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 161, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"e4000_subdev_tuner_ops\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 361, i32 43 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 83, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 335, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 324, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 349, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 300, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 302, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 315, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 15, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 32, i32 45 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 44, i32 45 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 48, i32 45 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 57, i32 45 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [32 x i8] c"../drivers/media/tuners/e4000.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 714, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description321, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @__exitcall_e4000_driver_exit, ptr @__initcall__kmod_e4000__320_740_e4000_driver_init6, ptr @e4000_driver_exit, ptr @e4000_probe._entry, ptr @e4000_probe._entry.10, ptr @e4000_probe._entry_ptr, ptr @e4000_probe._entry_ptr.13, ptr @e4000_driver, ptr @.str, ptr @e4000_id_table, ptr @e4000_probe.regmap_config, ptr @e4000_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @e4000_probe._key.5, ptr @.str.6, ptr @e4000_ctrl_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bands, ptr @e4000_subdev_ops, ptr @e4000_dvb_tuner_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @e4000_pll_lut, ptr @.str.21, ptr @e400_lna_filter_lut, ptr @e4000_if_filter_lut, ptr @e4000_band_lut, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @e4000_if_gain_lut, ptr @e4000_subdev_tuner_ops, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [64 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_probe._key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bands to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_dvb_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_pll_lut to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e400_lna_filter_lut to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_if_filter_lut to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_band_lut to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_if_gain_lut to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @e4000_subdev_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @e4000_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @e4000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @e4000_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #8
  %4 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uitmp, align 4, !annotation !160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 444) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body77_crit_edge, label %if.end

entry.do.body77_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end:                                           ; preds = %entry
  %clock = getelementptr inbounds %struct.e4000_config, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %clock to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clock, align 4
  %clk = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %clk, align 8
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call7.i.i, align 8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %fe5 = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %fe5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %fe5, align 4
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @e4000_probe.regmap_config, ptr noundef nonnull @e4000_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %call6 to i32
  br label %err_kfree

if.end12:                                         ; preds = %if.end
  %call14 = call i32 @regmap_read(ptr noundef %call6, i32 noundef 2, ptr noundef nonnull %uitmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body, label %if.end12.err_kfree_crit_edge

if.end12.err_kfree_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

do.body:                                          ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_probe.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_probe, %if.then23)) #8
          to label %do.end [label %if.then23], !srcloc !161

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %uitmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_probe.__UNIQUE_ID_ddebug317, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then23, %do.body
  %17 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %18)
  %cmp.not = icmp eq i32 %18, 64
  br i1 %cmp.not, label %if.end27, label %do.end.err_kfree_crit_edge

do.end.err_kfree_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end27:                                         ; preds = %do.end
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call29 = call i32 @regmap_write(ptr noundef %20, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end27.err_kfree_crit_edge

if.end27.err_kfree_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_kfree

if.end32:                                         ; preds = %if.end27
  %hdl = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 8
  %call34 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 9, ptr noundef nonnull @e4000_probe._key.5, ptr noundef nonnull @.str.6) #8
  %call36 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %bandwidth_auto = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 9
  %21 = ptrtoint ptr %bandwidth_auto to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call36, ptr %bandwidth_auto, align 8
  %call38 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619148, i64 noundef 4300000, i64 noundef 11000000, i64 noundef 100000, i64 noundef 4300000) #8
  %bandwidth = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 10
  %22 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call38, ptr %bandwidth, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %bandwidth_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call41 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619177, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %lna_gain_auto = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %lna_gain_auto to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call41, ptr %lna_gain_auto, align 8
  %call43 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619178, i64 noundef 0, i64 noundef 15, i64 noundef 1, i64 noundef 10) #8
  %lna_gain = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 12
  %24 = ptrtoint ptr %lna_gain to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call43, ptr %lna_gain, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %lna_gain_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call46 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619187, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %mixer_gain_auto = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 13
  %25 = ptrtoint ptr %mixer_gain_auto to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call46, ptr %mixer_gain_auto, align 8
  %call48 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619188, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %mixer_gain = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 14
  %26 = ptrtoint ptr %mixer_gain to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call48, ptr %mixer_gain, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %mixer_gain_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call51 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619197, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #8
  %if_gain_auto = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 15
  %27 = ptrtoint ptr %if_gain_auto to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call51, ptr %if_gain_auto, align 8
  %call53 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619198, i64 noundef 0, i64 noundef 54, i64 noundef 1, i64 noundef 0) #8
  %if_gain = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 16
  %28 = ptrtoint ptr %if_gain to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call53, ptr %if_gain, align 4
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %if_gain_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #8
  %call56 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @e4000_ctrl_ops, i32 noundef 10619227, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 0) #8
  %pll_lock = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 17
  %29 = ptrtoint ptr %pll_lock to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call56, ptr %pll_lock, align 8
  %error = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 8, i32 9
  %30 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool58.not = icmp eq i32 %31, 0
  br i1 %tobool58.not, label %if.end67, label %if.then59

if.then59:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #12
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  br label %err_kfree

if.end67:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %sd = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 4
  %ctrl_handler = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 4, i32 8
  %32 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %hdl, ptr %ctrl_handler, align 8
  %f_frequency = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %f_frequency to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 59000000, ptr %f_frequency, align 8
  %34 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %bandwidth, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %35, i32 0, i32 22
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %f_bandwidth = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %f_bandwidth, align 4
  call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @e4000_subdev_ops) #8
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %40 = call ptr @memcpy(ptr %tuner_ops, ptr @e4000_dvb_tuner_ops, i32 220)
  %dev_priv.i = getelementptr inbounds %struct.e4000_dev, ptr %call7.i.i, i32 0, i32 4, i32 11
  %41 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %client, ptr %dev_priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %sd, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11) #12
  br label %cleanup

err_kfree:                                        ; preds = %if.then59, %if.end27.err_kfree_crit_edge, %do.end.err_kfree_crit_edge, %if.end12.err_kfree_crit_edge, %if.then9
  %ret.0 = phi i32 [ %14, %if.then9 ], [ %call14, %if.end12.err_kfree_crit_edge ], [ %call29, %if.end27.err_kfree_crit_edge ], [ %31, %if.then59 ], [ -19, %do.end.err_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %do.body77

do.body77:                                        ; preds = %err_kfree, %entry.do.body77_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %entry.do.body77_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_probe.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_probe, %if.then89)) #8
          to label %cleanup [label %if.then89], !srcloc !161

if.then89:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_probe.__UNIQUE_ID_ddebug318, ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %ret.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then89, %do.body77, %if.end67
  %retval.0 = phi i32 [ 0, %if.end67 ], [ %ret.1, %if.then89 ], [ %ret.1, %do.body77 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_remove.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_remove, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_remove.__UNIQUE_ID_ddebug319, ptr noundef %dev5, ptr noundef nonnull @.str.33) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -16
  %hdl = getelementptr i8, ptr %1, i32 208
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #8
  tail call void @kfree(ptr noundef %add.ptr) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  %uitmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -224
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %active = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10619227, i32 %7)
  %cond = icmp eq i32 %7, 10619227
  br i1 %cond, label %sw.bb, label %do.body

sw.bb:                                            ; preds = %if.end
  %fe = getelementptr i8, ptr %1, i32 -212
  %8 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fe, align 4
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tuner_priv.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp.i) #8
  %14 = ptrtoint ptr %uitmp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %uitmp.i, align 4, !annotation !160
  %regmap.i = getelementptr inbounds %struct.e4000_dev, ptr %11, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 7, ptr noundef nonnull %uitmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %uitmp.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %uitmp.i, align 4
  %and.i = and i32 %18, 1
  %pll_lock.i = getelementptr inbounds %struct.e4000_dev, ptr %11, i32 0, i32 17
  %19 = ptrtoint ptr %pll_lock.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pll_lock.i, align 4
  %val.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %val.i, align 4
  br label %e4000_pll_lock.exit

do.body.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_pll_lock.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_g_volatile_ctrl, %if.then6.i)) #8
          to label %e4000_pll_lock.exit [label %if.then6.i], !srcloc !161

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev7.i = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_pll_lock.__UNIQUE_ID_ddebug314, ptr noundef %dev7.i, ptr noundef nonnull @.str.14, i32 noundef %call.i) #8
  br label %e4000_pll_lock.exit

e4000_pll_lock.exit:                              ; preds = %if.then6.i, %do.body.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp.i) #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_g_volatile_ctrl.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_g_volatile_ctrl, %if.then7)) #8
          to label %cleanup [label %if.then7], !srcloc !161

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %24 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_g_volatile_ctrl.__UNIQUE_ID_ddebug315, ptr noundef %dev8, ptr noundef nonnull @.str.16, i32 noundef %23, ptr noundef %25) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %do.body, %e4000_pll_lock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %e4000_pll_lock.exit ], [ -22, %if.then7 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -224
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 4
  %active = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %active, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %do.body [
    i32 10619147, label %if.end.sw.bb_crit_edge
    i32 10619148, label %if.end.sw.bb_crit_edge32
    i32 10619177, label %if.end.sw.bb2_crit_edge
    i32 10619178, label %if.end.sw.bb2_crit_edge33
    i32 10619187, label %if.end.sw.bb4_crit_edge
    i32 10619188, label %if.end.sw.bb4_crit_edge34
    i32 10619197, label %if.end.sw.bb7_crit_edge
    i32 10619198, label %if.end.sw.bb7_crit_edge35
  ]

if.end.sw.bb7_crit_edge35:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end.sw.bb7_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7

if.end.sw.bb4_crit_edge34:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb2_crit_edge33:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

if.end.sw.bb2_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

if.end.sw.bb_crit_edge32:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge32
  %bandwidth = getelementptr i8, ptr %1, i32 188
  %9 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bandwidth, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %10, i32 0, i32 22
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %f_bandwidth = getelementptr i8, ptr %1, i32 -4
  %13 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %f_bandwidth, align 4
  %call = tail call fastcc i32 @e4000_set_params(ptr noundef %add.ptr)
  br label %cleanup

sw.bb2:                                           ; preds = %if.end.sw.bb2_crit_edge, %if.end.sw.bb2_crit_edge33
  %fe = getelementptr i8, ptr %1, i32 -212
  %14 = ptrtoint ptr %fe to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fe, align 4
  %call3 = tail call fastcc i32 @e4000_set_lna_gain(ptr noundef %15)
  br label %cleanup

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge34
  %fe5 = getelementptr i8, ptr %1, i32 -212
  %16 = ptrtoint ptr %fe5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fe5, align 4
  %call6 = tail call fastcc i32 @e4000_set_mixer_gain(ptr noundef %17)
  br label %cleanup

sw.bb7:                                           ; preds = %if.end.sw.bb7_crit_edge, %if.end.sw.bb7_crit_edge35
  %fe8 = getelementptr i8, ptr %1, i32 -212
  %18 = ptrtoint ptr %fe8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fe8, align 4
  %call9 = tail call fastcc i32 @e4000_set_if_gain(ptr noundef %19)
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_s_ctrl.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_s_ctrl, %if.then15)) #8
          to label %cleanup [label %if.then15], !srcloc !161

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %22 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %name, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_s_ctrl.__UNIQUE_ID_ddebug316, ptr noundef %dev16, ptr noundef nonnull @.str.16, i32 noundef %21, ptr noundef %23) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body, %sw.bb7, %sw.bb4, %sw.bb2, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call9, %sw.bb7 ], [ %call6, %sw.bb4 ], [ %call3, %sw.bb2 ], [ %call, %sw.bb ], [ -22, %if.then15 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e4000_set_params(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  %i_data = alloca [4 x i8], align 4
  %q_data = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #8
  %2 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 3
  %5 = getelementptr inbounds [5 x i8], ptr %buf, i32 0, i32 4
  %6 = call ptr @memset(ptr %buf, i32 255, i32 5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i_data) #8
  %7 = getelementptr inbounds [4 x i8], ptr %i_data, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %i_data, i32 0, i32 3
  %9 = ptrtoint ptr %i_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %i_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q_data) #8
  %10 = getelementptr inbounds [4 x i8], ptr %q_data, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i8], ptr %q_data, i32 0, i32 3
  %active = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 5
  %12 = ptrtoint ptr %q_data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %q_data, align 4
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %active, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_params, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !161

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_params.__UNIQUE_ID_ddebug296, ptr noundef %dev6, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %regmap = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 26, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.cond.preheader, label %if.end7.do.body245_crit_edge

if.end7.do.body245_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

for.cond.preheader:                               ; preds = %if.end7
  %f_frequency = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 6
  %17 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72400000, i32 %18)
  %cmp12.not = icmp ugt i32 %18, 72400000
  br i1 %cmp12.not, label %for.inc, label %for.cond.preheader.if.end17_crit_edge

for.cond.preheader.if.end17_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 81200000, i32 %18)
  %cmp12.not.1 = icmp ugt i32 %18, 81200000
  br i1 %cmp12.not.1, label %for.inc.1, label %for.inc.if.end17_crit_edge

for.inc.if.end17_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 108300000, i32 %18)
  %cmp12.not.2 = icmp ugt i32 %18, 108300000
  br i1 %cmp12.not.2, label %for.inc.2, label %for.inc.1.if.end17_crit_edge

for.inc.1.if.end17_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 162500000, i32 %18)
  %cmp12.not.3 = icmp ugt i32 %18, 162500000
  br i1 %cmp12.not.3, label %for.inc.3, label %for.inc.2.if.end17_crit_edge

for.inc.2.if.end17_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 216600000, i32 %18)
  %cmp12.not.4 = icmp ugt i32 %18, 216600000
  br i1 %cmp12.not.4, label %for.inc.4, label %for.inc.3.if.end17_crit_edge

for.inc.3.if.end17_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 325000000, i32 %18)
  %cmp12.not.5 = icmp ugt i32 %18, 325000000
  br i1 %cmp12.not.5, label %for.inc.5, label %for.inc.4.if.end17_crit_edge

for.inc.4.if.end17_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000000, i32 %18)
  %cmp12.not.6 = icmp ugt i32 %18, 350000000
  br i1 %cmp12.not.6, label %for.inc.6, label %for.inc.5.if.end17_crit_edge

for.inc.5.if.end17_crit_edge:                     ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 432000000, i32 %18)
  %cmp12.not.7 = icmp ugt i32 %18, 432000000
  br i1 %cmp12.not.7, label %for.inc.7, label %for.inc.6.if.end17_crit_edge

for.inc.6.if.end17_crit_edge:                     ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 667000000, i32 %18)
  %cmp12.not.8 = icmp ugt i32 %18, 667000000
  br i1 %cmp12.not.8, label %for.inc.8, label %for.inc.7.if.end17_crit_edge

for.inc.7.if.end17_crit_edge:                     ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000000, i32 %18)
  %cmp12.not.9 = icmp ugt i32 %18, 1200000000
  %spec.select = select i1 %cmp12.not.9, i32 10, i32 9
  br label %if.end17

if.end17:                                         ; preds = %for.inc.8, %for.inc.7.if.end17_crit_edge, %for.inc.6.if.end17_crit_edge, %for.inc.5.if.end17_crit_edge, %for.inc.4.if.end17_crit_edge, %for.inc.3.if.end17_crit_edge, %for.inc.2.if.end17_crit_edge, %for.inc.1.if.end17_crit_edge, %for.inc.if.end17_crit_edge, %for.cond.preheader.if.end17_crit_edge
  %i.0416.lcssa = phi i32 [ 0, %for.cond.preheader.if.end17_crit_edge ], [ 1, %for.inc.if.end17_crit_edge ], [ 2, %for.inc.1.if.end17_crit_edge ], [ 3, %for.inc.2.if.end17_crit_edge ], [ 4, %for.inc.3.if.end17_crit_edge ], [ 5, %for.inc.4.if.end17_crit_edge ], [ 6, %for.inc.5.if.end17_crit_edge ], [ 7, %for.inc.6.if.end17_crit_edge ], [ 8, %for.inc.7.if.end17_crit_edge ], [ %spec.select, %for.inc.8 ]
  %div_out19 = getelementptr [11 x %struct.e4000_pll], ptr @e4000_pll_lut, i32 0, i32 %i.0416.lcssa, i32 2
  %19 = ptrtoint ptr %div_out19 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %div_out19, align 1
  %21 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f_frequency, align 4
  %conv21 = zext i32 %22 to i64
  %conv22 = zext i8 %20 to i64
  %mul = mul nuw nsw i64 %conv21, %conv22
  %clk = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 2
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %clk, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !163

if.then168.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i = trunc i64 %mul to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %.frozen = freeze i32 %24
  %div172.i = udiv i32 %conv169.i.frozen, %.frozen
  %25 = mul i32 %div172.i, %.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %25
  %extract.t382 = trunc i32 %div172.i to i8
  br label %if.else162.i.i

if.else174.i:                                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %mul) #13, !srcloc !164
  %asmresult.i261.i = extractvalue { i64, i64 } %26, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %26, 1
  %shr.i.i = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i to i32
  %extract.t383 = trunc i64 %asmresult1.i.i to i8
  %extract.t386 = trunc i64 %asmresult1.i.i to i32
  br label %if.else162.i.i

if.else162.i.i:                                   ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i8 [ %extract.t382, %if.then168.i ], [ %extract.t383, %if.else174.i ]
  %dividend.addr.0.i.off0384 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t386, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %conv25 = zext i32 %__rem.0.i to i64
  %mul26 = shl nuw nsw i64 %conv25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %__rem.0.i)
  %cmp164.i.i = icmp ult i32 %__rem.0.i, 65536
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !163

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv169.i.i = trunc i64 %mul26 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %24
  %extract.t388 = trunc i32 %div172.i.i to i8
  %27 = lshr i32 %div172.i.i, 8
  %extract.t398 = trunc i32 %27 to i8
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %24, i64 %mul26) #13, !srcloc !164
  %asmresult1.i.i.i = extractvalue { i64, i64 } %28, 1
  %extract.t389 = trunc i64 %asmresult1.i.i.i to i8
  %extract.t394 = trunc i64 %asmresult1.i.i.i to i32
  %extract399 = lshr i64 %asmresult1.i.i.i, 8
  %extract.t400 = trunc i64 %extract399 to i8
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i8 [ %extract.t388, %if.then168.i.i ], [ %extract.t389, %if.else174.i.i ]
  %dividend.addr.0.i.i.off0391 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t394, %if.else174.i.i ]
  %dividend.addr.0.i.i.off8 = phi i8 [ %extract.t398, %if.then168.i.i ], [ %extract.t400, %if.else174.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_params, %if.then42)) #8
          to label %do.end48 [label %if.then42], !srcloc !161

if.then42:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %20 to i32
  %dev43 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %29 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %f_frequency, align 4
  %f_bandwidth = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 7
  %31 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f_bandwidth, align 4
  %33 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_params.__UNIQUE_ID_ddebug297, ptr noundef %dev43, ptr noundef nonnull @.str.21, i32 noundef %30, i32 noundef %32, i64 noundef %mul, i32 noundef %34, i32 noundef %dividend.addr.0.i.off0384, i32 noundef %__rem.0.i, i32 noundef %dividend.addr.0.i.i.off0391, i32 noundef %conv) #8
  br label %do.end48

do.end48:                                         ; preds = %if.then42, %div_u64.exit
  %35 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %dividend.addr.0.i.off0, ptr %buf, align 1
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %dividend.addr.0.i.i.off0, ptr %2, align 1
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %dividend.addr.0.i.i.off8, ptr %3, align 1
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %4, align 1
  %div_out_reg = getelementptr [11 x %struct.e4000_pll], ptr @e4000_pll_lut, i32 0, i32 %i.0416.lcssa, i32 1
  %39 = ptrtoint ptr %div_out_reg to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %div_out_reg, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %5, align 1
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call61 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 9, ptr noundef nonnull %buf, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %for.cond65.preheader, label %do.end48.do.body245_crit_edge

do.end48.do.body245_crit_edge:                    ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

for.cond65.preheader:                             ; preds = %do.end48
  %44 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %f_frequency, align 4
  br label %for.body68

for.body68:                                       ; preds = %for.inc76.for.body68_crit_edge, %for.cond65.preheader
  %i.1417 = phi i32 [ 0, %for.cond65.preheader ], [ %inc77, %for.inc76.for.body68_crit_edge ]
  %arrayidx70 = getelementptr [32 x %struct.e4000_lna_filter], ptr @e400_lna_filter_lut, i32 0, i32 %i.1417
  %46 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp72.not = icmp ugt i32 %45, %47
  br i1 %cmp72.not, label %for.inc76, label %if.end82

for.inc76:                                        ; preds = %for.body68
  %inc77 = add nuw nsw i32 %i.1417, 1
  %exitcond.not = icmp eq i32 %inc77, 32
  br i1 %exitcond.not, label %for.inc76.do.body245_crit_edge, label %for.inc76.for.body68_crit_edge

for.inc76.for.body68_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body68

for.inc76.do.body245_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end82:                                         ; preds = %for.body68
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %val = getelementptr [32 x %struct.e4000_lna_filter], ptr @e400_lna_filter_lut, i32 0, i32 %i.1417, i32 1
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %val, align 4
  %conv85 = zext i8 %51 to i32
  %call86 = call i32 @regmap_write(ptr noundef %49, i32 noundef 16, i32 noundef %conv85) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %for.cond90.preheader, label %if.end82.do.body245_crit_edge

if.end82.do.body245_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

for.cond90.preheader:                             ; preds = %if.end82
  %f_bandwidth94 = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 7
  %52 = ptrtoint ptr %f_bandwidth94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %f_bandwidth94, align 4
  br label %for.body93

for.body93:                                       ; preds = %for.inc101.for.body93_crit_edge, %for.cond90.preheader
  %i.2418 = phi i32 [ 0, %for.cond90.preheader ], [ %inc102, %for.inc101.for.body93_crit_edge ]
  %arrayidx95 = getelementptr [33 x %struct.e4000_if_filter], ptr @e4000_if_filter_lut, i32 0, i32 %i.2418
  %54 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx95, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %53, i32 %55)
  %cmp97.not = icmp ugt i32 %53, %55
  br i1 %cmp97.not, label %for.inc101, label %if.end107

for.inc101:                                       ; preds = %for.body93
  %inc102 = add nuw nsw i32 %i.2418, 1
  %exitcond425.not = icmp eq i32 %inc102, 33
  br i1 %exitcond425.not, label %for.inc101.do.body245_crit_edge, label %for.inc101.for.body93_crit_edge

for.inc101.for.body93_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body93

for.inc101.do.body245_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end107:                                        ; preds = %for.body93
  %reg11_val = getelementptr [33 x %struct.e4000_if_filter], ptr @e4000_if_filter_lut, i32 0, i32 %i.2418, i32 1
  %56 = ptrtoint ptr %reg11_val to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %reg11_val, align 4
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %buf, align 1
  %reg12_val = getelementptr [33 x %struct.e4000_if_filter], ptr @e4000_if_filter_lut, i32 0, i32 %i.2418, i32 2
  %59 = ptrtoint ptr %reg12_val to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %reg12_val, align 1
  %61 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %2, align 1
  %62 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap, align 4
  %call114 = call i32 @regmap_bulk_write(ptr noundef %63, i32 noundef 17, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call114)
  %tobool115.not = icmp eq i32 %call114, 0
  br i1 %tobool115.not, label %for.cond118.preheader, label %if.end107.do.body245_crit_edge

if.end107.do.body245_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

for.cond118.preheader:                            ; preds = %if.end107
  %64 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %f_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000000, i32 %65)
  %cmp125.not = icmp ugt i32 %65, 140000000
  br i1 %cmp125.not, label %for.inc129, label %for.cond118.preheader.if.end135_crit_edge

for.cond118.preheader.if.end135_crit_edge:        ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

for.inc129:                                       ; preds = %for.cond118.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 350000000, i32 %65)
  %cmp125.not.1 = icmp ugt i32 %65, 350000000
  br i1 %cmp125.not.1, label %for.inc129.1, label %for.inc129.if.end135_crit_edge

for.inc129.if.end135_crit_edge:                   ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end135

for.inc129.1:                                     ; preds = %for.inc129
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %65)
  %cmp125.not.2 = icmp ugt i32 %65, 1000000000
  %spec.select443 = select i1 %cmp125.not.2, i32 3, i32 2
  br label %if.end135

if.end135:                                        ; preds = %for.inc129.1, %for.inc129.if.end135_crit_edge, %for.cond118.preheader.if.end135_crit_edge
  %i.3419.lcssa = phi i32 [ 0, %for.cond118.preheader.if.end135_crit_edge ], [ 1, %for.inc129.if.end135_crit_edge ], [ %spec.select443, %for.inc129.1 ]
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %reg07_val = getelementptr [4 x %struct.e4000_band], ptr @e4000_band_lut, i32 0, i32 %i.3419.lcssa, i32 1
  %68 = ptrtoint ptr %reg07_val to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %reg07_val, align 4
  %conv138 = zext i8 %69 to i32
  %call139 = call i32 @regmap_write(ptr noundef %67, i32 noundef 7, i32 noundef %conv138) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end142, label %if.end135.do.body245_crit_edge

if.end135.do.body245_crit_edge:                   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end142:                                        ; preds = %if.end135
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %reg78_val = getelementptr [4 x %struct.e4000_band], ptr @e4000_band_lut, i32 0, i32 %i.3419.lcssa, i32 2
  %72 = ptrtoint ptr %reg78_val to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %reg78_val, align 1
  %conv145 = zext i8 %73 to i32
  %call146 = call i32 @regmap_write(ptr noundef %71, i32 noundef 120, i32 noundef %conv145) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %if.end142.for.body153_crit_edge, label %if.end142.do.body245_crit_edge

if.end142.do.body245_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end142.for.body153_crit_edge:                  ; preds = %if.end142
  br label %for.body153

for.body153:                                      ; preds = %if.end189.for.body153_crit_edge, %if.end142.for.body153_crit_edge
  %i.4420 = phi i32 [ %inc211, %if.end189.for.body153_crit_edge ], [ 0, %if.end142.for.body153_crit_edge ]
  %74 = zext i32 %i.4420 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %i.4420, label %if.else170 [
    i32 0, label %if.then156
    i32 1, label %if.then161
    i32 2, label %if.then167
  ]

if.then156:                                       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap, align 4
  %call158 = call i32 @regmap_bulk_write(ptr noundef %76, i32 noundef 21, ptr noundef nonnull @.str.22, i32 noundef 3) #8
  br label %if.end175

if.then161:                                       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call163 = call i32 @regmap_bulk_write(ptr noundef %78, i32 noundef 21, ptr noundef nonnull @.str.23, i32 noundef 2) #8
  br label %if.end175

if.then167:                                       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap, align 4
  %call169 = call i32 @regmap_bulk_write(ptr noundef %80, i32 noundef 21, ptr noundef nonnull @.str.24, i32 noundef 1) #8
  br label %if.end175

if.else170:                                       ; preds = %for.body153
  call void @__sanitizer_cov_trace_pc() #10
  %81 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap, align 4
  %call172 = call i32 @regmap_bulk_write(ptr noundef %82, i32 noundef 22, ptr noundef nonnull @.str.25, i32 noundef 1) #8
  br label %if.end175

if.end175:                                        ; preds = %if.else170, %if.then167, %if.then161, %if.then156
  %ret.0 = phi i32 [ %call158, %if.then156 ], [ %call163, %if.then161 ], [ %call169, %if.then167 ], [ %call172, %if.else170 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool176.not = icmp eq i32 %ret.0, 0
  br i1 %tobool176.not, label %if.end178, label %if.end175.do.body245_crit_edge

if.end175.do.body245_crit_edge:                   ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end178:                                        ; preds = %if.end175
  %83 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap, align 4
  %call180 = call i32 @regmap_write(ptr noundef %84, i32 noundef 41, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call180)
  %tobool181.not = icmp eq i32 %call180, 0
  br i1 %tobool181.not, label %if.end183, label %if.end178.do.body245_crit_edge

if.end178.do.body245_crit_edge:                   ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end183:                                        ; preds = %if.end178
  %85 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap, align 4
  %call186 = call i32 @regmap_bulk_read(ptr noundef %86, i32 noundef 42, ptr noundef nonnull %buf, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %if.end189, label %if.end183.do.body245_crit_edge

if.end183.do.body245_crit_edge:                   ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end189:                                        ; preds = %if.end183
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %3, align 1
  %89 = shl i8 %88, 6
  %90 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %buf, align 1
  %92 = and i8 %91, 63
  %or348 = or i8 %92, %89
  %arrayidx198 = getelementptr [4 x i8], ptr %i_data, i32 0, i32 %i.4420
  %93 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %or348, ptr %arrayidx198, align 1
  %94 = shl i8 %88, 2
  %95 = and i8 %94, -64
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %2, align 1
  %98 = and i8 %97, 63
  %or207349 = or i8 %98, %95
  %arrayidx209 = getelementptr [4 x i8], ptr %q_data, i32 0, i32 %i.4420
  %99 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %or207349, ptr %arrayidx209, align 1
  %inc211 = add nuw nsw i32 %i.4420, 1
  %exitcond427.not = icmp eq i32 %inc211, 4
  br i1 %exitcond427.not, label %do.body213, label %if.end189.for.body153_crit_edge

if.end189.for.body153_crit_edge:                  ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body153

do.body213:                                       ; preds = %if.end189
  %100 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %10, align 2
  %102 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %11, align 1
  store i8 %103, ptr %10, align 2
  store i8 %101, ptr %11, align 1
  %104 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %7, align 2
  %106 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %8, align 1
  store i8 %107, ptr %7, align 2
  store i8 %105, ptr %8, align 1
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call230 = call i32 @regmap_bulk_write(ptr noundef %109, i32 noundef 80, ptr noundef nonnull %q_data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call230)
  %tobool231.not = icmp eq i32 %call230, 0
  br i1 %tobool231.not, label %if.end233, label %do.body213.do.body245_crit_edge

do.body213.do.body245_crit_edge:                  ; preds = %do.body213
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end233:                                        ; preds = %do.body213
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call236 = call i32 @regmap_bulk_write(ptr noundef %111, i32 noundef 96, ptr noundef nonnull %i_data, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call236)
  %tobool237.not = icmp eq i32 %call236, 0
  br i1 %tobool237.not, label %if.end239, label %if.end233.do.body245_crit_edge

if.end233.do.body245_crit_edge:                   ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end239:                                        ; preds = %if.end233
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call241 = call i32 @regmap_write(ptr noundef %113, i32 noundef 26, i32 noundef 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call241)
  %tobool242.not = icmp eq i32 %call241, 0
  br i1 %tobool242.not, label %if.end239.cleanup_crit_edge, label %if.end239.do.body245_crit_edge

if.end239.do.body245_crit_edge:                   ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body245

if.end239.cleanup_crit_edge:                      ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body245:                                       ; preds = %if.end239.do.body245_crit_edge, %if.end233.do.body245_crit_edge, %do.body213.do.body245_crit_edge, %if.end183.do.body245_crit_edge, %if.end178.do.body245_crit_edge, %if.end175.do.body245_crit_edge, %if.end142.do.body245_crit_edge, %if.end135.do.body245_crit_edge, %if.end107.do.body245_crit_edge, %for.inc101.do.body245_crit_edge, %if.end82.do.body245_crit_edge, %for.inc76.do.body245_crit_edge, %do.end48.do.body245_crit_edge, %if.end7.do.body245_crit_edge
  %ret.1 = phi i32 [ %call8, %if.end7.do.body245_crit_edge ], [ %call61, %do.end48.do.body245_crit_edge ], [ %call86, %if.end82.do.body245_crit_edge ], [ %call114, %if.end107.do.body245_crit_edge ], [ %call139, %if.end135.do.body245_crit_edge ], [ %call146, %if.end142.do.body245_crit_edge ], [ %call230, %do.body213.do.body245_crit_edge ], [ %call236, %if.end233.do.body245_crit_edge ], [ %call241, %if.end239.do.body245_crit_edge ], [ %call186, %if.end183.do.body245_crit_edge ], [ %call180, %if.end178.do.body245_crit_edge ], [ %ret.0, %if.end175.do.body245_crit_edge ], [ -22, %for.inc101.do.body245_crit_edge ], [ -22, %for.inc76.do.body245_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_params, %if.then257)) #8
          to label %cleanup [label %if.then257], !srcloc !161

if.then257:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #10
  %dev258 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_params.__UNIQUE_ID_ddebug298, ptr noundef %dev258, ptr noundef nonnull @.str.14, i32 noundef %ret.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then257, %do.body245, %if.end239.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.end239.cleanup_crit_edge ], [ %ret.1, %if.then257 ], [ 0, %do.body ], [ %ret.1, %do.body245 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q_data) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i_data) #8
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e4000_set_lna_gain(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_lna_gain.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_lna_gain, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %lna_gain_auto = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %lna_gain_auto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lna_gain_auto, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur, align 8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val6, align 4
  %lna_gain = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %lna_gain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lna_gain, align 4
  %cur7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %cur7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur7, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_lna_gain.__UNIQUE_ID_ddebug308, ptr noundef %dev4, ptr noundef nonnull @.str.27, i32 noundef %7, i32 noundef %9, i32 noundef %13, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lna_gain_auto11 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 11
  %16 = ptrtoint ptr %lna_gain_auto11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lna_gain_auto11, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  %if_gain_auto23 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %if_gain_auto23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %if_gain_auto23, align 4
  %cur24 = getelementptr inbounds %struct.v4l2_ctrl, ptr %21, i32 0, i32 23
  %22 = ptrtoint ptr %cur24 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool26.not = icmp eq i32 %23, 0
  %. = select i1 %tobool26.not, i32 16, i32 22
  %spec.select = select i1 %tobool26.not, i32 25, i32 23
  %u8tmp.0 = select i1 %tobool13.not, i32 %., i32 %spec.select
  %regmap = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 26, i32 noundef %u8tmp.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %do.end.do.body48_crit_edge

do.end.do.body48_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.end35:                                         ; preds = %do.end
  %26 = ptrtoint ptr %lna_gain_auto11 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lna_gain_auto11, align 4
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %if.then39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %if.end35
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %lna_gain41 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 12
  %32 = ptrtoint ptr %lna_gain41 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %lna_gain41, align 4
  %val42 = getelementptr inbounds %struct.v4l2_ctrl, ptr %33, i32 0, i32 22
  %34 = ptrtoint ptr %val42 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val42, align 4
  %call43 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 20, i32 noundef %35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.then39.cleanup_crit_edge, label %if.then39.do.body48_crit_edge

if.then39.do.body48_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body48

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body48:                                        ; preds = %if.then39.do.body48_crit_edge, %do.end.do.body48_crit_edge
  %ret.0 = phi i32 [ %call32, %do.end.do.body48_crit_edge ], [ %call43, %if.then39.do.body48_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_lna_gain.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_lna_gain, %if.then60)) #8
          to label %cleanup [label %if.then60], !srcloc !161

if.then60:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #10
  %dev61 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_lna_gain.__UNIQUE_ID_ddebug309, ptr noundef %dev61, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then60, %do.body48, %if.then39.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then39.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %ret.0, %if.then60 ], [ %ret.0, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e4000_set_mixer_gain(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_mixer_gain.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_mixer_gain, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %mixer_gain_auto = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %mixer_gain_auto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mixer_gain_auto, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cur, align 8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %5, i32 0, i32 22
  %8 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val6, align 4
  %mixer_gain = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 14
  %10 = ptrtoint ptr %mixer_gain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mixer_gain, align 4
  %cur7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 23
  %12 = ptrtoint ptr %cur7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cur7, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %11, i32 0, i32 22
  %14 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_mixer_gain.__UNIQUE_ID_ddebug310, ptr noundef %dev4, ptr noundef nonnull @.str.29, i32 noundef %7, i32 noundef %9, i32 noundef %13, i32 noundef %15) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mixer_gain_auto11 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %mixer_gain_auto11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mixer_gain_auto11, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %17, i32 0, i32 22
  %18 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  %. = select i1 %tobool13.not, i32 20, i32 21
  %regmap = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 32, i32 noundef %.) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %do.end.do.body32_crit_edge

do.end.do.body32_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.end19:                                         ; preds = %do.end
  %22 = ptrtoint ptr %mixer_gain_auto11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mixer_gain_auto11, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp = icmp eq i32 %25, 0
  br i1 %cmp, label %if.then23, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then23:                                        ; preds = %if.end19
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %mixer_gain25 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %mixer_gain25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mixer_gain25, align 4
  %val26 = getelementptr inbounds %struct.v4l2_ctrl, ptr %29, i32 0, i32 22
  %30 = ptrtoint ptr %val26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val26, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 21, i32 noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then23.cleanup_crit_edge, label %if.then23.do.body32_crit_edge

if.then23.do.body32_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body32

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body32:                                        ; preds = %if.then23.do.body32_crit_edge, %do.end.do.body32_crit_edge
  %ret.0 = phi i32 [ %call16, %do.end.do.body32_crit_edge ], [ %call27, %if.then23.do.body32_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_mixer_gain.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_mixer_gain, %if.then44)) #8
          to label %cleanup [label %if.then44], !srcloc !161

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #10
  %dev45 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_mixer_gain.__UNIQUE_ID_ddebug311, ptr noundef %dev45, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then44, %do.body32, %if.then23.cleanup_crit_edge, %if.end19.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then23.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %ret.0, %if.then44 ], [ %ret.0, %do.body32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e4000_set_if_gain(ptr nocapture noundef readonly %fe) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #8
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf, align 1, !annotation !160
  %5 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !160
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_if_gain.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_if_gain, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %if_gain_auto = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %if_gain_auto to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %if_gain_auto, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 23
  %9 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cur, align 8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %8, i32 0, i32 22
  %11 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val6, align 4
  %if_gain = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 16
  %13 = ptrtoint ptr %if_gain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %if_gain, align 4
  %cur7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 23
  %15 = ptrtoint ptr %cur7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur7, align 8
  %val10 = getelementptr inbounds %struct.v4l2_ctrl, ptr %14, i32 0, i32 22
  %17 = ptrtoint ptr %val10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val10, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_if_gain.__UNIQUE_ID_ddebug312, ptr noundef %dev4, ptr noundef nonnull @.str.31, i32 noundef %10, i32 noundef %12, i32 noundef %16, i32 noundef %18) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %if_gain_auto11 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %if_gain_auto11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %if_gain_auto11, align 4
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %20, i32 0, i32 22
  %21 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  br i1 %tobool13.not, label %do.end.if.else_crit_edge, label %land.lhs.true

do.end.if.else_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %do.end
  %lna_gain_auto = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 11
  %23 = ptrtoint ptr %lna_gain_auto to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lna_gain_auto, align 4
  %cur14 = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 23
  %25 = ptrtoint ptr %cur14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cur14, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool16.not = icmp eq i32 %26, 0
  br i1 %tobool16.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end31_crit_edge

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %do.end.if.else_crit_edge
  %. = phi i32 [ 22, %land.lhs.true.if.else_crit_edge ], [ 16, %do.end.if.else_crit_edge ]
  %lna_gain_auto18 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 11
  %27 = ptrtoint ptr %lna_gain_auto18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lna_gain_auto18, align 4
  %cur19 = getelementptr inbounds %struct.v4l2_ctrl, ptr %28, i32 0, i32 23
  %29 = ptrtoint ptr %cur19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cur19, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool21.not = icmp eq i32 %30, 0
  %spec.select = select i1 %tobool21.not, i32 %., i32 25
  br label %if.end31

if.end31:                                         ; preds = %if.else, %land.lhs.true.if.end31_crit_edge
  %u8tmp.0 = phi i32 [ 23, %land.lhs.true.if.end31_crit_edge ], [ %spec.select, %if.else ]
  %regmap = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call32 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 26, i32 noundef %u8tmp.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.do.body53_crit_edge

if.end31.do.body53_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.end35:                                         ; preds = %if.end31
  %33 = ptrtoint ptr %if_gain_auto11 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %if_gain_auto11, align 4
  %val37 = getelementptr inbounds %struct.v4l2_ctrl, ptr %34, i32 0, i32 22
  %35 = ptrtoint ptr %val37 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp = icmp eq i32 %36, 0
  br i1 %cmp, label %if.then39, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %if.end35
  %if_gain40 = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 16
  %37 = ptrtoint ptr %if_gain40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %if_gain40, align 4
  %val41 = getelementptr inbounds %struct.v4l2_ctrl, ptr %38, i32 0, i32 22
  %39 = ptrtoint ptr %val41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val41, align 4
  %arrayidx = getelementptr [55 x %struct.e4000_if_gain], ptr @e4000_if_gain_lut, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx, align 1
  %43 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %buf, align 1
  %reg17_val = getelementptr [55 x %struct.e4000_if_gain], ptr @e4000_if_gain_lut, i32 0, i32 %40, i32 1
  %44 = ptrtoint ptr %reg17_val to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %reg17_val, align 1
  %46 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %5, align 1
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call48 = call i32 @regmap_bulk_write(ptr noundef %48, i32 noundef 22, ptr noundef nonnull %buf, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.then39.cleanup_crit_edge, label %if.then39.do.body53_crit_edge

if.then39.do.body53_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body53

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body53:                                        ; preds = %if.then39.do.body53_crit_edge, %if.end31.do.body53_crit_edge
  %ret.0 = phi i32 [ %call32, %if.end31.do.body53_crit_edge ], [ %call48, %if.then39.do.body53_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_set_if_gain.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_set_if_gain, %if.then65)) #8
          to label %cleanup [label %if.then65], !srcloc !161

if.then65:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #10
  %dev66 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_set_if_gain.__UNIQUE_ID_ddebug313, ptr noundef %dev66, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %do.body53, %if.then39.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then39.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %ret.0, %if.then65 ], [ %ret.0, %do.body53 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_standby(ptr nocapture noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_sleep.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_standby, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !161

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_sleep.__UNIQUE_ID_ddebug294, ptr noundef %dev4.i, ptr noundef nonnull @.str.33) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %active.i = getelementptr i8, ptr %sd, i32 196
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %active.i, align 4
  %regmap.i = getelementptr i8, ptr %sd, i32 -12
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end, label %do.body9.i

do.body9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_sleep.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_standby, %if.then21.i)) #8
          to label %cleanup [label %if.then21.i], !srcloc !161

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_sleep.__UNIQUE_ID_ddebug295, ptr noundef %dev22.i, ptr noundef nonnull @.str.14, i32 noundef %call5.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @e4000_set_params(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then21.i, %do.body9.i
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call5.i, %do.body9.i ], [ %call5.i, %if.then21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_s_frequency(ptr nocapture noundef %sd, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_s_frequency.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_s_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frequency, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_s_frequency.__UNIQUE_ID_ddebug302, ptr noundef %dev5, ptr noundef nonnull @.str.35, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %frequency6 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frequency6, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 59000000)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 -2086967296)
  %f_frequency = getelementptr i8, ptr %sd, i32 200
  %12 = ptrtoint ptr %f_frequency to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_frequency, align 4
  %call14 = tail call fastcc i32 @e4000_set_params(ptr noundef %add.ptr.i)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_g_frequency(ptr nocapture noundef readonly %sd, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_g_frequency.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_g_frequency, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_g_frequency.__UNIQUE_ID_ddebug301, ptr noundef %dev5, ptr noundef nonnull @.str.37, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %f_frequency = getelementptr i8, ptr %sd, i32 200
  %4 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_frequency, align 4
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %6 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_enum_freq_bands(ptr nocapture noundef readonly %sd, ptr nocapture noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_enum_freq_bands.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_enum_freq_bands, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %band to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %band, align 4
  %type = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %index = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_enum_freq_bands.__UNIQUE_ID_ddebug307, ptr noundef %dev5, ptr noundef nonnull @.str.39, i32 noundef %3, i32 noundef %5, i32 noundef %7) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %index6 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %8 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp ugt i32 %9, 1
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end8

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %capability = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %9, i32 3
  %10 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %capability, align 4
  %capability10 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 3
  %12 = ptrtoint ptr %capability10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %capability10, align 4
  %rangelow = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %9, i32 4
  %13 = ptrtoint ptr %rangelow to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rangelow, align 4
  %rangelow13 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 4
  %15 = ptrtoint ptr %rangelow13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %rangelow13, align 4
  %rangehigh = getelementptr [2 x %struct.v4l2_frequency_band], ptr @bands, i32 0, i32 %9, i32 5
  %16 = ptrtoint ptr %rangehigh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rangehigh, align 4
  %rangehigh16 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 5
  %18 = ptrtoint ptr %rangehigh16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %rangehigh16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_g_tuner(ptr nocapture noundef readonly %sd, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_g_tuner.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_g_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_g_tuner.__UNIQUE_ID_ddebug299, ptr noundef %dev5, ptr noundef nonnull @.str.41, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.42, i32 noundef 32) #8
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 5, ptr %type, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 3
  %5 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 5120, ptr %capability, align 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 4
  %6 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 59000000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %7 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -2086967296, ptr %rangehigh, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_s_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -16
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_s_tuner.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_s_tuner, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_s_tuner.__UNIQUE_ID_ddebug300, ptr noundef %dev5, ptr noundef nonnull @.str.41, i32 noundef %3) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_dvb_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %call = tail call fastcc i32 @e4000_init(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_dvb_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_sleep.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_dvb_sleep, %if.then.i)) #8
          to label %do.end.i [label %if.then.i], !srcloc !161

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_sleep.__UNIQUE_ID_ddebug294, ptr noundef %dev4.i, ptr noundef nonnull @.str.33) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %active.i = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %active.i, align 4
  %regmap.i = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.end.i.e4000_sleep.exit_crit_edge, label %do.body9.i

do.end.i.e4000_sleep.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %e4000_sleep.exit

do.body9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_sleep.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_dvb_sleep, %if.then21.i)) #8
          to label %e4000_sleep.exit [label %if.then21.i], !srcloc !161

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_sleep.__UNIQUE_ID_ddebug295, ptr noundef %dev22.i, ptr noundef nonnull @.str.14, i32 noundef %call5.i) #8
  br label %e4000_sleep.exit

e4000_sleep.exit:                                 ; preds = %if.then21.i, %do.body9.i, %do.end.i.e4000_sleep.exit_crit_edge
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @e4000_dvb_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %f_frequency = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %f_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %f_frequency, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bandwidth_hz, align 4
  %f_bandwidth = getelementptr inbounds %struct.e4000_dev, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %f_bandwidth, align 4
  %call = tail call fastcc i32 @e4000_set_params(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @e4000_dvb_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @e4000_init(ptr nocapture noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_init, %if.then)) #8
          to label %do.end [label %if.then], !srcloc !161

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_init.__UNIQUE_ID_ddebug292, ptr noundef %dev4, ptr noundef nonnull @.str.33) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %do.end.do.body64_crit_edge

do.end.do.body64_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end8:                                          ; preds = %do.end
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 6, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.do.body64_crit_edge

if.end8.do.body64_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end13:                                         ; preds = %if.end8
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 122, i32 noundef 150) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.do.body64_crit_edge

if.end13.do.body64_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end18:                                         ; preds = %if.end13
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call20 = tail call i32 @regmap_bulk_write(ptr noundef %9, i32 noundef 126, ptr noundef nonnull @.str.45, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.do.body64_crit_edge

if.end18.do.body64_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end23:                                         ; preds = %if.end18
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 130, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end28, label %if.end23.do.body64_crit_edge

if.end23.do.body64_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end28:                                         ; preds = %if.end23
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call30 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 36, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.do.body64_crit_edge

if.end28.do.body64_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end33:                                         ; preds = %if.end28
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call35 = tail call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 135, ptr noundef nonnull @.str.46, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.do.body64_crit_edge

if.end33.do.body64_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end38:                                         ; preds = %if.end33
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call40 = tail call i32 @regmap_bulk_write(ptr noundef %17, i32 noundef 159, ptr noundef nonnull @.str.47, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end38.do.body64_crit_edge

if.end38.do.body64_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end43:                                         ; preds = %if.end38
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call45 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 45, i32 noundef 31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end43.do.body64_crit_edge

if.end43.do.body64_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end48:                                         ; preds = %if.end43
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call50 = tail call i32 @regmap_bulk_write(ptr noundef %21, i32 noundef 112, ptr noundef nonnull @.str.48, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end48.do.body64_crit_edge

if.end48.do.body64_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end53:                                         ; preds = %if.end48
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call55 = tail call i32 @regmap_write(ptr noundef %23, i32 noundef 26, i32 noundef 23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.end53.do.body64_crit_edge

if.end53.do.body64_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end58:                                         ; preds = %if.end53
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call60 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 31, i32 noundef 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end63, label %if.end58.do.body64_crit_edge

if.end58.do.body64_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body64

if.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %active = getelementptr inbounds %struct.e4000_dev, ptr %dev, i32 0, i32 5
  %26 = ptrtoint ptr %active to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %active, align 4
  br label %cleanup

do.body64:                                        ; preds = %if.end58.do.body64_crit_edge, %if.end53.do.body64_crit_edge, %if.end48.do.body64_crit_edge, %if.end43.do.body64_crit_edge, %if.end38.do.body64_crit_edge, %if.end33.do.body64_crit_edge, %if.end28.do.body64_crit_edge, %if.end23.do.body64_crit_edge, %if.end18.do.body64_crit_edge, %if.end13.do.body64_crit_edge, %if.end8.do.body64_crit_edge, %do.end.do.body64_crit_edge
  %ret.0 = phi i32 [ %call5, %do.end.do.body64_crit_edge ], [ %call10, %if.end8.do.body64_crit_edge ], [ %call15, %if.end13.do.body64_crit_edge ], [ %call20, %if.end18.do.body64_crit_edge ], [ %call25, %if.end23.do.body64_crit_edge ], [ %call30, %if.end28.do.body64_crit_edge ], [ %call35, %if.end33.do.body64_crit_edge ], [ %call40, %if.end38.do.body64_crit_edge ], [ %call45, %if.end43.do.body64_crit_edge ], [ %call50, %if.end48.do.body64_crit_edge ], [ %call55, %if.end53.do.body64_crit_edge ], [ %call60, %if.end58.do.body64_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @e4000_init.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@e4000_init, %if.then76)) #8
          to label %cleanup [label %if.then76], !srcloc !161

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @e4000_init.__UNIQUE_ID_ddebug293, ptr noundef %dev77, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %do.body64, %if.end63
  %retval.0 = phi i32 [ 0, %if.end63 ], [ %ret.0, %if.then76 ], [ %ret.0, %do.body64 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 64)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !84, !86, !87, !88, !90, !92, !93, !94, !96, !98, !100, !102, !104, !106, !107, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !130, !131, !133, !135, !136, !138, !140, !142, !144, !146, !148, !149}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__initcall__kmod_e4000__320_740_e4000_driver_init6, !1, !"__initcall__kmod_e4000__320_740_e4000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/e4000.c", i32 740, i32 1}
!2 = !{ptr @__exitcall_e4000_driver_exit, !1, !"__exitcall_e4000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description321, !4, !"__UNIQUE_ID_description321", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/e4000.c", i32 742, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/e4000.c", i32 743, i32 1}
!7 = !{ptr @__UNIQUE_ID_file323, !8, !"__UNIQUE_ID_file323", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/e4000.c", i32 744, i32 1}
!9 = !{ptr @__UNIQUE_ID_license324, !8, !"__UNIQUE_ID_license324", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/e4000.c", i32 732, i32 11}
!12 = !{ptr @e4000_driver, !13, !"e4000_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/e4000.c", i32 730, i32 26}
!14 = !{ptr @e4000_probe.regmap_config, !15, !"regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/e4000.c", i32 620, i32 36}
!16 = !{ptr @e4000_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/e4000.c", i32 634, i32 16}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/e4000.c", i32 645, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @e4000_probe.__UNIQUE_ID_ddebug317, !20, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!24 = !{ptr @e4000_probe._key.5, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/e4000.c", i32 659, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/e4000.c", i32 684, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @e4000_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @e4000_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/e4000.c", i32 700, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @e4000_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @e4000_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/e4000.c", i32 705, i32 2}
!40 = !{ptr @e4000_probe.__UNIQUE_ID_ddebug318, !39, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!41 = !{ptr @e4000_ctrl_ops, !42, !"e4000_ctrl_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/e4000.c", i32 563, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/e4000.c", i32 514, i32 3}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @e4000_g_volatile_ctrl.__UNIQUE_ID_ddebug315, !44, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/e4000.c", i32 496, i32 2}
!49 = !{ptr @e4000_pll_lock.__UNIQUE_ID_ddebug314, !48, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/e4000.c", i32 555, i32 3}
!52 = !{ptr @e4000_s_ctrl.__UNIQUE_ID_ddebug316, !51, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/tuners/e4000.c", i32 106, i32 3}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @e4000_set_params.__UNIQUE_ID_ddebug296, !54, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/e4000.c", i32 146, i32 2}
!59 = !{ptr @e4000_set_params.__UNIQUE_ID_ddebug297, !58, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!60 = !{ptr @.str.22, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/e4000.c", i32 212, i32 47}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/e4000.c", i32 214, i32 47}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/e4000.c", i32 216, i32 47}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/e4000.c", i32 218, i32 47}
!68 = !{ptr @e4000_set_params.__UNIQUE_ID_ddebug298, !69, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!69 = !{!"../drivers/media/tuners/e4000.c", i32 253, i32 2}
!70 = !{ptr @e4000_pll_lut, !71, !"e4000_pll_lut", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/e4000_priv.h", i32 46, i32 31}
!72 = !{ptr @e400_lna_filter_lut, !73, !"e400_lna_filter_lut", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/e4000_priv.h", i32 66, i32 38}
!74 = !{ptr @e4000_if_filter_lut, !75, !"e4000_if_filter_lut", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/e4000_priv.h", i32 120, i32 37}
!76 = !{ptr @e4000_band_lut, !77, !"e4000_band_lut", i1 false, i1 false}
!77 = !{!"../drivers/media/tuners/e4000_priv.h", i32 107, i32 32}
!78 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/e4000.c", i32 381, i32 2}
!80 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @e4000_set_lna_gain.__UNIQUE_ID_ddebug308, !79, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!82 = !{ptr @e4000_set_lna_gain.__UNIQUE_ID_ddebug309, !83, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/e4000.c", i32 406, i32 2}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/e4000.c", i32 417, i32 2}
!86 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @e4000_set_mixer_gain.__UNIQUE_ID_ddebug310, !85, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!88 = !{ptr @e4000_set_mixer_gain.__UNIQUE_ID_ddebug311, !89, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/e4000.c", i32 438, i32 2}
!90 = !{ptr @.str.30, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/e4000.c", i32 450, i32 2}
!92 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @e4000_set_if_gain.__UNIQUE_ID_ddebug312, !91, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!94 = !{ptr @e4000_set_if_gain.__UNIQUE_ID_ddebug313, !95, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!95 = !{!"../drivers/media/tuners/e4000.c", i32 477, i32 2}
!96 = !{ptr @e4000_if_gain_lut, !97, !"e4000_if_gain_lut", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/e4000_priv.h", i32 161, i32 35}
!98 = !{ptr @bands, !99, !"bands", i1 false, i1 false}
!99 = !{!"../drivers/media/tuners/e4000.c", i32 261, i32 41}
!100 = !{ptr @e4000_subdev_ops, !101, !"e4000_subdev_ops", i1 false, i1 false}
!101 = !{!"../drivers/media/tuners/e4000.c", i32 370, i32 37}
!102 = !{ptr @e4000_subdev_tuner_ops, !103, !"e4000_subdev_tuner_ops", i1 false, i1 false}
!103 = !{!"../drivers/media/tuners/e4000.c", i32 361, i32 43}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/tuners/e4000.c", i32 83, i32 2}
!106 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @e4000_sleep.__UNIQUE_ID_ddebug294, !105, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!108 = !{ptr @e4000_sleep.__UNIQUE_ID_ddebug295, !109, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!109 = !{!"../drivers/media/tuners/e4000.c", i32 93, i32 2}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/tuners/e4000.c", i32 335, i32 2}
!112 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @e4000_s_frequency.__UNIQUE_ID_ddebug302, !111, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!114 = !{ptr @.str.36, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/e4000.c", i32 324, i32 2}
!116 = !{ptr @.str.37, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @e4000_g_frequency.__UNIQUE_ID_ddebug301, !115, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!118 = !{ptr @.str.38, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/tuners/e4000.c", i32 349, i32 2}
!120 = !{ptr @.str.39, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @e4000_enum_freq_bands.__UNIQUE_ID_ddebug307, !119, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!122 = !{ptr @.str.40, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/tuners/e4000.c", i32 300, i32 2}
!124 = !{ptr @.str.41, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @e4000_g_tuner.__UNIQUE_ID_ddebug299, !123, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/tuners/e4000.c", i32 302, i32 19}
!128 = !{ptr @.str.43, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/tuners/e4000.c", i32 315, i32 2}
!130 = !{ptr @e4000_s_tuner.__UNIQUE_ID_ddebug300, !129, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!131 = !{ptr @e4000_dvb_tuner_ops, !132, !"e4000_dvb_tuner_ops", i1 false, i1 false}
!132 = !{!"../drivers/media/tuners/e4000.c", i32 598, i32 35}
!133 = !{ptr @.str.44, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/media/tuners/e4000.c", i32 15, i32 2}
!135 = !{ptr @e4000_init.__UNIQUE_ID_ddebug292, !134, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!136 = !{ptr @.str.45, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/tuners/e4000.c", i32 32, i32 45}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/tuners/e4000.c", i32 44, i32 45}
!140 = !{ptr @.str.47, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/media/tuners/e4000.c", i32 48, i32 45}
!142 = !{ptr @.str.48, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/tuners/e4000.c", i32 57, i32 45}
!144 = !{ptr @e4000_init.__UNIQUE_ID_ddebug293, !145, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!145 = !{!"../drivers/media/tuners/e4000.c", i32 74, i32 2}
!146 = !{ptr @.str.49, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/e4000.c", i32 714, i32 2}
!148 = !{ptr @e4000_remove.__UNIQUE_ID_ddebug319, !147, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!149 = !{ptr @e4000_id_table, !150, !"e4000_id_table", i1 false, i1 false}
!150 = !{!"../drivers/media/tuners/e4000.c", i32 724, i32 35}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{!"auto-init"}
!161 = !{i64 2148284818, i64 2148284823, i64 2148284836, i64 2148284880, i64 2148284914, i64 2148284935}
!162 = !{i8 0, i8 2}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{i64 2148310005, i64 2148310285, i64 2148310619, i64 2148310953}
