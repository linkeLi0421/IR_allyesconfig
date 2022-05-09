; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/au8522_decoder.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/au8522_decoder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.v4l2_ctrl_ops = type { ptr, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_audio_ops = type { ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.au8522_register_config = type { i16, [8 x i8] }
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
%struct.au8522_state = type { ptr, ptr, i8, %struct.tuner_i2c_props, %struct.list_head, %struct.au8522_config, %struct.dvb_frontend, i32, i32, i32, i32, %struct.v4l2_subdev, i64, i32, i32, i32, i32, %struct.v4l2_ctrl_handler, [3 x %struct.media_pad] }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.au8522_config = type { i8, i8, ptr, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.86], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.86 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.87 }>
%union.anon.87 = type { i64 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.91 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.91 = type { %struct.anon.92 }
%struct.anon.92 = type { i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.96 }
%union.anon.96 = type { i32, [28 x i8] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.93, %union.anon.94, i32, ptr, i32, %struct.anon.95, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.93 = type { i64 }
%union.anon.94 = type { ptr }
%struct.anon.95 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_author292 = internal constant [40 x i8] c"au8522_decoder.author=Devin Heitmueller\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [63 x i8] c"au8522_decoder.file=drivers/media/dvb-frontends/au8522_decoder\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [27 x i8] c"au8522_decoder.license=GPL\00", section ".modinfo", align 1
@__param_str_analog_debug = internal constant [28 x i8] c"au8522_decoder.analog_debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@au8522_analog_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_analog_debug = internal constant %struct.kernel_param { ptr @__param_str_analog_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @au8522_analog_debug } }, section "__param", align 4
@__UNIQUE_ID_analog_debugtype295 = internal constant [41 x i8] c"au8522_decoder.parmtype=analog_debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_analog_debug296 = internal constant [82 x i8] c"au8522_decoder.parm=analog_debug:Analog debugging messages [0=Off (default) 1=On]\00", section ".modinfo", align 1
@__initcall__kmod_au8522_decoder__297_786_au8522_driver_init6 = internal global ptr @au8522_driver_init, section ".initcall6.init", align 4
@au8522_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @au8522_probe, ptr @au8522_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @au8522_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_au8522_driver_exit = internal global ptr @au8522_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"au8522\00", [25 x i8] zeroinitializer }, align 32
@au8522_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"au8522\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@au8522_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013au8522_decoder allocation failed\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"au8522_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/media/dvb-frontends/au8522_decoder.c\00", [51 x i8] zeroinitializer }, align 32
@au8522_probe._entry_ptr = internal global ptr @au8522_probe._entry, section ".printk_index", align 4
@au8522_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 697, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016au8522_decoder creating new instance...\0A\00", [53 x i8] zeroinitializer }, align 32
@au8522_probe._entry_ptr.6 = internal global ptr @au8522_probe._entry.4, section ".printk_index", align 4
@au8522_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016au8522_decoder attach existing instance.\0A\00", [52 x i8] zeroinitializer }, align 32
@au8522_probe._entry_ptr.9 = internal global ptr @au8522_probe._entry.7, section ".printk_index", align 4
@au8522_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @au8522_core_ops, ptr @au8522_tuner_ops, ptr @au8522_audio_ops, ptr @au8522_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@au8522_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016%s %d-%04x: failed to initialize media entity!\0A\00", [46 x i8] zeroinitializer }, align 32
@au8522_probe._entry_ptr.12 = internal global ptr @au8522_probe._entry.10, section ".printk_index", align 4
@au8522_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"au8522_decoder:729:(hdl)->_lock\00", [32 x i8] zeroinitializer }, align 32
@au8522_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr null, ptr null, ptr @au8522_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@au8522_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @v4l2_ctrl_subdev_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_g_register, ptr @au8522_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@au8522_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_g_tuner, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@au8522_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr null, ptr null, ptr @au8522_s_audio_routing, ptr null }, [16 x i8] zeroinitializer }, align 32
@au8522_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @au8522_s_video_routing, ptr null, ptr null, ptr @au8522_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @au8522_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@set_audio_input._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Unsupported audio mode requested! mode=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_audio_input\00", [16 x i8] zeroinitializer }, align 32
@set_audio_input._entry_ptr = internal global ptr @set_audio_input._entry, section ".printk_index", align 4
@lpfilter_coef = internal constant { [72 x %struct.au8522_register_config], [176 x i8] } { [72 x %struct.au8522_register_config] [%struct.au8522_register_config { i16 1547, [8 x i8] c"!\0B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1548, [8 x i8] c"\AD\AD\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1549, [8 x i8] c"p\F0\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1550, [8 x i8] c"\EA\E9\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1551, [8 x i8] c"\DD\DD\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1552, [8 x i8] c"\08d\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1553, [8 x i8] c"``\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1554, [8 x i8] c"\F8\B2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1555, [8 x i8] c"\01\02\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1556, [8 x i8] c"\E4\B4\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1557, [8 x i8] c"\19\02\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1558, [8 x i8] c"\AE.\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1559, [8 x i8] c"\EE\C5\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1560, [8 x i8] c"VV\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1561, [8 x i8] c"0X\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1562, [8 x i8] c"\F9\F8\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1563, [8 x i8] c"$d\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1564, [8 x i8] c"\07\07\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1565, [8 x i8] c"00\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1566, [8 x i8] c"\A9\ED\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1567, [8 x i8] c"\09\0B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1568, [8 x i8] c"B\C2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1569, [8 x i8] c"\1D*\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1570, [8 x i8] c"\D6V\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1571, [8 x i8] c"\95\8B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1572, [8 x i8] c"++\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1573, [8 x i8] c"0$\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1574, [8 x i8] c">>\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1575, [8 x i8] c"b\E2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1576, [8 x i8] c"\E9\F5\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1577, [8 x i8] c"\99\19\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1578, [8 x i8] c"\D4\11\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1579, [8 x i8] c"\03\04\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1580, [8 x i8] c"\B5\85\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1581, [8 x i8] c"\1E \00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1582, [8 x i8] c"*\EA\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1583, [8 x i8] c"\D7\D2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1584, [8 x i8] c"\15\15\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1585, [8 x i8] c"\A3\A9\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1586, [8 x i8] c"\1F\1F\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1587, [8 x i8] c"\F9\D1\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1588, [8 x i8] c"\C0\C3\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1589, [8 x i8] c"M\8D\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1590, [8 x i8] c"!1\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1591, [8 x i8] c"\83\83\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1592, [8 x i8] c"\08\8C\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1593, [8 x i8] c"\19\19\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1594, [8 x i8] c"E\A5\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1595, [8 x i8] c"\EF\EC\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1596, [8 x i8] c"\8A\8A\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1597, [8 x i8] c"\F4\F6\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1598, [8 x i8] c"\8F\8F\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1599, [8 x i8] c"D\0C\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1600, [8 x i8] c"\EF\F0\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1601, [8 x i8] c"ff\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1602, [8 x i8] c"\CC\D2\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1603, [8 x i8] c"AA\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1604, [8 x i8] c"c\93\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1605, [8 x i8] c"\8E\8E\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1606, [8 x i8] c"\A2B\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1607, [8 x i8] c"{{\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1608, [8 x i8] c"\04\04\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1609, [8 x i8] zeroinitializer }, %struct.au8522_register_config { i16 1610, [8 x i8] c"@@\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1611, [8 x i8] c"\8C\98\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1612, [8 x i8] zeroinitializer }, %struct.au8522_register_config { i16 1613, [8 x i8] c"c\C3\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1614, [8 x i8] c"\04\04\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1615, [8 x i8] c"  \00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1616, [8 x i8] zeroinitializer }, %struct.au8522_register_config { i16 1617, [8 x i8] c"@@\00\00\00\00\00\00" }, %struct.au8522_register_config { i16 1618, [8 x i8] c"\01\01\00\00\00\00\00\00" }], [176 x i8] zeroinitializer }, align 32
@au8522_s_video_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 572, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013au8522 mode not currently supported\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"au8522_s_video_routing\00", [41 x i8] zeroinitializer }, align 32
@au8522_s_video_routing._entry_ptr = internal global ptr @au8522_s_video_routing._entry, section ".printk_index", align 4
@filter_coef = internal constant { [30 x %struct.au8522_register_config], [84 x i8] } { [30 x %struct.au8522_register_config] [%struct.au8522_register_config { i16 1040, [8 x i8] c"%\00%%\00\00\00\00" }, %struct.au8522_register_config { i16 1041, [8 x i8] c" \00  \00\00\00\00" }, %struct.au8522_register_config { i16 1042, [8 x i8] c"\03\00\03\03\00\00\00\00" }, %struct.au8522_register_config { i16 1043, [8 x i8] c"\E6\00\E6\E6\00\00\00\00" }, %struct.au8522_register_config { i16 1044, [8 x i8] c"@\00@@\00\00\00\00" }, %struct.au8522_register_config { i16 1045, [8 x i8] c"\1B\00\1B\1B\00\00\00\00" }, %struct.au8522_register_config { i16 1046, [8 x i8] c"\C0\00\C0\04\00\00\00\00" }, %struct.au8522_register_config { i16 1047, [8 x i8] c"\04\00\04\04\00\00\00\00" }, %struct.au8522_register_config { i16 1048, [8 x i8] c"\8C\00\8C\8C\00\00\00\00" }, %struct.au8522_register_config { i16 1049, [8 x i8] c"\A0@\A0\A0@@@\00" }, %struct.au8522_register_config { i16 1050, [8 x i8] c"!\09!!\09\09\09\00" }, %struct.au8522_register_config { i16 1051, [8 x i8] c"l8ll888\00" }, %struct.au8522_register_config { i16 1052, [8 x i8] c"\03\FF\03\03\FF\FF\FF\00" }, %struct.au8522_register_config { i16 1053, [8 x i8] c"\BF\C7\BF\BF\C7\C7\C7\00" }, %struct.au8522_register_config { i16 1054, [8 x i8] c"\A0\DF\A0\A0\DF\DF\DF\00" }, %struct.au8522_register_config { i16 1055, [8 x i8] c"\10\06\10\10\06\06\06\00" }, %struct.au8522_register_config { i16 1056, [8 x i8] c"\AE0\AE\AE000\00" }, %struct.au8522_register_config { i16 1057, [8 x i8] c"\C4\01\C4\C4\01\01\01\00" }, %struct.au8522_register_config { i16 1058, [8 x i8] c"T\DDTT\DD\DD\DD\00" }, %struct.au8522_register_config { i16 1059, [8 x i8] c"\D0\AF\D0\D0\AF\AF\AF\00" }, %struct.au8522_register_config { i16 1060, [8 x i8] c"\1C\F7\1C\1C\F7\F7\F7\00" }, %struct.au8522_register_config { i16 1061, [8 x i8] c"v\DBvv\DB\DB\DB\00" }, %struct.au8522_register_config { i16 1062, [8 x i8] c"a\C0aa\C0\C0\C0\00" }, %struct.au8522_register_config { i16 1063, [8 x i8] c"\D1/\D1\D1///\00" }, %struct.au8522_register_config { i16 1064, [8 x i8] c"\84\D8\84\84\D8\D8\D8\00" }, %struct.au8522_register_config { i16 1065, [8 x i8] c"\06\FB\06\06\FB\FB\FB\00" }, %struct.au8522_register_config { i16 1066, [8 x i8] c"!\D5!!\D5\D5\D5\00" }, %struct.au8522_register_config { i16 1067, [8 x i8] c"\0A>\0A\0A>>>\00" }, %struct.au8522_register_config { i16 1068, [8 x i8] c"\E6\15\E6\E6\15\15\15\00" }, %struct.au8522_register_config { i16 1069, [8 x i8] c"\014\01\01444\00" }], [84 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.21 = internal global [6 x i64] [i64 4, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779]
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"au8522_analog_debug\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 30, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"au8522_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 777, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 779, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"au8522_id\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 770, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 693, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 697, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 701, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [11 x i8] c"au8522_ops\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 659, i32 37 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 723, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 729, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"au8522_ctrl_ops\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 666, i32 35 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"au8522_core_ops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 637, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"au8522_tuner_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 645, i32 43 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"au8522_audio_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 649, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"au8522_video_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 653, i32 43 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 398, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [14 x i8] c"lpfilter_coef\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 90, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 572, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"filter_coef\00", align 1
@___asan_gen_.110 = private constant [48 x i8] c"../drivers/media/dvb-frontends/au8522_decoder.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 48, i32 44 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_analog_debug296, ptr @__UNIQUE_ID_analog_debugtype295, ptr @__UNIQUE_ID_author292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_au8522_driver_exit, ptr @__initcall__kmod_au8522_decoder__297_786_au8522_driver_init6, ptr @__param_analog_debug, ptr @au8522_driver_exit, ptr @au8522_probe._entry, ptr @au8522_probe._entry.10, ptr @au8522_probe._entry.4, ptr @au8522_probe._entry.7, ptr @au8522_probe._entry_ptr, ptr @au8522_probe._entry_ptr.12, ptr @au8522_probe._entry_ptr.6, ptr @au8522_probe._entry_ptr.9, ptr @au8522_s_video_routing._entry, ptr @au8522_s_video_routing._entry_ptr, ptr @set_audio_input._entry, ptr @set_audio_input._entry_ptr, ptr @au8522_analog_debug, ptr @au8522_driver, ptr @.str, ptr @au8522_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @au8522_ops, ptr @.str.11, ptr @au8522_probe._key, ptr @.str.13, ptr @au8522_ctrl_ops, ptr @au8522_core_ops, ptr @au8522_tuner_ops, ptr @au8522_audio_ops, ptr @au8522_video_ops, ptr @.str.14, ptr @.str.15, ptr @lpfilter_coef, ptr @.str.16, ptr @.str.17, ptr @filter_coef], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_analog_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_input._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfilter_coef to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @au8522_s_video_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_coef to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @au8522_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @au8522_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @au8522_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_probe(ptr noundef %client, ptr nocapture noundef readnone %did) #2 align 64 {
entry:
  %state = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #5
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %state, align 4, !annotation !78
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %conv = trunc i16 %10 to i8
  %call2 = call i32 @au8522_get_state(ptr noundef nonnull %state, ptr noundef %8, i8 noundef zeroext %conv) #5
  %11 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call2, label %do.end12 [
    i32 0, label %do.end
    i32 1, label %if.end.sw.epilog_crit_edge
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #8
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end12, %if.end.sw.epilog_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %do.end12 ], [ @.str.5, %if.end.sw.epilog_crit_edge ]
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.8.sink) #8
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state, align 4
  %config = getelementptr inbounds %struct.au8522_state, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 71, ptr %config, align 4
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %i2c = getelementptr inbounds %struct.au8522_state, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %i2c, align 4
  %sd16 = getelementptr inbounds %struct.au8522_state, ptr %13, i32 0, i32 11
  call void @v4l2_i2c_subdev_init(ptr noundef %sd16, ptr noundef %client, ptr noundef nonnull @au8522_ops) #5
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %flags = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 18, i32 0, i32 4
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %flags, align 4
  %sig_type = getelementptr inbounds %struct.au8522_state, ptr %19, i32 0, i32 18, i32 0, i32 3
  %21 = ptrtoint ptr %sig_type to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %sig_type, align 8
  %flags21 = getelementptr %struct.au8522_state, ptr %19, i32 0, i32 18, i32 1, i32 4
  %22 = ptrtoint ptr %flags21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %flags21, align 4
  %23 = load ptr, ptr %state, align 4
  %sig_type24 = getelementptr %struct.au8522_state, ptr %23, i32 0, i32 18, i32 1, i32 3
  %24 = ptrtoint ptr %sig_type24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %sig_type24, align 8
  %25 = load ptr, ptr %state, align 4
  %flags27 = getelementptr %struct.au8522_state, ptr %25, i32 0, i32 18, i32 2, i32 4
  %26 = ptrtoint ptr %flags27 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %flags27, align 4
  %27 = load ptr, ptr %state, align 4
  %sig_type30 = getelementptr %struct.au8522_state, ptr %27, i32 0, i32 18, i32 2, i32 3
  %28 = ptrtoint ptr %sig_type30 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %sig_type30, align 8
  %function = getelementptr inbounds %struct.au8522_state, ptr %13, i32 0, i32 11, i32 0, i32 3
  %29 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 131076, ptr %function, align 4
  %30 = load ptr, ptr %state, align 4
  %pads32 = getelementptr inbounds %struct.au8522_state, ptr %30, i32 0, i32 18
  %call33 = call i32 @media_entity_pads_init(ptr noundef %sd16, i16 noundef zeroext 3, ptr noundef %pads32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end38, label %if.end45

do.end38:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %driver, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %35 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr.i, align 4
  %39 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %addr, align 2
  %conv43 = zext i16 %40 to i32
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %34, i32 noundef %38, i32 noundef %conv43) #8
  br label %cleanup

if.end45:                                         ; preds = %sw.epilog
  %41 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %state, align 4
  %hdl46 = getelementptr inbounds %struct.au8522_state, ptr %42, i32 0, i32 17
  %call48 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl46, i32 noundef 4, ptr noundef nonnull @au8522_probe._key, ptr noundef nonnull @.str.13) #5
  %call49 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl46, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 109) #5
  %call50 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl46, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 121) #5
  %call51 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl46, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #5
  %call52 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl46, ptr noundef nonnull @au8522_ctrl_ops, i32 noundef 9963779, i64 noundef -32768, i64 noundef 32767, i64 noundef 1, i64 noundef 0) #5
  %ctrl_handler = getelementptr inbounds %struct.au8522_state, ptr %13, i32 0, i32 11, i32 8
  %43 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %hdl46, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.au8522_state, ptr %42, i32 0, i32 17, i32 9
  %44 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool53.not = icmp eq i32 %45, 0
  br i1 %tobool53.not, label %if.end56, label %if.then54

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl46) #5
  %46 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %state, align 4
  call void @au8522_release_state(ptr noundef %47) #5
  br label %cleanup

if.end56:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %state, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %client, ptr %49, align 8
  %51 = load ptr, ptr %state, align 4
  %std = getelementptr inbounds %struct.au8522_state, ptr %51, i32 0, i32 12
  %52 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 4096, ptr %std, align 8
  %vid_input = getelementptr inbounds %struct.au8522_state, ptr %51, i32 0, i32 13
  %53 = ptrtoint ptr %vid_input to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %vid_input, align 8
  %aud_input = getelementptr inbounds %struct.au8522_state, ptr %51, i32 0, i32 14
  %54 = ptrtoint ptr %aud_input to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %aud_input, align 4
  %id = getelementptr inbounds %struct.au8522_state, ptr %51, i32 0, i32 15
  %55 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 8522, ptr %id, align 8
  %rev = getelementptr inbounds %struct.au8522_state, ptr %51, i32 0, i32 16
  %56 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %rev, align 4
  %call57 = call i32 @au8522_writereg(ptr noundef %51, i16 noundef zeroext 262, i8 noundef zeroext 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.then54, %do.end38, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %do.end38 ], [ %45, %if.then54 ], [ 0, %if.end56 ], [ -5, %do.end ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #5
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #5
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1108
  tail call void @au8522_release_state(ptr noundef %add.ptr.i) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_get_state(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_init_class(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_ctrl_new_std(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @au8522_release_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @au8522_writereg(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_subdev_log_status(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_g_register(ptr noundef %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1108
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i16
  %call2 = tail call zeroext i8 @au8522_readreg(ptr noundef %add.ptr.i, i16 noundef zeroext %conv) #5
  %conv3 = zext i8 %call2 to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %conv3, ptr %val, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_s_register(ptr noundef %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1108
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i16
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv2 = trunc i64 %3 to i8
  %call3 = tail call i32 @au8522_writereg(ptr noundef %add.ptr.i, i16 noundef zeroext %conv, i8 noundef zeroext %conv2) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @au8522_readreg(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_g_tuner(ptr noundef %sd, ptr nocapture noundef %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1108
  %call1 = tail call zeroext i8 @au8522_readreg(ptr noundef %add.ptr.i, i16 noundef zeroext 0) #5
  %call2 = tail call zeroext i8 @au8522_readreg(ptr noundef %add.ptr.i, i16 noundef zeroext 126) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -94, i8 %call1)
  %cmp = icmp ne i8 %call1, -94
  %0 = and i8 %call2, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  %or.cond = select i1 %cmp, i1 true, i1 %tobool.not
  %spec.select = select i1 %or.cond, i32 0, i32 65535
  %1 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %spec.select, ptr %1, align 4
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %3 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %capability, align 4
  %or = or i32 %4, 112
  store i32 %or, ptr %capability, align 4
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %5 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %rxsubchans, align 4
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %6 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %audmode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_s_audio_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aud_input = getelementptr i8, ptr %sd, i32 208
  %0 = ptrtoint ptr %aud_input to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %input, ptr %aud_input, align 4
  %operational_mode = getelementptr i8, ptr %sd, i32 -1100
  %1 = ptrtoint ptr %operational_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %operational_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1108
  tail call fastcc void @set_audio_input(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_audio_input(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %aud_input1 = getelementptr inbounds %struct.au8522_state, ptr %state, i32 0, i32 14
  %0 = ptrtoint ptr %aud_input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %aud_input1, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %1, label %do.end [
    i32 0, label %if.then
    i32 1, label %entry.for.body_crit_edge
  ]

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 242, i8 noundef zeroext 0) #5
  %call1.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 243, i8 noundef zeroext 0) #5
  %call2.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 244, i8 noundef zeroext 0) #5
  %call3.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 165, i8 noundef zeroext 4) #5
  %call4.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 274, i8 noundef zeroext 2) #5
  %call5.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 164, i8 noundef zeroext -100) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %1) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [72 x %struct.au8522_register_config], ptr @lpfilter_coef, i32 0, i32 %i.035
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %reg_val = getelementptr [72 x %struct.au8522_register_config], ptr @lpfilter_coef, i32 0, i32 %i.035, i32 1
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %reg_val, align 2
  %call8 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext %4, i8 noundef zeroext %6) #5
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 72
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 242, i8 noundef zeroext 127) #5
  %call10 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 243, i8 noundef zeroext 127) #5
  %call11 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 244, i8 noundef zeroext -1) #5
  %call12 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 249, i8 noundef zeroext 32) #5
  %call13 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 241, i8 noundef zeroext -126) #5
  tail call void @msleep(i32 noundef 70) #5
  %call14 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 164, i8 noundef zeroext -99) #5
  %call15 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1542, i8 noundef zeroext 3) #5
  %call16 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 274, i8 noundef zeroext -62) #5
  %call17 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 165, i8 noundef zeroext 9) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %do.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_s_video_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1108
  %0 = zext i32 %input to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %input, label %do.end [
    i32 1, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge6
    i32 5, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %vid_input = getelementptr i8, ptr %sd, i32 204
  %1 = ptrtoint ptr %vid_input to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %input, ptr %vid_input, align 8
  %operational_mode = getelementptr i8, ptr %sd, i32 -1100
  %2 = ptrtoint ptr %operational_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %operational_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp eq i8 %3, 0
  br i1 %cmp, label %if.then, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %cleanup

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @au8522_video_set(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1108
  %and = and i64 %std, 4352
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp = icmp eq i64 %and, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %std1 = getelementptr i8, ptr %sd, i32 196
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 %std, ptr %std1, align 8
  %operational_mode = getelementptr i8, ptr %sd, i32 -1100
  %1 = ptrtoint ptr %operational_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %operational_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2 = icmp eq i8 %2, 0
  br i1 %cmp2, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @au8522_video_set(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %current_frequency = getelementptr i8, ptr %sd, i32 -16
  %0 = ptrtoint ptr %current_frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %current_frequency, align 4
  %call1 = tail call i32 @au8522_writereg(ptr noundef %add.ptr.i, i16 noundef zeroext 164, i8 noundef zeroext 1) #5
  tail call void @msleep(i32 noundef 10) #5
  tail call fastcc void @au8522_video_set(ptr noundef %add.ptr.i)
  tail call fastcc void @set_audio_input(ptr noundef %add.ptr.i)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @au8522_writereg(ptr noundef %add.ptr.i, i16 noundef zeroext 164, i8 noundef zeroext 32) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %.sink = phi i8 [ 2, %if.else ], [ 0, %if.then ]
  %1 = getelementptr i8, ptr %sd, i32 -1100
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %.sink, ptr %1, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @au8522_video_set(ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 164, i8 noundef zeroext 32) #5
  %vid_input = getelementptr inbounds %struct.au8522_state, ptr %state, i32 0, i32 13
  %0 = ptrtoint ptr %vid_input to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vid_input, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %1, label %sw.bb6 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
    i32 3, label %sw.bb2
    i32 4, label %sw.bb3
    i32 6, label %sw.bb4
    i32 7, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %call1.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %call2.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %call3.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 129, i8 noundef zeroext -94) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i21 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %call1.i22 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %call2.i23 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %call3.i24 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 129, i8 noundef zeroext -96) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i26 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %call1.i27 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %call2.i28 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %call3.i29 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 129, i8 noundef zeroext 105) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i31 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %call1.i32 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %call2.i33 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  %call3.i34 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 129, i8 noundef zeroext 104) #5
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i36 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 163, i8 noundef zeroext 2) #5
  %call1.i37 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 129, i8 noundef zeroext 35) #5
  %call2.i38 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %call3.i39 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i41 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 163, i8 noundef zeroext 2) #5
  %call1.i42 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 129, i8 noundef zeroext 32) #5
  %call2.i43 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %call3.i44 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 131, i8 noundef zeroext 0) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i46 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 163, i8 noundef zeroext 18) #5
  %call1.i47 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 0) #5
  %call2.i48 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 131, i8 noundef zeroext 14) #5
  %call3.i49 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 130, i8 noundef zeroext 16) #5
  %call4.i50 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 129, i8 noundef zeroext 40) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %.sink = phi i1 [ false, %sw.bb6 ], [ true, %sw.bb5 ], [ true, %sw.bb4 ], [ false, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.bb1 ], [ false, %sw.bb ]
  tail call fastcc void @setup_decoder_defaults(ptr noundef %state, i1 noundef zeroext %.sink) #5
  %call5.i = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 164, i8 noundef zeroext -99) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_decoder_defaults(ptr noundef %state, i1 noundef zeroext %is_svideo) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 9, i8 noundef zeroext 7) #5
  %call1 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 10, i8 noundef zeroext -19) #5
  %call2 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 11, i8 noundef zeroext 121) #5
  %call3 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 12, i8 noundef zeroext -128) #5
  %call4 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 13, i8 noundef zeroext -128) #5
  %call5 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 14, i8 noundef zeroext 0) #5
  %call6 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 15, i8 noundef zeroext 0) #5
  %call7 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 16, i8 noundef zeroext 0) #5
  %. = select i1 %is_svideo, i8 4, i8 0
  %call9 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 17, i8 noundef zeroext %.) #5
  %call10 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 18, i8 noundef zeroext 15) #5
  %call11 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 21, i8 noundef zeroext 0) #5
  %call12 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 96, i8 noundef zeroext 0) #5
  %std = getelementptr inbounds %struct.au8522_state, ptr %state, i32 0, i32 12
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %1)
  %cmp = icmp eq i64 %1, 256
  %.sink128 = select i1 %cmp, i8 27, i8 25
  %.sink127 = select i1 %cmp, i8 2, i8 1
  %call17 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 97, i8 noundef zeroext %.sink128) #5
  %call18 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 98, i8 noundef zeroext %.sink127) #5
  %call20 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 99, i8 noundef zeroext 25) #5
  %call21 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 100, i8 noundef zeroext -89) #5
  %call22 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 101, i8 noundef zeroext 10) #5
  %call23 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 102, i8 noundef zeroext 50) #5
  %call24 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 103, i8 noundef zeroext 25) #5
  %call25 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 104, i8 noundef zeroext 35) #5
  %call26 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 105, i8 noundef zeroext 65) #5
  %call27 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 106, i8 noundef zeroext 10) #5
  %call28 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 107, i8 noundef zeroext 50) #5
  %.sink130 = select i1 %is_svideo, i8 42, i8 52
  %.sink129 = select i1 %is_svideo, i8 21, i8 5
  %call34 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 108, i8 noundef zeroext %.sink130) #5
  %call35 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 109, i8 noundef zeroext %.sink129) #5
  %call37 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 110, i8 noundef zeroext 110) #5
  %call38 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 111, i8 noundef zeroext 15) #5
  %call39 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 112, i8 noundef zeroext -128) #5
  %call40 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 113, i8 noundef zeroext 24) #5
  %call41 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 114, i8 noundef zeroext 48) #5
  %call42 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 115, i8 noundef zeroext -16) #5
  %call43 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 116, i8 noundef zeroext -128) #5
  %call44 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 117, i8 noundef zeroext -16) #5
  %call45 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 119, i8 noundef zeroext -5) #5
  %call46 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 120, i8 noundef zeroext 4) #5
  %call47 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 121, i8 noundef zeroext 0) #5
  %call48 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 122, i8 noundef zeroext 0) #5
  %call49 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 123, i8 noundef zeroext -18) #5
  %call50 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 228, i8 noundef zeroext -2) #5
  %call51 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 229, i8 noundef zeroext 0) #5
  %call52 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 22, i8 noundef zeroext 0) #5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.0126 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [30 x %struct.au8522_register_config], ptr @filter_coef, i32 0, i32 %i.0126
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %arrayidx55 = getelementptr [30 x %struct.au8522_register_config], ptr @filter_coef, i32 0, i32 %i.0126, i32 1, i32 5
  %4 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx55, align 1
  %call56 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext %3, i8 noundef zeroext %5) #5
  %inc = add nuw nsw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc, 30
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1070, i8 noundef zeroext -121) #5
  %call58 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1071, i8 noundef zeroext -94) #5
  %call59 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1072, i8 noundef zeroext -65) #5
  %call60 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1073, i8 noundef zeroext -53) #5
  %call61 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1074, i8 noundef zeroext -95) #5
  %call62 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1075, i8 noundef zeroext 65) #5
  %call63 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1076, i8 noundef zeroext -120) #5
  %call64 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1077, i8 noundef zeroext -62) #5
  %call65 = tail call i32 @au8522_writereg(ptr noundef %state, i16 noundef zeroext 1078, i8 noundef zeroext 60) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @au8522_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -1328
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb1
    i32 9963778, label %sw.bb5
    i32 9963779, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = trunc i32 %6 to i8
  %conv = xor i8 %7, -128
  %call = tail call i32 @au8522_writereg(ptr noundef %add.ptr, i16 noundef zeroext 10, i8 noundef zeroext %conv) #5
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val2 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %8 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val2, align 4
  %conv3 = trunc i32 %9 to i8
  %call4 = tail call i32 @au8522_writereg(ptr noundef %add.ptr, i16 noundef zeroext 11, i8 noundef zeroext %conv3) #5
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val6 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %10 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val6, align 4
  %conv7 = trunc i32 %11 to i8
  %call8 = tail call i32 @au8522_writereg(ptr noundef %add.ptr, i16 noundef zeroext 12, i8 noundef zeroext %conv7) #5
  %12 = ptrtoint ptr %val6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val6, align 4
  %conv10 = trunc i32 %13 to i8
  %call11 = tail call i32 @au8522_writereg(ptr noundef %add.ptr, i16 noundef zeroext 13, i8 noundef zeroext %conv10) #5
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %val13 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %14 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val13, align 4
  %16 = lshr i32 %15, 8
  %conv14 = trunc i32 %16 to i8
  %call15 = tail call i32 @au8522_writereg(ptr noundef %add.ptr, i16 noundef zeroext 14, i8 noundef zeroext %conv14) #5
  %17 = ptrtoint ptr %val13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val13, align 4
  %conv17 = trunc i32 %18 to i8
  %call18 = tail call i32 @au8522_writereg(ptr noundef %add.ptr, i16 noundef zeroext 15, i8 noundef zeroext %conv17) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb5, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb12 ], [ 0, %sw.bb5 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !60, !61, !62, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__UNIQUE_ID_author292, !1, !"__UNIQUE_ID_author292", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_file293, !3, !"__UNIQUE_ID_file293", i1 false, i1 false}
!3 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_license294, !3, !"__UNIQUE_ID_license294", i1 false, i1 false}
!5 = !{ptr @__param_analog_debug, !6, !"__param_analog_debug", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 33, i32 1}
!7 = !{ptr @__UNIQUE_ID_analog_debugtype295, !6, !"__UNIQUE_ID_analog_debugtype295", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_analog_debug296, !9, !"__UNIQUE_ID_analog_debug296", i1 false, i1 false}
!9 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 35, i32 1}
!10 = !{ptr @__initcall__kmod_au8522_decoder__297_786_au8522_driver_init6, !11, !"__initcall__kmod_au8522_decoder__297_786_au8522_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 786, i32 1}
!12 = !{ptr @__exitcall_au8522_driver_exit, !11, !"__exitcall_au8522_driver_exit", i1 false, i1 false}
!13 = !{ptr @au8522_analog_debug, !14, !"au8522_analog_debug", i1 false, i1 false}
!14 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 30, i32 12}
!15 = !{ptr @__param_str_analog_debug, !6, !"__param_str_analog_debug", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 779, i32 11}
!18 = !{ptr @au8522_driver, !19, !"au8522_driver", i1 false, i1 false}
!19 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 777, i32 26}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 693, i32 3}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @au8522_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @au8522_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 697, i32 3}
!28 = !{ptr @au8522_probe._entry.4, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @au8522_probe._entry_ptr.6, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 701, i32 3}
!32 = !{ptr @au8522_probe._entry.7, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @au8522_probe._entry_ptr.9, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 723, i32 3}
!36 = !{ptr @au8522_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @au8522_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @au8522_probe._key, !39, !"_key", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 729, i32 2}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @au8522_ops, !42, !"au8522_ops", i1 false, i1 false}
!42 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 659, i32 37}
!43 = !{ptr @au8522_core_ops, !44, !"au8522_core_ops", i1 false, i1 false}
!44 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 637, i32 42}
!45 = !{ptr @au8522_tuner_ops, !46, !"au8522_tuner_ops", i1 false, i1 false}
!46 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 645, i32 43}
!47 = !{ptr @au8522_audio_ops, !48, !"au8522_audio_ops", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 649, i32 43}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 398, i32 3}
!51 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @set_audio_input._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @set_audio_input._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @lpfilter_coef, !55, !"lpfilter_coef", i1 false, i1 false}
!55 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 90, i32 44}
!56 = !{ptr @au8522_video_ops, !57, !"au8522_video_ops", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 653, i32 43}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 572, i32 3}
!60 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @au8522_s_video_routing._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @au8522_s_video_routing._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @filter_coef, !64, !"filter_coef", i1 false, i1 false}
!64 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 48, i32 44}
!65 = !{ptr @au8522_ctrl_ops, !66, !"au8522_ctrl_ops", i1 false, i1 false}
!66 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 666, i32 35}
!67 = !{ptr @au8522_id, !68, !"au8522_id", i1 false, i1 false}
!68 = !{!"../drivers/media/dvb-frontends/au8522_decoder.c", i32 770, i32 35}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{!"auto-init"}
