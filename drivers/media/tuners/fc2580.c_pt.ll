; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/fc2580.c_pt.bc'
source_filename = "../drivers/media/tuners/fc2580.c"
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
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.fc2580_pll = type { i32, i8, i8 }
%struct.fc2580_freq_regs = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.fc2580_if_filter = type { i32, i8, i8 }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fc2580_reg_val = type { i8, i8 }
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
%struct.fc2580_platform_data = type { i32, ptr, ptr }
%struct.fc2580_dev = type { i32, ptr, ptr, %struct.v4l2_subdev, i8, i32, i32, %struct.v4l2_ctrl_handler, ptr, ptr }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.92, %union.anon.93, i32, ptr, i32, %struct.anon.94, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.92 = type { i64 }
%union.anon.93 = type { ptr }
%struct.anon.94 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.100], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.100 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.101 }>
%union.anon.101 = type { i64 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_frequency_band = type { i32, i32, i32, i32, i32, i32, i32, [9 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }

@__initcall__kmod_fc2580__314_620_fc2580_driver_init6 = internal global ptr @fc2580_driver_init, section ".initcall6.init", align 4
@fc2580_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @fc2580_probe, ptr @fc2580_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fc2580_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fc2580_driver_exit = internal global ptr @fc2580_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description315 = internal constant [51 x i8] c"fc2580.description=FCI FC2580 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [45 x i8] c"fc2580.author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [40 x i8] c"fc2580.file=drivers/media/tuners/fc2580\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [19 x i8] c"fc2580.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fc2580\00", [25 x i8] zeroinitializer }, align 32
@fc2580_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"fc2580\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@fc2580_probe.regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@fc2580_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"fc2580:533:(&regmap_config)->lock\00", [62 x i8] zeroinitializer }, align 32
@fc2580_probe.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fc2580_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/fc2580.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"chip_id=%02x\0A\00", [18 x i8] zeroinitializer }, align 32
@fc2580_probe._key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fc2580:557:(&dev->hdl)->_lock\00", [34 x i8] zeroinitializer }, align 32
@fc2580_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @fc2580_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@fc2580_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 567, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Could not initialize controls\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fc2580_probe._entry_ptr = internal global ptr @fc2580_probe._entry, section ".printk_index", align 4
@fc2580_subdev_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr null, ptr @fc2580_subdev_tuner_ops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fc2580_dvb_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"FCI FC2580\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @fc2580_dvb_init, ptr @fc2580_dvb_sleep, ptr null, ptr null, ptr @fc2580_dvb_set_params, ptr null, ptr null, ptr null, ptr null, ptr @fc2580_dvb_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fc2580_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 582, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"FCI FC2580 successfully identified\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@fc2580_probe._entry_ptr.13 = internal global ptr @fc2580_probe._entry.10, section ".printk_index", align 4
@fc2580_probe.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 -110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"failed=%d\0A\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fc2580_s_ctrl.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc2580_s_ctrl\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ctrl: id=%d name=%s cur.val=%d val=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@fc2580_s_ctrl.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.3, ptr @.str.17, i8 0, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unknown ctrl\00", [19 x i8] zeroinitializer }, align 32
@fc2580_set_params.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 9, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fc2580_set_params\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tuner is sleeping\0A\00", [45 x i8] zeroinitializer }, align 32
@fc2580_pll_lut = internal constant { [3 x %struct.fc2580_pll], [40 x i8] } { [3 x %struct.fc2580_pll] [%struct.fc2580_pll { i32 400000000, i8 12, i8 -128 }, %struct.fc2580_pll { i32 1000000000, i8 4, i8 0 }, %struct.fc2580_pll { i32 -1, i8 2, i8 64 }], [40 x i8] zeroinitializer }, align 32
@fc2580_set_params.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.20, i8 0, i8 24, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"frequency=%u bandwidth=%u f_vco=%llu F_REF=%u div_ref=%u div_n=%u k=%u div_out=%u k_cw=%0x\0A\00", [36 x i8] zeroinitializer }, align 32
@fc2580_freq_regs_lut = internal constant { [5 x %struct.fc2580_freq_regs], [52 x i8] } { [5 x %struct.fc2580_freq_regs] [%struct.fc2580_freq_regs { i32 400000000, i8 -1, i8 119, i8 51, i8 64, i8 -1, i8 -1, i8 -1, i8 9, i8 -1, i8 -116, i8 80, i8 15, i8 7, i8 0, i8 21, i8 3, i8 5, i8 16, i8 18, i8 8, i8 10, i8 120, i8 50, i8 84 }, %struct.fc2580_freq_regs { i32 538000000, i8 -16, i8 119, i8 83, i8 96, i8 -1, i8 -1, i8 -97, i8 9, i8 -1, i8 -116, i8 80, i8 19, i8 7, i8 6, i8 21, i8 6, i8 8, i8 16, i8 18, i8 11, i8 12, i8 120, i8 50, i8 20 }, %struct.fc2580_freq_regs { i32 794000000, i8 -16, i8 119, i8 83, i8 96, i8 -1, i8 -1, i8 -97, i8 9, i8 -1, i8 -116, i8 80, i8 21, i8 3, i8 3, i8 21, i8 3, i8 5, i8 12, i8 14, i8 11, i8 12, i8 120, i8 50, i8 20 }, %struct.fc2580_freq_regs { i32 1000000000, i8 -16, i8 119, i8 83, i8 96, i8 -1, i8 -1, i8 -113, i8 9, i8 -1, i8 -116, i8 80, i8 21, i8 7, i8 6, i8 21, i8 7, i8 9, i8 16, i8 18, i8 11, i8 12, i8 120, i8 50, i8 20 }, %struct.fc2580_freq_regs { i32 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 112, i8 55, i8 -25, i8 9, i8 32, i8 -116, i8 80, i8 15, i8 15, i8 0, i8 19, i8 0, i8 2, i8 12, i8 14, i8 8, i8 10, i8 -96, i8 80, i8 20 }], [52 x i8] zeroinitializer }, align 32
@fc2580_if_filter_lut = internal constant { [4 x %struct.fc2580_if_filter], [32 x i8] } { [4 x %struct.fc2580_if_filter] [%struct.fc2580_if_filter { i32 6000000, i8 24, i8 0 }, %struct.fc2580_if_filter { i32 7000000, i8 24, i8 -128 }, %struct.fc2580_if_filter { i32 8000000, i8 24, i8 -128 }, %struct.fc2580_if_filter { i32 -1, i8 24, i8 -128 }], [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fc2580_set_params.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.21, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"filter did not lock %02x\0A\00", [38 x i8] zeroinitializer }, align 32
@fc2580_set_params.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.18, ptr @.str.3, ptr @.str.14, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@fc2580_subdev_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr @fc2580_standby, ptr null, ptr @fc2580_s_frequency, ptr @fc2580_g_frequency, ptr @fc2580_enum_freq_bands, ptr @fc2580_g_tuner, ptr @fc2580_s_tuner, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@fc2580_sleep.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 75, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fc2580_sleep\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@fc2580_sleep.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.3, ptr @.str.14, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@fc2580_s_frequency.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 107, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc2580_s_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tuner=%d type=%d frequency=%u\0A\00", [33 x i8] zeroinitializer }, align 32
@fc2580_g_frequency.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fc2580_g_frequency\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tuner=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@fc2580_enum_freq_bands.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fc2580_enum_freq_bands\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tuner=%d type=%d index=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@fc2580_g_tuner.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc2580_g_tuner\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"index=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"FCI FC2580\00", [21 x i8] zeroinitializer }, align 32
@fc2580_s_tuner.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.3, ptr @.str.31, i8 0, i8 102, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fc2580_s_tuner\00", [17 x i8] zeroinitializer }, align 32
@fc2580_init.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.23, i8 0, i8 70, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fc2580_init\00", [20 x i8] zeroinitializer }, align 32
@fc2580_init_reg_vals = internal constant { [16 x %struct.fc2580_reg_val], [32 x i8] } { [16 x %struct.fc2580_reg_val] [%struct.fc2580_reg_val zeroinitializer, %struct.fc2580_reg_val { i8 18, i8 -122 }, %struct.fc2580_reg_val { i8 20, i8 92 }, %struct.fc2580_reg_val { i8 22, i8 60 }, %struct.fc2580_reg_val { i8 31, i8 -46 }, %struct.fc2580_reg_val { i8 9, i8 -41 }, %struct.fc2580_reg_val { i8 11, i8 -43 }, %struct.fc2580_reg_val { i8 12, i8 50 }, %struct.fc2580_reg_val { i8 14, i8 67 }, %struct.fc2580_reg_val { i8 33, i8 10 }, %struct.fc2580_reg_val { i8 34, i8 -126 }, %struct.fc2580_reg_val { i8 69, i8 16 }, %struct.fc2580_reg_val { i8 76, i8 0 }, %struct.fc2580_reg_val { i8 63, i8 -120 }, %struct.fc2580_reg_val { i8 2, i8 14 }, %struct.fc2580_reg_val { i8 88, i8 20 }], [32 x i8] zeroinitializer }, align 32
@fc2580_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.3, ptr @.str.14, i8 0, i8 73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@fc2580_remove.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.3, ptr @.str.23, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fc2580_remove\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 86, i64 90]
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"fc2580_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 610, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 612, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"fc2580_id_table\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 604, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"regmap_config\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 517, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 533, i32 16 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 544, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 557, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"fc2580_ctrl_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 494, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 567, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [18 x i8] c"fc2580_subdev_ops\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 463, i32 37 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"fc2580_dvb_tuner_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 343, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 582, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 587, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 473, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 488, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 38, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [15 x i8] c"fc2580_pll_lut\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 47, i32 32 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 94, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [21 x i8] c"fc2580_freq_regs_lut\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 96, i32 38 }
@___asan_gen_.126 = private unnamed_addr constant [21 x i8] c"fc2580_if_filter_lut\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 60, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 267, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"fc2580_subdev_tuner_ops\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 454, i32 43 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 301, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 428, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 417, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 442, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 393, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 395, i32 19 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 408, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 280, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant [21 x i8] c"fc2580_init_reg_vals\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [38 x i8] c"../drivers/media/tuners/fc2580_priv.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 22, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.178 = private constant [33 x i8] c"../drivers/media/tuners/fc2580.c\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 595, i32 2 }
@llvm.compiler.used = appending global [57 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__exitcall_fc2580_driver_exit, ptr @__initcall__kmod_fc2580__314_620_fc2580_driver_init6, ptr @fc2580_driver_exit, ptr @fc2580_probe._entry, ptr @fc2580_probe._entry.10, ptr @fc2580_probe._entry_ptr, ptr @fc2580_probe._entry_ptr.13, ptr @fc2580_driver, ptr @.str, ptr @fc2580_id_table, ptr @fc2580_probe.regmap_config, ptr @fc2580_probe._key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fc2580_probe._key.5, ptr @.str.6, ptr @fc2580_ctrl_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @fc2580_subdev_ops, ptr @fc2580_dvb_tuner_ops, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @fc2580_pll_lut, ptr @.str.20, ptr @fc2580_freq_regs_lut, ptr @fc2580_if_filter_lut, ptr @.str.21, ptr @fc2580_subdev_tuner_ops, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @fc2580_init_reg_vals, ptr @.str.35], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_probe.regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_probe._key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_subdev_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_dvb_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_pll_lut to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_freq_regs_lut to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_if_filter_lut to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_subdev_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fc2580_init_reg_vals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fc2580_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fc2580_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @fc2580_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %dvb_frontend = getelementptr inbounds %struct.fc2580_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dvb_frontend to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvb_frontend, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #9
  %4 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %uitmp, align 4, !annotation !124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 412) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.do.body54_crit_edge, label %if.end

entry.do.body54_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body54

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  %. = select i1 %tobool2.not, i32 16384000, i32 %7
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %., ptr %call7.i.i, align 8
  %client8 = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %client8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %client8, align 4
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @fc2580_probe.regmap_config, ptr noundef nonnull @fc2580_probe._key, ptr noundef nonnull @.str.1) #9
  %regmap = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9, ptr %regmap, align 8
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call9 to i32
  br label %err_kfree

if.end15:                                         ; preds = %if.end
  %call17 = call i32 @regmap_read(ptr noundef %call9, i32 noundef 1, ptr noundef nonnull %uitmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %do.body, label %if.end15.err_kfree_crit_edge

if.end15.err_kfree_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree

do.body:                                          ; preds = %if.end15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_probe.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_probe, %if.then26)) #9
          to label %do.end [label %if.then26], !srcloc !125

if.then26:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uitmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_probe.__UNIQUE_ID_ddebug311, ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %13) #9
  br label %do.end

do.end:                                           ; preds = %if.then26, %do.body
  %14 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uitmp, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %15, label %do.end.err_kfree_crit_edge [
    i32 86, label %do.end.sw.epilog_crit_edge
    i32 90, label %do.end.sw.epilog_crit_edge120
  ]

do.end.sw.epilog_crit_edge120:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end.err_kfree_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_kfree

sw.epilog:                                        ; preds = %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge120
  %hdl = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 7
  %call30 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl, i32 noundef 2, ptr noundef nonnull @fc2580_probe._key.5, ptr noundef nonnull @.str.6) #9
  %call32 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @fc2580_ctrl_ops, i32 noundef 10619147, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #9
  %bandwidth_auto = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %bandwidth_auto to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call32, ptr %bandwidth_auto, align 4
  %call34 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl, ptr noundef nonnull @fc2580_ctrl_ops, i32 noundef 10619148, i64 noundef 3000, i64 noundef 10000000, i64 noundef 1, i64 noundef 3000) #9
  %bandwidth = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call34, ptr %bandwidth, align 8
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %bandwidth_auto, i8 noundef zeroext 0, i1 noundef zeroext false) #9
  %error = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 7, i32 9
  %19 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool37.not = icmp eq i32 %20, 0
  br i1 %tobool37.not, label %if.end46, label %if.then38

if.then38:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #13
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  br label %err_kfree

if.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %subdev = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 3
  %ctrl_handler = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %hdl, ptr %ctrl_handler, align 4
  %f_frequency = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %f_frequency to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 130000000, ptr %f_frequency, align 4
  %23 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bandwidth, align 8
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %24, i32 0, i32 22
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  %f_bandwidth = getelementptr inbounds %struct.fc2580_dev, ptr %call7.i.i, i32 0, i32 6
  %27 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %f_bandwidth, align 8
  call void @v4l2_i2c_subdev_init(ptr noundef %subdev, ptr noundef %client, ptr noundef nonnull @fc2580_subdev_ops) #9
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 4
  %28 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call7.i.i, ptr %tuner_priv, align 4
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %3, i32 0, i32 1, i32 32
  %29 = call ptr @memcpy(ptr %tuner_ops, ptr @fc2580_dvb_tuner_ops, i32 220)
  %get_v4l2_subdev = getelementptr inbounds %struct.fc2580_platform_data, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %get_v4l2_subdev to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @fc2580_get_v4l2_subdev, ptr %get_v4l2_subdev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.11) #13
  br label %cleanup

err_kfree:                                        ; preds = %if.then38, %do.end.err_kfree_crit_edge, %if.end15.err_kfree_crit_edge, %if.then12
  %ret.0 = phi i32 [ %11, %if.then12 ], [ %call17, %if.end15.err_kfree_crit_edge ], [ %20, %if.then38 ], [ -19, %do.end.err_kfree_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %do.body54

do.body54:                                        ; preds = %err_kfree, %entry.do.body54_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err_kfree ], [ -12, %entry.do.body54_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_probe.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_probe, %if.then66)) #9
          to label %cleanup [label %if.then66], !srcloc !125

if.then66:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_probe.__UNIQUE_ID_ddebug312, ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %ret.1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then66, %do.body54, %if.end46
  %retval.0 = phi i32 [ 0, %if.end46 ], [ %ret.1, %if.then66 ], [ %ret.1, %do.body54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_remove.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_remove, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_remove.__UNIQUE_ID_ddebug313, ptr noundef %dev4, ptr noundef nonnull @.str.23) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hdl = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 7
  tail call void @v4l2_ctrl_handler_free(ptr noundef %hdl) #9
  tail call void @kfree(ptr noundef %1) #9
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @fc2580_get_v4l2_subdev(ptr nocapture noundef readonly %client) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ops = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 3, i32 6
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool.not = icmp eq ptr %3, null
  %subdev = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 3
  %retval.0 = select i1 %tobool.not, ptr null, ptr %subdev
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -220
  %client1 = getelementptr i8, ptr %1, i32 -216
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_s_ctrl.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_s_ctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 8
  %name = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 9
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %cur = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 23
  %8 = ptrtoint ptr %cur to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur, align 8
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val6, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_s_ctrl.__UNIQUE_ID_ddebug309, ptr noundef %dev5, ptr noundef nonnull @.str.16, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef %11) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %id7 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %12 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id7, align 8
  %.off = add i32 %13, -10619147
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %do.body10

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %bandwidth = getelementptr i8, ptr %1, i32 188
  %14 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bandwidth, align 4
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %15, i32 0, i32 22
  %16 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val8, align 4
  %f_bandwidth = getelementptr i8, ptr %1, i32 -4
  %18 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %f_bandwidth, align 4
  %call9 = tail call fastcc i32 @fc2580_set_params(ptr noundef %add.ptr)
  br label %sw.epilog

do.body10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_s_ctrl.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_s_ctrl, %if.then22)) #9
          to label %sw.epilog [label %if.then22], !srcloc !125

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_s_ctrl.__UNIQUE_ID_ddebug310, ptr noundef %dev23, ptr noundef nonnull @.str.17) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then22, %do.body10, %sw.bb
  %ret.0 = phi i32 [ %call9, %sw.bb ], [ -22, %if.then22 ], [ -22, %do.body10 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fc2580_set_params(ptr noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %uitmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr inbounds %struct.fc2580_dev, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %uitmp) #9
  %active = getelementptr inbounds %struct.fc2580_dev, ptr %dev, i32 0, i32 4
  %2 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %active, align 4, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %f_frequency = getelementptr inbounds %struct.fc2580_dev, ptr %dev, i32 0, i32 5
  %4 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %f_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %5)
  %cmp8.not = icmp ugt i32 %5, 400000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %5)
  %cmp8.not.1 = icmp ugt i32 %5, 1000000000
  %spec.select = select i1 %cmp8.not.1, i32 2, i32 1
  %i.0754.lcssa = select i1 %cmp8.not, i32 %spec.select, i32 0
  %div_out15 = getelementptr [3 x %struct.fc2580_pll], ptr @fc2580_pll_lut, i32 0, i32 %i.0754.lcssa, i32 1
  %6 = ptrtoint ptr %div_out15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %div_out15, align 4
  %conv = zext i8 %7 to i32
  %8 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_frequency, align 4
  %conv17 = zext i32 %9 to i64
  %conv18 = zext i8 %7 to i64
  %mul = mul nuw nsw i64 %conv17, %conv18
  %band = getelementptr [3 x %struct.fc2580_pll], ptr @fc2580_pll_lut, i32 0, i32 %i.0754.lcssa, i32 2
  %10 = ptrtoint ptr %band to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %band, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 2600000000, i64 %mul)
  %cmp20 = icmp ult i64 %mul, 2600000000
  %synth_config.0.v = select i1 %cmp20, i8 6, i8 14
  %synth_config.0 = or i8 %synth_config.0.v, %11
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev, align 4
  %conv29 = zext i32 %13 to i64
  %mul30 = mul nuw nsw i64 %conv29, 152
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %mul30)
  %cmp32.not = icmp ult i64 %mul, %mul30
  %shr.i.i = lshr exact i64 %mul30, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %mul, i64 %shr.i.i)
  %cmp40.not = icmp ult i64 %mul, %shr.i.i
  %. = select i1 %cmp40.not, i32 32, i32 16
  %.500 = select i1 %cmp40.not, i32 4, i32 2
  %div_ref_val.0 = select i1 %cmp32.not, i32 %., i32 0
  %div_ref.0 = select i1 %cmp32.not, i32 %.500, i32 1
  %mul47 = shl i32 %13, 1
  %14 = select i1 %cmp40.not, i32 2, i32 1
  %15 = select i1 %cmp32.not, i32 %14, i32 0
  %div741 = lshr i32 %mul47, %15
  %16 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div741, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp164.i = icmp ult i64 %mul, 4294967296
  br i1 %cmp164.i, label %if.then168.i, label %if.else174.i, !prof !127

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_set_params.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_set_params, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !125

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev6 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_set_params.__UNIQUE_ID_ddebug292, ptr noundef %dev6, ptr noundef nonnull @.str.19) #9
  br label %cleanup

if.then168.i:                                     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i = trunc i64 %mul to i32
  %conv169.i.frozen = freeze i32 %conv169.i
  %div741.frozen = freeze i32 %div741
  %div172.i = udiv i32 %conv169.i.frozen, %div741.frozen
  %17 = mul i32 %div172.i, %div741.frozen
  %rem170.i.decomposed = sub i32 %conv169.i.frozen, %17
  br label %if.else162.i.i

if.else174.i:                                     ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div741, i64 %mul) #14, !srcloc !128
  %asmresult.i261.i = extractvalue { i64, i64 } %18, 0
  %asmresult1.i.i = extractvalue { i64, i64 } %18, 1
  %shr.i.i510 = lshr i64 %asmresult.i261.i, 32
  %conv.i.i = trunc i64 %shr.i.i510 to i32
  %extract.t742 = trunc i64 %asmresult1.i.i to i32
  br label %if.else162.i.i

if.else162.i.i:                                   ; preds = %if.else174.i, %if.then168.i
  %dividend.addr.0.i.off0 = phi i32 [ %div172.i, %if.then168.i ], [ %extract.t742, %if.else174.i ]
  %__rem.0.i = phi i32 [ %rem170.i.decomposed, %if.then168.i ], [ %conv.i.i, %if.else174.i ]
  %conv50 = zext i32 %__rem.0.i to i64
  %mul51 = shl nuw nsw i64 %conv50, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %__rem.0.i)
  %cmp164.i.i = icmp ult i32 %__rem.0.i, 4096
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !127

if.then168.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv169.i.i = trunc i64 %mul51 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %div741
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %if.else162.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div741, i64 %mul51) #14, !srcloc !128
  %asmresult1.i.i.i = extractvalue { i64, i64 } %19, 1
  %extract.t744 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t744, %if.else174.i.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_set_params.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_set_params, %if.then66)) #9
          to label %do.end72 [label %if.then66], !srcloc !125

if.then66:                                        ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev67 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f_frequency, align 4
  %f_bandwidth = getelementptr inbounds %struct.fc2580_dev, ptr %dev, i32 0, i32 6
  %22 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_bandwidth, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_set_params.__UNIQUE_ID_ddebug293, ptr noundef %dev67, ptr noundef nonnull @.str.20, i32 noundef %21, i32 noundef %23, i64 noundef %mul, i32 noundef %25, i32 noundef %div_ref.0, i32 noundef %dividend.addr.0.i.off0, i32 noundef %__rem.0.i, i32 noundef %conv, i32 noundef %dividend.addr.0.i.i.off0) #9
  br label %do.end72

do.end72:                                         ; preds = %if.then66, %div_u64.exit
  %regmap = getelementptr inbounds %struct.fc2580_dev, ptr %dev, i32 0, i32 2
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %conv73 = zext i8 %synth_config.0 to i32
  %call74 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 2, i32 noundef %conv73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %do.end72.do.body333_crit_edge

do.end72.do.body333_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end77:                                         ; preds = %do.end72
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %shr = lshr i32 %dividend.addr.0.i.i.off0, 16
  %or79 = or i32 %shr, %div_ref_val.0
  %call80 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 24, i32 noundef %or79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %if.end77.do.body333_crit_edge

if.end77.do.body333_crit_edge:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end83:                                         ; preds = %if.end77
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %shr85 = lshr i32 %dividend.addr.0.i.i.off0, 8
  %and = and i32 %shr85, 255
  %call86 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 26, i32 noundef %and) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end83.do.body333_crit_edge

if.end83.do.body333_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end89:                                         ; preds = %if.end83
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %and92 = and i32 %dividend.addr.0.i.i.off0, 255
  %call93 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 27, i32 noundef %and92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %if.end96, label %if.end89.do.body333_crit_edge

if.end89.do.body333_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end96:                                         ; preds = %if.end89
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call98 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 28, i32 noundef %dividend.addr.0.i.off0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %for.cond102.preheader, label %if.end96.do.body333_crit_edge

if.end96.do.body333_crit_edge:                    ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

for.cond102.preheader:                            ; preds = %if.end96
  %36 = ptrtoint ptr %f_frequency to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %f_frequency, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %37)
  %cmp109.not = icmp ugt i32 %37, 400000000
  br i1 %cmp109.not, label %for.inc113, label %for.cond102.preheader.if.end124_crit_edge

for.cond102.preheader.if.end124_crit_edge:        ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

for.inc113:                                       ; preds = %for.cond102.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 538000000, i32 %37)
  %cmp109.not.1 = icmp ugt i32 %37, 538000000
  br i1 %cmp109.not.1, label %for.inc113.1, label %for.inc113.fc2580_wr_reg_ff.exit_crit_edge

for.inc113.fc2580_wr_reg_ff.exit_crit_edge:       ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit

for.inc113.1:                                     ; preds = %for.inc113
  call void @__sanitizer_cov_trace_const_cmp4(i32 794000000, i32 %37)
  %cmp109.not.2 = icmp ugt i32 %37, 794000000
  br i1 %cmp109.not.2, label %for.inc113.2, label %for.inc113.1.fc2580_wr_reg_ff.exit_crit_edge

for.inc113.1.fc2580_wr_reg_ff.exit_crit_edge:     ; preds = %for.inc113.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit

for.inc113.2:                                     ; preds = %for.inc113.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000000, i32 %37)
  %cmp109.not.3 = icmp ugt i32 %37, 1000000000
  br i1 %cmp109.not.3, label %for.inc113.2.if.end124_crit_edge, label %for.inc113.2.fc2580_wr_reg_ff.exit_crit_edge

for.inc113.2.fc2580_wr_reg_ff.exit_crit_edge:     ; preds = %for.inc113.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit

for.inc113.2.if.end124_crit_edge:                 ; preds = %for.inc113.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

fc2580_wr_reg_ff.exit:                            ; preds = %for.inc113.2.fc2580_wr_reg_ff.exit_crit_edge, %for.inc113.1.fc2580_wr_reg_ff.exit_crit_edge, %for.inc113.fc2580_wr_reg_ff.exit_crit_edge
  %i.1755.lcssa.ph = phi i32 [ 3, %for.inc113.2.fc2580_wr_reg_ff.exit_crit_edge ], [ 2, %for.inc113.1.fc2580_wr_reg_ff.exit_crit_edge ], [ 1, %for.inc113.fc2580_wr_reg_ff.exit_crit_edge ]
  %r25_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa.ph, i32 1
  %38 = ptrtoint ptr %r25_val to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %r25_val, align 4
  %conv.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 37, i32 noundef %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool122.not = icmp eq i32 %call.i, 0
  br i1 %tobool122.not, label %fc2580_wr_reg_ff.exit.if.end124_crit_edge, label %fc2580_wr_reg_ff.exit.do.body333_crit_edge

fc2580_wr_reg_ff.exit.do.body333_crit_edge:       ; preds = %fc2580_wr_reg_ff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit.if.end124_crit_edge:        ; preds = %fc2580_wr_reg_ff.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end124

if.end124:                                        ; preds = %fc2580_wr_reg_ff.exit.if.end124_crit_edge, %for.inc113.2.if.end124_crit_edge, %for.cond102.preheader.if.end124_crit_edge
  %i.1755.lcssa771 = phi i32 [ %i.1755.lcssa.ph, %fc2580_wr_reg_ff.exit.if.end124_crit_edge ], [ 0, %for.cond102.preheader.if.end124_crit_edge ], [ 4, %for.inc113.2.if.end124_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.1755.lcssa771)
  %cmp.i514 = icmp eq i32 %i.1755.lcssa771, 4
  br i1 %cmp.i514, label %fc2580_wr_reg_ff.exit541, label %fc2580_wr_reg_ff.exit520

fc2580_wr_reg_ff.exit520:                         ; preds = %if.end124
  %r27_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa771, i32 2
  %42 = ptrtoint ptr %r27_val to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %r27_val, align 1
  %conv.i515 = zext i8 %43 to i32
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call.i517 = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 39, i32 noundef %conv.i515) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i517)
  %tobool127.not = icmp eq i32 %call.i517, 0
  br i1 %tobool127.not, label %fc2580_wr_reg_ff.exit527, label %fc2580_wr_reg_ff.exit520.do.body333_crit_edge

fc2580_wr_reg_ff.exit520.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit520
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit527:                         ; preds = %fc2580_wr_reg_ff.exit520
  %r28_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa771, i32 3
  %46 = ptrtoint ptr %r28_val to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %r28_val, align 2
  %conv.i522 = zext i8 %47 to i32
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call.i524 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef 40, i32 noundef %conv.i522) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i524)
  %tobool132.not = icmp eq i32 %call.i524, 0
  br i1 %tobool132.not, label %fc2580_wr_reg_ff.exit534, label %fc2580_wr_reg_ff.exit527.do.body333_crit_edge

fc2580_wr_reg_ff.exit527.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit527
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit534:                         ; preds = %fc2580_wr_reg_ff.exit527
  %r29_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa771, i32 4
  %50 = ptrtoint ptr %r29_val to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %r29_val, align 1
  %conv.i529 = zext i8 %51 to i32
  %52 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap, align 4
  %call.i531 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 41, i32 noundef %conv.i529) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i531)
  %tobool137.not = icmp eq i32 %call.i531, 0
  br i1 %tobool137.not, label %if.end149, label %fc2580_wr_reg_ff.exit534.do.body333_crit_edge

fc2580_wr_reg_ff.exit534.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit534
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit541:                         ; preds = %if.end124
  %r2b_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa771, i32 5
  %54 = ptrtoint ptr %r2b_val to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %r2b_val, align 4
  %conv.i536 = zext i8 %55 to i32
  %56 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap, align 4
  %call.i538 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 43, i32 noundef %conv.i536) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i538)
  %tobool142.not = icmp eq i32 %call.i538, 0
  br i1 %tobool142.not, label %fc2580_wr_reg_ff.exit548, label %fc2580_wr_reg_ff.exit541.do.body333_crit_edge

fc2580_wr_reg_ff.exit541.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit541
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit548:                         ; preds = %fc2580_wr_reg_ff.exit541
  %r2c_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa771, i32 6
  %58 = ptrtoint ptr %r2c_val to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %r2c_val, align 1
  %conv.i543 = zext i8 %59 to i32
  %60 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap, align 4
  %call.i545 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 44, i32 noundef %conv.i543) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i545)
  %tobool147.not = icmp eq i32 %call.i545, 0
  br i1 %tobool147.not, label %fc2580_wr_reg_ff.exit548.fc2580_wr_reg_ff.exit555_crit_edge, label %fc2580_wr_reg_ff.exit548.do.body333_crit_edge

fc2580_wr_reg_ff.exit548.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit548
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit548.fc2580_wr_reg_ff.exit555_crit_edge: ; preds = %fc2580_wr_reg_ff.exit548
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit555

if.end149:                                        ; preds = %fc2580_wr_reg_ff.exit534
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1755.lcssa771)
  %cmp.i549 = icmp eq i32 %i.1755.lcssa771, 0
  br i1 %cmp.i549, label %if.end149.fc2580_wr_reg_ff.exit562_crit_edge, label %if.end149.fc2580_wr_reg_ff.exit555_crit_edge

if.end149.fc2580_wr_reg_ff.exit555_crit_edge:     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit555

if.end149.fc2580_wr_reg_ff.exit562_crit_edge:     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit562

fc2580_wr_reg_ff.exit555:                         ; preds = %if.end149.fc2580_wr_reg_ff.exit555_crit_edge, %fc2580_wr_reg_ff.exit548.fc2580_wr_reg_ff.exit555_crit_edge
  %i.1755.lcssa776787 = phi i32 [ %i.1755.lcssa771, %if.end149.fc2580_wr_reg_ff.exit555_crit_edge ], [ 4, %fc2580_wr_reg_ff.exit548.fc2580_wr_reg_ff.exit555_crit_edge ]
  %r2d_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa776787, i32 7
  %62 = ptrtoint ptr %r2d_val to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %r2d_val, align 2
  %conv.i550 = zext i8 %63 to i32
  %64 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap, align 4
  %call.i552 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 45, i32 noundef %conv.i550) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i552)
  %tobool152.not = icmp eq i32 %call.i552, 0
  br i1 %tobool152.not, label %fc2580_wr_reg_ff.exit555.fc2580_wr_reg_ff.exit562_crit_edge, label %fc2580_wr_reg_ff.exit555.do.body333_crit_edge

fc2580_wr_reg_ff.exit555.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit555
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit555.fc2580_wr_reg_ff.exit562_crit_edge: ; preds = %fc2580_wr_reg_ff.exit555
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit562

fc2580_wr_reg_ff.exit562:                         ; preds = %fc2580_wr_reg_ff.exit555.fc2580_wr_reg_ff.exit562_crit_edge, %if.end149.fc2580_wr_reg_ff.exit562_crit_edge
  %i.1755.lcssa777 = phi i32 [ %i.1755.lcssa776787, %fc2580_wr_reg_ff.exit555.fc2580_wr_reg_ff.exit562_crit_edge ], [ %i.1755.lcssa771, %if.end149.fc2580_wr_reg_ff.exit562_crit_edge ]
  %r30_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 8
  %66 = ptrtoint ptr %r30_val to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %r30_val, align 1
  %conv.i557 = zext i8 %67 to i32
  %68 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap, align 4
  %call.i559 = tail call i32 @regmap_write(ptr noundef %69, i32 noundef 48, i32 noundef %conv.i557) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i559)
  %tobool157.not = icmp eq i32 %call.i559, 0
  br i1 %tobool157.not, label %if.end159, label %fc2580_wr_reg_ff.exit562.do.body333_crit_edge

fc2580_wr_reg_ff.exit562.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit562
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end159:                                        ; preds = %fc2580_wr_reg_ff.exit562
  br i1 %cmp.i514, label %fc2580_wr_reg_ff.exit569, label %if.end159.fc2580_wr_reg_ff.exit576_crit_edge

if.end159.fc2580_wr_reg_ff.exit576_crit_edge:     ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit576

fc2580_wr_reg_ff.exit569:                         ; preds = %if.end159
  %r44_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 9
  %70 = ptrtoint ptr %r44_val to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %r44_val, align 4
  %conv.i564 = zext i8 %71 to i32
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i566 = tail call i32 @regmap_write(ptr noundef %73, i32 noundef 68, i32 noundef %conv.i564) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i566)
  %tobool162.not = icmp eq i32 %call.i566, 0
  br i1 %tobool162.not, label %fc2580_wr_reg_ff.exit569.fc2580_wr_reg_ff.exit576_crit_edge, label %fc2580_wr_reg_ff.exit569.do.body333_crit_edge

fc2580_wr_reg_ff.exit569.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit569
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit569.fc2580_wr_reg_ff.exit576_crit_edge: ; preds = %fc2580_wr_reg_ff.exit569
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_wr_reg_ff.exit576

fc2580_wr_reg_ff.exit576:                         ; preds = %fc2580_wr_reg_ff.exit569.fc2580_wr_reg_ff.exit576_crit_edge, %if.end159.fc2580_wr_reg_ff.exit576_crit_edge
  %r50_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 10
  %74 = ptrtoint ptr %r50_val to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %r50_val, align 1
  %conv.i571 = zext i8 %75 to i32
  %76 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap, align 4
  %call.i573 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 80, i32 noundef %conv.i571) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i573)
  %tobool167.not = icmp eq i32 %call.i573, 0
  br i1 %tobool167.not, label %fc2580_wr_reg_ff.exit583, label %fc2580_wr_reg_ff.exit576.do.body333_crit_edge

fc2580_wr_reg_ff.exit576.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit576
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit583:                         ; preds = %fc2580_wr_reg_ff.exit576
  %r53_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 11
  %78 = ptrtoint ptr %r53_val to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %r53_val, align 2
  %conv.i578 = zext i8 %79 to i32
  %80 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap, align 4
  %call.i580 = tail call i32 @regmap_write(ptr noundef %81, i32 noundef 83, i32 noundef %conv.i578) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i580)
  %tobool172.not = icmp eq i32 %call.i580, 0
  br i1 %tobool172.not, label %fc2580_wr_reg_ff.exit590, label %fc2580_wr_reg_ff.exit583.do.body333_crit_edge

fc2580_wr_reg_ff.exit583.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit583
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit590:                         ; preds = %fc2580_wr_reg_ff.exit583
  %r5f_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 12
  %82 = ptrtoint ptr %r5f_val to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %r5f_val, align 1
  %conv.i585 = zext i8 %83 to i32
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call.i587 = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 95, i32 noundef %conv.i585) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i587)
  %tobool177.not = icmp eq i32 %call.i587, 0
  br i1 %tobool177.not, label %fc2580_wr_reg_ff.exit597, label %fc2580_wr_reg_ff.exit590.do.body333_crit_edge

fc2580_wr_reg_ff.exit590.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit590
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit597:                         ; preds = %fc2580_wr_reg_ff.exit590
  %r61_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 13
  %86 = ptrtoint ptr %r61_val to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %r61_val, align 4
  %conv.i592 = zext i8 %87 to i32
  %88 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap, align 4
  %call.i594 = tail call i32 @regmap_write(ptr noundef %89, i32 noundef 97, i32 noundef %conv.i592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i594)
  %tobool182.not = icmp eq i32 %call.i594, 0
  br i1 %tobool182.not, label %fc2580_wr_reg_ff.exit604, label %fc2580_wr_reg_ff.exit597.do.body333_crit_edge

fc2580_wr_reg_ff.exit597.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit597
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit604:                         ; preds = %fc2580_wr_reg_ff.exit597
  %r62_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 14
  %90 = ptrtoint ptr %r62_val to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %r62_val, align 1
  %conv.i599 = zext i8 %91 to i32
  %92 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap, align 4
  %call.i601 = tail call i32 @regmap_write(ptr noundef %93, i32 noundef 98, i32 noundef %conv.i599) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i601)
  %tobool187.not = icmp eq i32 %call.i601, 0
  br i1 %tobool187.not, label %fc2580_wr_reg_ff.exit611, label %fc2580_wr_reg_ff.exit604.do.body333_crit_edge

fc2580_wr_reg_ff.exit604.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit604
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit611:                         ; preds = %fc2580_wr_reg_ff.exit604
  %r63_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 15
  %94 = ptrtoint ptr %r63_val to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %r63_val, align 2
  %conv.i606 = zext i8 %95 to i32
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call.i608 = tail call i32 @regmap_write(ptr noundef %97, i32 noundef 99, i32 noundef %conv.i606) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i608)
  %tobool192.not = icmp eq i32 %call.i608, 0
  br i1 %tobool192.not, label %fc2580_wr_reg_ff.exit618, label %fc2580_wr_reg_ff.exit611.do.body333_crit_edge

fc2580_wr_reg_ff.exit611.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit611
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit618:                         ; preds = %fc2580_wr_reg_ff.exit611
  %r67_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 16
  %98 = ptrtoint ptr %r67_val to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %r67_val, align 1
  %conv.i613 = zext i8 %99 to i32
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  %call.i615 = tail call i32 @regmap_write(ptr noundef %101, i32 noundef 103, i32 noundef %conv.i613) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i615)
  %tobool197.not = icmp eq i32 %call.i615, 0
  br i1 %tobool197.not, label %fc2580_wr_reg_ff.exit625, label %fc2580_wr_reg_ff.exit618.do.body333_crit_edge

fc2580_wr_reg_ff.exit618.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit618
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit625:                         ; preds = %fc2580_wr_reg_ff.exit618
  %r68_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 17
  %102 = ptrtoint ptr %r68_val to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %r68_val, align 4
  %conv.i620 = zext i8 %103 to i32
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call.i622 = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 104, i32 noundef %conv.i620) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i622)
  %tobool202.not = icmp eq i32 %call.i622, 0
  br i1 %tobool202.not, label %fc2580_wr_reg_ff.exit632, label %fc2580_wr_reg_ff.exit625.do.body333_crit_edge

fc2580_wr_reg_ff.exit625.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit625
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit632:                         ; preds = %fc2580_wr_reg_ff.exit625
  %r69_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 18
  %106 = ptrtoint ptr %r69_val to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %r69_val, align 1
  %conv.i627 = zext i8 %107 to i32
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call.i629 = tail call i32 @regmap_write(ptr noundef %109, i32 noundef 105, i32 noundef %conv.i627) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i629)
  %tobool207.not = icmp eq i32 %call.i629, 0
  br i1 %tobool207.not, label %fc2580_wr_reg_ff.exit639, label %fc2580_wr_reg_ff.exit632.do.body333_crit_edge

fc2580_wr_reg_ff.exit632.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit632
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit639:                         ; preds = %fc2580_wr_reg_ff.exit632
  %r6a_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 19
  %110 = ptrtoint ptr %r6a_val to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %r6a_val, align 2
  %conv.i634 = zext i8 %111 to i32
  %112 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regmap, align 4
  %call.i636 = tail call i32 @regmap_write(ptr noundef %113, i32 noundef 106, i32 noundef %conv.i634) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i636)
  %tobool212.not = icmp eq i32 %call.i636, 0
  br i1 %tobool212.not, label %fc2580_wr_reg_ff.exit646, label %fc2580_wr_reg_ff.exit639.do.body333_crit_edge

fc2580_wr_reg_ff.exit639.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit639
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit646:                         ; preds = %fc2580_wr_reg_ff.exit639
  %r6b_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 20
  %114 = ptrtoint ptr %r6b_val to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %r6b_val, align 1
  %conv.i641 = zext i8 %115 to i32
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 4
  %call.i643 = tail call i32 @regmap_write(ptr noundef %117, i32 noundef 107, i32 noundef %conv.i641) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i643)
  %tobool217.not = icmp eq i32 %call.i643, 0
  br i1 %tobool217.not, label %fc2580_wr_reg_ff.exit653, label %fc2580_wr_reg_ff.exit646.do.body333_crit_edge

fc2580_wr_reg_ff.exit646.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit646
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit653:                         ; preds = %fc2580_wr_reg_ff.exit646
  %r6c_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 21
  %118 = ptrtoint ptr %r6c_val to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %r6c_val, align 4
  %conv.i648 = zext i8 %119 to i32
  %120 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap, align 4
  %call.i650 = tail call i32 @regmap_write(ptr noundef %121, i32 noundef 108, i32 noundef %conv.i648) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i650)
  %tobool222.not = icmp eq i32 %call.i650, 0
  br i1 %tobool222.not, label %fc2580_wr_reg_ff.exit660, label %fc2580_wr_reg_ff.exit653.do.body333_crit_edge

fc2580_wr_reg_ff.exit653.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit653
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit660:                         ; preds = %fc2580_wr_reg_ff.exit653
  %r6d_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 22
  %122 = ptrtoint ptr %r6d_val to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %r6d_val, align 1
  %conv.i655 = zext i8 %123 to i32
  %124 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap, align 4
  %call.i657 = tail call i32 @regmap_write(ptr noundef %125, i32 noundef 109, i32 noundef %conv.i655) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i657)
  %tobool227.not = icmp eq i32 %call.i657, 0
  br i1 %tobool227.not, label %fc2580_wr_reg_ff.exit667, label %fc2580_wr_reg_ff.exit660.do.body333_crit_edge

fc2580_wr_reg_ff.exit660.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit660
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

fc2580_wr_reg_ff.exit667:                         ; preds = %fc2580_wr_reg_ff.exit660
  %r6e_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 23
  %126 = ptrtoint ptr %r6e_val to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %r6e_val, align 2
  %conv.i662 = zext i8 %127 to i32
  %128 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap, align 4
  %call.i664 = tail call i32 @regmap_write(ptr noundef %129, i32 noundef 110, i32 noundef %conv.i662) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i664)
  %tobool232.not = icmp eq i32 %call.i664, 0
  br i1 %tobool232.not, label %if.else.i672, label %fc2580_wr_reg_ff.exit667.do.body333_crit_edge

fc2580_wr_reg_ff.exit667.do.body333_crit_edge:    ; preds = %fc2580_wr_reg_ff.exit667
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.else.i672:                                     ; preds = %fc2580_wr_reg_ff.exit667
  %r6f_val = getelementptr [5 x %struct.fc2580_freq_regs], ptr @fc2580_freq_regs_lut, i32 0, i32 %i.1755.lcssa777, i32 24
  %130 = ptrtoint ptr %r6f_val to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %r6f_val, align 1
  %conv.i669 = zext i8 %131 to i32
  %132 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap, align 4
  %call.i671 = tail call i32 @regmap_write(ptr noundef %133, i32 noundef 111, i32 noundef %conv.i669) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i671)
  %tobool237.not = icmp eq i32 %call.i671, 0
  br i1 %tobool237.not, label %for.cond240.preheader, label %if.else.i672.do.body333_crit_edge

if.else.i672.do.body333_crit_edge:                ; preds = %if.else.i672
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

for.cond240.preheader:                            ; preds = %if.else.i672
  %f_bandwidth244 = getelementptr inbounds %struct.fc2580_dev, ptr %dev, i32 0, i32 6
  %134 = ptrtoint ptr %f_bandwidth244 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %f_bandwidth244, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %135)
  %cmp247.not = icmp ugt i32 %135, 6000000
  br i1 %cmp247.not, label %for.inc251, label %for.cond240.preheader.if.end257_crit_edge

for.cond240.preheader.if.end257_crit_edge:        ; preds = %for.cond240.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end257

for.inc251:                                       ; preds = %for.cond240.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %135)
  %cmp247.not.1 = icmp ugt i32 %135, 7000000
  br i1 %cmp247.not.1, label %for.inc251.1, label %for.inc251.if.end257_crit_edge

for.inc251.if.end257_crit_edge:                   ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end257

for.inc251.1:                                     ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %135)
  %cmp247.not.2 = icmp ugt i32 %135, 8000000
  %spec.select788 = select i1 %cmp247.not.2, i32 3, i32 2
  br label %if.end257

if.end257:                                        ; preds = %for.inc251.1, %for.inc251.if.end257_crit_edge, %for.cond240.preheader.if.end257_crit_edge
  %i.2756.lcssa = phi i32 [ 0, %for.cond240.preheader.if.end257_crit_edge ], [ 1, %for.inc251.if.end257_crit_edge ], [ %spec.select788, %for.inc251.1 ]
  %136 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap, align 4
  %r36_val = getelementptr [4 x %struct.fc2580_if_filter], ptr @fc2580_if_filter_lut, i32 0, i32 %i.2756.lcssa, i32 1
  %138 = ptrtoint ptr %r36_val to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %r36_val, align 4
  %conv260 = zext i8 %139 to i32
  %call261 = tail call i32 @regmap_write(ptr noundef %137, i32 noundef 54, i32 noundef %conv260) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %if.end264, label %if.end257.do.body333_crit_edge

if.end257.do.body333_crit_edge:                   ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end264:                                        ; preds = %if.end257
  %140 = ptrtoint ptr %f_bandwidth244 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %f_bandwidth244, align 4
  %mul266 = mul i32 %141, 122
  %div268 = udiv i32 %mul266, 200
  %sub = sub nsw i32 8058000, %div268
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dev, align 4
  %conv270 = zext i32 %143 to i64
  %conv271 = zext i32 %sub to i64
  %mul272 = mul nuw i64 %conv271, %conv270
  %call273 = tail call i64 @div64_u64(i64 noundef %mul272, i64 noundef 1000000000000) #9
  %conv274 = trunc i64 %call273 to i32
  %144 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %conv274, ptr %uitmp, align 4
  %145 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %regmap, align 4
  %call276 = tail call i32 @regmap_write(ptr noundef %146, i32 noundef 55, i32 noundef %conv274) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call276)
  %tobool277.not = icmp eq i32 %call276, 0
  br i1 %tobool277.not, label %if.end279, label %if.end264.do.body333_crit_edge

if.end264.do.body333_crit_edge:                   ; preds = %if.end264
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end279:                                        ; preds = %if.end264
  %147 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regmap, align 4
  %r39_val = getelementptr [4 x %struct.fc2580_if_filter], ptr @fc2580_if_filter_lut, i32 0, i32 %i.2756.lcssa, i32 2
  %149 = ptrtoint ptr %r39_val to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %r39_val, align 1
  %conv282 = zext i8 %150 to i32
  %call283 = tail call i32 @regmap_write(ptr noundef %148, i32 noundef 57, i32 noundef %conv282) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283)
  %tobool284.not = icmp eq i32 %call283, 0
  br i1 %tobool284.not, label %if.end286, label %if.end279.do.body333_crit_edge

if.end279.do.body333_crit_edge:                   ; preds = %if.end279
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end286:                                        ; preds = %if.end279
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %151 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %151, 3
  %152 = ptrtoint ptr %uitmp to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 -193, ptr %uitmp, align 4
  br label %for.cond288

for.cond288:                                      ; preds = %if.end304.for.cond288_crit_edge, %if.end286
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %153 = load volatile i32, ptr @jiffies, align 128
  %sub289 = sub i32 %add, %153
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub289)
  %cmp290 = icmp slt i32 %sub289, 0
  %154 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %154)
  %.pr = load i32, ptr %uitmp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %.pr)
  %cmp312.not = icmp eq i32 %.pr, 192
  br i1 %cmp290, label %for.end311, label %land.rhs

land.rhs:                                         ; preds = %for.cond288
  br i1 %cmp312.not, label %land.rhs.cleanup_crit_edge, label %for.body294

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body294:                                      ; preds = %land.rhs
  %155 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regmap, align 4
  %call296 = call i32 @regmap_write(ptr noundef %156, i32 noundef 46, i32 noundef 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call296)
  %tobool297.not = icmp eq i32 %call296, 0
  br i1 %tobool297.not, label %if.end299, label %for.body294.do.body333_crit_edge

for.body294.do.body333_crit_edge:                 ; preds = %for.body294
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end299:                                        ; preds = %for.body294
  %157 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regmap, align 4
  %call301 = call i32 @regmap_read(ptr noundef %158, i32 noundef 47, ptr noundef nonnull %uitmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call301)
  %tobool302.not = icmp eq i32 %call301, 0
  br i1 %tobool302.not, label %if.end304, label %if.end299.do.body333_crit_edge

if.end299.do.body333_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end304:                                        ; preds = %if.end299
  %159 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %uitmp, align 4
  %and305 = and i32 %160, 192
  store i32 %and305, ptr %uitmp, align 4
  %161 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regmap, align 4
  %call307 = call i32 @regmap_write(ptr noundef %162, i32 noundef 46, i32 noundef 1) #9
  %tobool308.not = icmp eq i32 %call307, 0
  br i1 %tobool308.not, label %if.end304.for.cond288_crit_edge, label %if.end304.do.body333_crit_edge

if.end304.do.body333_crit_edge:                   ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body333

if.end304.for.cond288_crit_edge:                  ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond288

for.end311:                                       ; preds = %for.cond288
  br i1 %cmp312.not, label %for.end311.cleanup_crit_edge, label %do.body315

for.end311.cleanup_crit_edge:                     ; preds = %for.end311
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body315:                                       ; preds = %for.end311
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_set_params.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_set_params, %if.then327)) #9
          to label %cleanup [label %if.then327], !srcloc !125

if.then327:                                       ; preds = %do.body315
  call void @__sanitizer_cov_trace_pc() #11
  %dev328 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %163 = ptrtoint ptr %uitmp to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %uitmp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_set_params.__UNIQUE_ID_ddebug294, ptr noundef %dev328, ptr noundef nonnull @.str.21, i32 noundef %164) #9
  br label %cleanup

do.body333:                                       ; preds = %if.end304.do.body333_crit_edge, %if.end299.do.body333_crit_edge, %for.body294.do.body333_crit_edge, %if.end279.do.body333_crit_edge, %if.end264.do.body333_crit_edge, %if.end257.do.body333_crit_edge, %if.else.i672.do.body333_crit_edge, %fc2580_wr_reg_ff.exit667.do.body333_crit_edge, %fc2580_wr_reg_ff.exit660.do.body333_crit_edge, %fc2580_wr_reg_ff.exit653.do.body333_crit_edge, %fc2580_wr_reg_ff.exit646.do.body333_crit_edge, %fc2580_wr_reg_ff.exit639.do.body333_crit_edge, %fc2580_wr_reg_ff.exit632.do.body333_crit_edge, %fc2580_wr_reg_ff.exit625.do.body333_crit_edge, %fc2580_wr_reg_ff.exit618.do.body333_crit_edge, %fc2580_wr_reg_ff.exit611.do.body333_crit_edge, %fc2580_wr_reg_ff.exit604.do.body333_crit_edge, %fc2580_wr_reg_ff.exit597.do.body333_crit_edge, %fc2580_wr_reg_ff.exit590.do.body333_crit_edge, %fc2580_wr_reg_ff.exit583.do.body333_crit_edge, %fc2580_wr_reg_ff.exit576.do.body333_crit_edge, %fc2580_wr_reg_ff.exit569.do.body333_crit_edge, %fc2580_wr_reg_ff.exit562.do.body333_crit_edge, %fc2580_wr_reg_ff.exit555.do.body333_crit_edge, %fc2580_wr_reg_ff.exit548.do.body333_crit_edge, %fc2580_wr_reg_ff.exit541.do.body333_crit_edge, %fc2580_wr_reg_ff.exit534.do.body333_crit_edge, %fc2580_wr_reg_ff.exit527.do.body333_crit_edge, %fc2580_wr_reg_ff.exit520.do.body333_crit_edge, %fc2580_wr_reg_ff.exit.do.body333_crit_edge, %if.end96.do.body333_crit_edge, %if.end89.do.body333_crit_edge, %if.end83.do.body333_crit_edge, %if.end77.do.body333_crit_edge, %do.end72.do.body333_crit_edge
  %ret.0 = phi i32 [ %call74, %do.end72.do.body333_crit_edge ], [ %call80, %if.end77.do.body333_crit_edge ], [ %call86, %if.end83.do.body333_crit_edge ], [ %call93, %if.end89.do.body333_crit_edge ], [ %call98, %if.end96.do.body333_crit_edge ], [ %call.i, %fc2580_wr_reg_ff.exit.do.body333_crit_edge ], [ %call.i517, %fc2580_wr_reg_ff.exit520.do.body333_crit_edge ], [ %call.i524, %fc2580_wr_reg_ff.exit527.do.body333_crit_edge ], [ %call.i531, %fc2580_wr_reg_ff.exit534.do.body333_crit_edge ], [ %call.i538, %fc2580_wr_reg_ff.exit541.do.body333_crit_edge ], [ %call.i545, %fc2580_wr_reg_ff.exit548.do.body333_crit_edge ], [ %call.i552, %fc2580_wr_reg_ff.exit555.do.body333_crit_edge ], [ %call.i559, %fc2580_wr_reg_ff.exit562.do.body333_crit_edge ], [ %call.i566, %fc2580_wr_reg_ff.exit569.do.body333_crit_edge ], [ %call.i573, %fc2580_wr_reg_ff.exit576.do.body333_crit_edge ], [ %call.i580, %fc2580_wr_reg_ff.exit583.do.body333_crit_edge ], [ %call.i587, %fc2580_wr_reg_ff.exit590.do.body333_crit_edge ], [ %call.i594, %fc2580_wr_reg_ff.exit597.do.body333_crit_edge ], [ %call.i601, %fc2580_wr_reg_ff.exit604.do.body333_crit_edge ], [ %call.i608, %fc2580_wr_reg_ff.exit611.do.body333_crit_edge ], [ %call.i615, %fc2580_wr_reg_ff.exit618.do.body333_crit_edge ], [ %call.i622, %fc2580_wr_reg_ff.exit625.do.body333_crit_edge ], [ %call.i629, %fc2580_wr_reg_ff.exit632.do.body333_crit_edge ], [ %call.i636, %fc2580_wr_reg_ff.exit639.do.body333_crit_edge ], [ %call.i643, %fc2580_wr_reg_ff.exit646.do.body333_crit_edge ], [ %call.i650, %fc2580_wr_reg_ff.exit653.do.body333_crit_edge ], [ %call.i657, %fc2580_wr_reg_ff.exit660.do.body333_crit_edge ], [ %call.i664, %fc2580_wr_reg_ff.exit667.do.body333_crit_edge ], [ %call.i671, %if.else.i672.do.body333_crit_edge ], [ %call261, %if.end257.do.body333_crit_edge ], [ %call276, %if.end264.do.body333_crit_edge ], [ %call283, %if.end279.do.body333_crit_edge ], [ %call307, %if.end304.do.body333_crit_edge ], [ %call301, %if.end299.do.body333_crit_edge ], [ %call296, %for.body294.do.body333_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_set_params.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_set_params, %if.then345)) #9
          to label %cleanup [label %if.then345], !srcloc !125

if.then345:                                       ; preds = %do.body333
  call void @__sanitizer_cov_trace_pc() #11
  %dev346 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_set_params.__UNIQUE_ID_ddebug295, ptr noundef %dev346, ptr noundef nonnull @.str.14, i32 noundef %ret.0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then345, %do.body333, %if.then327, %do.body315, %for.end311.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.then5 ], [ 0, %if.then327 ], [ 0, %for.end311.cleanup_crit_edge ], [ %ret.0, %if.then345 ], [ 0, %do.body ], [ 0, %do.body315 ], [ %ret.0, %do.body333 ], [ 0, %land.rhs.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %uitmp) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_standby(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -12
  %client1.i = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_sleep.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_standby, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !125

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_sleep.__UNIQUE_ID_ddebug298, ptr noundef %dev4.i, ptr noundef nonnull @.str.23) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %active.i = getelementptr i8, ptr %sd, i32 196
  %2 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %active.i, align 4
  %regmap.i = getelementptr i8, ptr %sd, i32 -4
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 2, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end, label %do.body9.i

do.body9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_sleep.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_standby, %if.then21.i)) #9
          to label %cleanup [label %if.then21.i], !srcloc !125

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_sleep.__UNIQUE_ID_ddebug299, ptr noundef %dev22.i, ptr noundef nonnull @.str.14, i32 noundef %call5.i) #9
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call fastcc i32 @fc2580_set_params(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then21.i, %do.body9.i
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call5.i, %do.body9.i ], [ %call5.i, %if.then21.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_s_frequency(ptr noundef %sd, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_s_frequency.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_s_frequency, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_s_frequency.__UNIQUE_ID_ddebug303, ptr noundef %dev5, ptr noundef nonnull @.str.25, i32 noundef %3, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -12
  %frequency6 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %8 = ptrtoint ptr %frequency6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frequency6, align 4
  %10 = tail call i32 @llvm.umax.i32(i32 %9, i32 130000000)
  %11 = tail call i32 @llvm.umin.i32(i32 %10, i32 2000000000)
  %f_frequency = getelementptr i8, ptr %sd, i32 200
  %12 = ptrtoint ptr %f_frequency to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %f_frequency, align 4
  %call14 = tail call fastcc i32 @fc2580_set_params(ptr noundef %add.ptr.i)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_g_frequency(ptr nocapture noundef readonly %sd, ptr nocapture noundef %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_g_frequency.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_g_frequency, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_g_frequency.__UNIQUE_ID_ddebug302, ptr noundef %dev5, ptr noundef nonnull @.str.27, i32 noundef %3) #9
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
define internal i32 @fc2580_enum_freq_bands(ptr nocapture noundef readonly %sd, ptr nocapture noundef %band) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_enum_freq_bands.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_enum_freq_bands, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_enum_freq_bands.__UNIQUE_ID_ddebug308, ptr noundef %dev5, ptr noundef nonnull @.str.29, i32 noundef %3, i32 noundef %5, i32 noundef %7) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %index6 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 2
  %8 = ptrtoint ptr %index6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %if.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %capability10 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 3
  %10 = ptrtoint ptr %capability10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 5120, ptr %capability10, align 4
  %rangelow13 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 4
  %11 = ptrtoint ptr %rangelow13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 130000000, ptr %rangelow13, align 4
  %rangehigh16 = getelementptr inbounds %struct.v4l2_frequency_band, ptr %band, i32 0, i32 5
  %12 = ptrtoint ptr %rangehigh16 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2000000000, ptr %rangehigh16, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_g_tuner(ptr nocapture noundef readonly %sd, ptr noundef %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_g_tuner.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_g_tuner, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_g_tuner.__UNIQUE_ID_ddebug300, ptr noundef %dev5, ptr noundef nonnull @.str.31, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %name = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 1
  %call6 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str.32, i32 noundef 32) #9
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
  store i32 130000000, ptr %rangelow, align 4
  %rangehigh = getelementptr inbounds %struct.v4l2_tuner, ptr %v, i32 0, i32 5
  %7 = ptrtoint ptr %rangehigh to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2000000000, ptr %rangehigh, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_s_tuner(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %client1 = getelementptr i8, ptr %sd, i32 -8
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_s_tuner.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_s_tuner, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !125

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %v, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_s_tuner.__UNIQUE_ID_ddebug301, ptr noundef %dev5, ptr noundef nonnull @.str.31, i32 noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_dvb_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %client1.i = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_init.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_dvb_init, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !125

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_init.__UNIQUE_ID_ddebug296, ptr noundef %dev4.i, ptr noundef nonnull @.str.23) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %regmap.i = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 2
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.043.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %do.end.i
  %i.043.i = phi i32 [ 0, %do.end.i ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %arrayidx.i = getelementptr [16 x %struct.fc2580_reg_val], ptr @fc2580_init_reg_vals, i32 0, i32 %i.043.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %7 to i32
  %val.i = getelementptr [16 x %struct.fc2580_reg_val], ptr @fc2580_init_reg_vals, i32 0, i32 %i.043.i, i32 1
  %8 = ptrtoint ptr %val.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %val.i, align 1
  %conv6.i = zext i8 %9 to i32
  %call7.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef %conv.i, i32 noundef %conv6.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %for.cond.i, label %do.body11.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %active.i = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %active.i, align 4
  br label %fc2580_init.exit

do.body11.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_dvb_init, %if.then23.i)) #9
          to label %fc2580_init.exit [label %if.then23.i], !srcloc !125

if.then23.i:                                      ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev24.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_init.__UNIQUE_ID_ddebug297, ptr noundef %dev24.i, ptr noundef nonnull @.str.14, i32 noundef %call7.i) #9
  br label %fc2580_init.exit

fc2580_init.exit:                                 ; preds = %if.then23.i, %do.body11.i, %for.end.i
  ret i32 %call7.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_dvb_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %client1.i = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_sleep.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_dvb_sleep, %if.then.i)) #9
          to label %do.end.i [label %if.then.i], !srcloc !125

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev4.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_sleep.__UNIQUE_ID_ddebug298, ptr noundef %dev4.i, ptr noundef nonnull @.str.23) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %active.i = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %active.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %active.i, align 4
  %regmap.i = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 2, i32 noundef 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %do.end.i.fc2580_sleep.exit_crit_edge, label %do.body9.i

do.end.i.fc2580_sleep.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fc2580_sleep.exit

do.body9.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fc2580_sleep.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fc2580_dvb_sleep, %if.then21.i)) #9
          to label %fc2580_sleep.exit [label %if.then21.i], !srcloc !125

if.then21.i:                                      ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev22.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fc2580_sleep.__UNIQUE_ID_ddebug299, ptr noundef %dev22.i, ptr noundef nonnull @.str.14, i32 noundef %call5.i) #9
  br label %fc2580_sleep.exit

fc2580_sleep.exit:                                ; preds = %if.then21.i, %do.body9.i, %do.end.i.fc2580_sleep.exit_crit_edge
  ret i32 %call5.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fc2580_dvb_set_params(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %2 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dtv_property_cache, align 4
  %f_frequency = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %f_frequency to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %f_frequency, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bandwidth_hz, align 4
  %f_bandwidth = getelementptr inbounds %struct.fc2580_dev, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %f_bandwidth to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %f_bandwidth, align 4
  %call = tail call fastcc i32 @fc2580_set_params(ptr noundef %1)
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fc2580_dvb_get_if_frequency(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %frequency) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frequency, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !23, !24, !26, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !100, !101, !103, !105, !106, !108, !110, !112, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_fc2580__314_620_fc2580_driver_init6, !1, !"__initcall__kmod_fc2580__314_620_fc2580_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/fc2580.c", i32 620, i32 1}
!2 = !{ptr @__exitcall_fc2580_driver_exit, !1, !"__exitcall_fc2580_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description315, !4, !"__UNIQUE_ID_description315", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/fc2580.c", i32 622, i32 1}
!5 = !{ptr @__UNIQUE_ID_author316, !6, !"__UNIQUE_ID_author316", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/fc2580.c", i32 623, i32 1}
!7 = !{ptr @__UNIQUE_ID_file317, !8, !"__UNIQUE_ID_file317", i1 false, i1 false}
!8 = !{!"../drivers/media/tuners/fc2580.c", i32 624, i32 1}
!9 = !{ptr @__UNIQUE_ID_license318, !8, !"__UNIQUE_ID_license318", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/fc2580.c", i32 612, i32 11}
!12 = !{ptr @fc2580_driver, !13, !"fc2580_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/tuners/fc2580.c", i32 610, i32 26}
!14 = !{ptr @fc2580_probe.regmap_config, !15, !"regmap_config", i1 false, i1 false}
!15 = !{!"../drivers/media/tuners/fc2580.c", i32 517, i32 36}
!16 = !{ptr @fc2580_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/media/tuners/fc2580.c", i32 533, i32 16}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/tuners/fc2580.c", i32 544, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @fc2580_probe.__UNIQUE_ID_ddebug311, !20, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!24 = !{ptr @fc2580_probe._key.5, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/fc2580.c", i32 557, i32 2}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/fc2580.c", i32 567, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @fc2580_probe._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @fc2580_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/fc2580.c", i32 582, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @fc2580_probe._entry.10, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @fc2580_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/fc2580.c", i32 587, i32 2}
!40 = !{ptr @fc2580_probe.__UNIQUE_ID_ddebug312, !39, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!41 = !{ptr @fc2580_ctrl_ops, !42, !"fc2580_ctrl_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/fc2580.c", i32 494, i32 35}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/tuners/fc2580.c", i32 473, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @fc2580_s_ctrl.__UNIQUE_ID_ddebug309, !44, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/tuners/fc2580.c", i32 488, i32 3}
!49 = !{ptr @fc2580_s_ctrl.__UNIQUE_ID_ddebug310, !48, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/fc2580.c", i32 38, i32 3}
!52 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @fc2580_set_params.__UNIQUE_ID_ddebug292, !51, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/fc2580.c", i32 94, i32 2}
!56 = !{ptr @fc2580_set_params.__UNIQUE_ID_ddebug293, !55, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/fc2580.c", i32 267, i32 3}
!59 = !{ptr @fc2580_set_params.__UNIQUE_ID_ddebug294, !58, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!60 = !{ptr @fc2580_set_params.__UNIQUE_ID_ddebug295, !61, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/fc2580.c", i32 271, i32 2}
!62 = !{ptr @fc2580_pll_lut, !63, !"fc2580_pll_lut", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/fc2580_priv.h", i32 47, i32 32}
!64 = !{ptr @fc2580_freq_regs_lut, !65, !"fc2580_freq_regs_lut", i1 false, i1 false}
!65 = !{!"../drivers/media/tuners/fc2580_priv.h", i32 96, i32 38}
!66 = !{ptr @fc2580_if_filter_lut, !67, !"fc2580_if_filter_lut", i1 false, i1 false}
!67 = !{!"../drivers/media/tuners/fc2580_priv.h", i32 60, i32 38}
!68 = distinct !{null, !69, !"bands", i1 false, i1 false}
!69 = !{!"../drivers/media/tuners/fc2580.c", i32 361, i32 41}
!70 = !{ptr @fc2580_subdev_ops, !71, !"fc2580_subdev_ops", i1 false, i1 false}
!71 = !{!"../drivers/media/tuners/fc2580.c", i32 463, i32 37}
!72 = !{ptr @fc2580_subdev_tuner_ops, !73, !"fc2580_subdev_tuner_ops", i1 false, i1 false}
!73 = !{!"../drivers/media/tuners/fc2580.c", i32 454, i32 43}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/tuners/fc2580.c", i32 301, i32 2}
!76 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @fc2580_sleep.__UNIQUE_ID_ddebug298, !75, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!78 = !{ptr @fc2580_sleep.__UNIQUE_ID_ddebug299, !79, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/fc2580.c", i32 310, i32 2}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/fc2580.c", i32 428, i32 2}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @fc2580_s_frequency.__UNIQUE_ID_ddebug303, !81, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!84 = !{ptr @.str.26, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/tuners/fc2580.c", i32 417, i32 2}
!86 = !{ptr @.str.27, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @fc2580_g_frequency.__UNIQUE_ID_ddebug302, !85, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/fc2580.c", i32 442, i32 2}
!90 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @fc2580_enum_freq_bands.__UNIQUE_ID_ddebug308, !89, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!92 = !{ptr @.str.30, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/tuners/fc2580.c", i32 393, i32 2}
!94 = !{ptr @.str.31, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @fc2580_g_tuner.__UNIQUE_ID_ddebug300, !93, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!96 = !{ptr @.str.32, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/media/tuners/fc2580.c", i32 395, i32 19}
!98 = !{ptr @.str.33, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/tuners/fc2580.c", i32 408, i32 2}
!100 = !{ptr @fc2580_s_tuner.__UNIQUE_ID_ddebug301, !99, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!101 = !{ptr @fc2580_dvb_tuner_ops, !102, !"fc2580_dvb_tuner_ops", i1 false, i1 false}
!102 = !{!"../drivers/media/tuners/fc2580.c", i32 343, i32 35}
!103 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/tuners/fc2580.c", i32 280, i32 2}
!105 = !{ptr @fc2580_init.__UNIQUE_ID_ddebug296, !104, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!106 = !{ptr @fc2580_init.__UNIQUE_ID_ddebug297, !107, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!107 = !{!"../drivers/media/tuners/fc2580.c", i32 292, i32 2}
!108 = !{ptr @fc2580_init_reg_vals, !109, !"fc2580_init_reg_vals", i1 false, i1 false}
!109 = !{!"../drivers/media/tuners/fc2580_priv.h", i32 22, i32 36}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/tuners/fc2580.c", i32 595, i32 2}
!112 = !{ptr @fc2580_remove.__UNIQUE_ID_ddebug313, !111, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!113 = !{ptr @fc2580_id_table, !114, !"fc2580_id_table", i1 false, i1 false}
!114 = !{!"../drivers/media/tuners/fc2580.c", i32 604, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i64 2148280851, i64 2148280856, i64 2148280869, i64 2148280913, i64 2148280947, i64 2148280968}
!126 = !{i8 0, i8 2}
!127 = !{!"branch_weights", i32 2000, i32 1}
!128 = !{i64 2148306038, i64 2148306318, i64 2148306652, i64 2148306986}
