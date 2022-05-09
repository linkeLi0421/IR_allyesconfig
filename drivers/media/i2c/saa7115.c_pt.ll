; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/saa7115.c_pt.bc'
source_filename = "../drivers/media/i2c/saa7115.c"
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
%struct.v4l2_subdev_vbi_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.saa711x_state = type { %struct.v4l2_subdev, [2 x %struct.media_pad], %struct.v4l2_ctrl_handler, %struct.anon.100, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.89 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32 }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.v4l2_ctrl_handler = type { %struct.mutex, ptr, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i16, i32, i8, %struct.list_head, %struct.list_head, %struct.media_request_object }
%struct.media_request_object = type { ptr, ptr, ptr, %struct.list_head, %struct.kref, i8 }
%struct.anon.100 = type { ptr, ptr }
%struct.saa7115_platform_data = type { i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_dbg_register = type { %struct.v4l2_dbg_match, i32, i64, i64 }
%struct.v4l2_dbg_match = type { i32, %union.anon.94 }
%union.anon.94 = type { i32, [28 x i8] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.v4l2_decode_vbi_line = type { i32, ptr, i32, i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32, [48 x i8] }
%struct.v4l2_sliced_vbi_format = type { i16, [2 x [24 x i16]], i32, [2 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.96, i16, i16, i16, [10 x i16] }
%union.anon.96 = type { i16 }
%struct.v4l2_ctrl = type { %struct.list_head, %struct.list_head, ptr, ptr, i32, i24, ptr, ptr, i32, ptr, i32, i64, i64, i64, i32, i32, [4 x i32], i32, %union.anon.91, %union.anon.92, i32, ptr, i32, %struct.anon.93, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr, %union.v4l2_ctrl_ptr }
%union.anon.91 = type { i64 }
%union.anon.92 = type { ptr }
%struct.anon.93 = type { i32 }
%union.v4l2_ctrl_ptr = type { ptr }

@__UNIQUE_ID_description292 = internal constant [89 x i8] c"saa7115.description=Philips SAA7111/SAA7113/SAA7114/SAA7115/SAA7118 video decoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [99 x i8] c"saa7115.author=Maxim Yevtyushkin, Kevin Thayer, Chris Kennedy, Hans Verkuil, Mauro Carvalho Chehab\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [39 x i8] c"saa7115.file=drivers/media/i2c/saa7115\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"saa7115.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [14 x i8] c"saa7115.debug\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype296 = internal constant [28 x i8] c"saa7115.parmtype=debug:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_debug297 = internal constant [37 x i8] c"saa7115.parm=debug:Debug level (0-1)\00", section ".modinfo", align 1
@__initcall__kmod_saa7115__298_1960_saa711x_driver_init6 = internal global ptr @saa711x_driver_init, section ".initcall6.init", align 4
@saa711x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @saa711x_probe, ptr @saa711x_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @saa711x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_saa711x_driver_exit = internal global ptr @saa711x_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"saa7115\00", [24 x i8] zeroinitializer }, align 32
@saa711x_id = internal constant { [8 x %struct.i2c_device_id], [32 x i8] } { [8 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"saa7115_auto\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"saa7111\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"saa7113\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"saa7114\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"saa7115\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"saa7118\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"gm7113c\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@saa711x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1828, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014%s %d-%04x: found %s while %s was expected\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa711x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/saa7115.c\00", [36 x i8] zeroinitializer }, align 32
@saa711x_probe._entry_ptr = internal global ptr @saa711x_probe._entry, section ".printk_index", align 4
@saa711x_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @saa711x_core_ops, ptr @saa711x_tuner_ops, ptr @saa711x_audio_ops, ptr @saa711x_video_ops, ptr @saa711x_vbi_ops, ptr null, ptr null, ptr @saa711x_pad_ops }, [32 x i8] zeroinitializer }, align 32
@saa711x_probe._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 1857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s %d-%04x: %s found @ 0x%x (%s)\0A\00", [60 x i8] zeroinitializer }, align 32
@saa711x_probe._entry_ptr.6 = internal global ptr @saa711x_probe._entry.4, section ".printk_index", align 4
@saa711x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"saa7115:1859:(hdl)->_lock\00", [38 x i8] zeroinitializer }, align 32
@saa711x_ctrl_ops = internal constant { %struct.v4l2_ctrl_ops, [20 x i8] } { %struct.v4l2_ctrl_ops { ptr @saa711x_g_volatile_ctrl, ptr null, ptr @saa711x_s_ctrl }, [20 x i8] zeroinitializer }, align 32
@saa711x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 1890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017%s: writing init values\0A\00", [37 x i8] zeroinitializer }, align 32
@saa711x_probe._entry_ptr.10 = internal global ptr @saa711x_probe._entry.8, section ".printk_index", align 4
@saa7111_init = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\01\00\02\D0\03#\04\00\05\00\06\F3\07\E8\08\C8\09\01\0A\80\0BG\0C@\0D\00\0E\01\0F\00\10H\11\1C\12\00\13\00\14\00\15\00\16\00\17\00\00\00", [48 x i8] zeroinitializer }, align 32
@gm7113c_init = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\01\08\02\C0\033\04\00\05\00\06\E9\07\0D\08\98\09\01\0A\80\0BG\0C@\0D\00\0E\01\0F*\10\00\11\0C\12\01\13\00\14\00\15\00\16\00\17\00\00\00", [48 x i8] zeroinitializer }, align 32
@saa7113_init = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\01\08\02\C2\030\04\00\05\00\06\89\07\0D\08\88\09\01\0A\80\0BG\0C@\0D\00\0E\01\0F*\10\08\11\0C\12\07\13\00\14\00\15\00\16\00\17\00\00\00", [48 x i8] zeroinitializer }, align 32
@saa7115_init_auto_input = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\01H\03 \04\90\05\90\06\EB\07\E0\09S\0A\80\0BD\0C@\0D\00\0F\00\10\06\11\00\12\9D\13\80\14\00\18@\19\80\1Aw\1BB\1C\A9\1D\01\80\00\88\D0\88\F0\00\00", [42 x i8] zeroinitializer }, align 32
@saa7115_init_misc = internal constant { [198 x i8], [58 x i8] } { [198 x i8] c"\81\01\83\01\84 \85!\86\C5\87\01\A0\01\A1\00\A2\00\A4\80\A5@\A6@\A8\00\A9\02\AA\00\AC\00\AD\01\AE\00\B0\00\B1\04\B2\00\B3\04\B4\01\B8\00\B9\00\BA\00\BB\00\BC\00\BD\00\BE\00\BF\00\D0\01\D1\00\D2\00\D4\80\D5@\D6@\D8\00\D9\04\DA\00\DC\00\DD\02\DE\00\E0\00\E1\04\E2\00\E3\04\E4\01\E8\00\E9\00\EA\00\EB\00\EC\00\ED\00\EE\00\EF\00\F2P\F3F\F4\00\F7K\F8\00\F9K\FA\00\FBK\FF\88@ A\FFB\FFC\FFD\FFE\FFF\FFG\FFH\FFI\FFJ\FFK\FFL\FFM\FFN\FFO\FFP\FFQ\FFR\FFS\FFT\FFU\FFV\FFW\FFX@YG[\83]\BD^5\02\C4\80 \88\D0\88\F0\00\00", [58 x i8] zeroinitializer }, align 32
@saa711x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 1924, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s: status: (1E) 0x%02x, (1F) 0x%02x\0A\00", [56 x i8] zeroinitializer }, align 32
@saa711x_probe._entry_ptr.13 = internal global ptr @saa711x_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"f711\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"saa711%c\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"saa711%ca\00", [22 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 1737, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: saa7111a variant found\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"saa711x_detect_chip\00", [44 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry_ptr = internal global ptr @saa711x_detect_chip._entry, section ".printk_index", align 4
@saa711x_detect_chip._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.3, i32 1751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016%s: WARNING: Philips/NXP chip unknown - Falling back to saa7111\0A\00", [61 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry_ptr.21 = internal global ptr @saa711x_detect_chip._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0000\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gm7113c\00", [24 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 1781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s %d-%04x: It seems to be a %s chip (%*ph) @ 0x%x.\0A\00", [41 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry_ptr.26 = internal global ptr @saa711x_detect_chip._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"1111111111111111\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cjc7113\00", [24 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.18, ptr @.str.3, i32 1795, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry_ptr.30 = internal global ptr @saa711x_detect_chip._entry.29, section ".printk_index", align 4
@saa711x_detect_chip._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.18, ptr @.str.3, i32 1803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d-%04x: chip %*ph @ 0x%x is unknown.\0A\00", [52 x i8] zeroinitializer }, align 32
@saa711x_detect_chip._entry_ptr.33 = internal global ptr @saa711x_detect_chip._entry.31, section ".printk_index", align 4
@saa711x_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @saa711x_log_status, ptr null, ptr null, ptr null, ptr @saa711x_reset, ptr @saa711x_s_gpio, ptr null, ptr null, ptr @saa711x_g_register, ptr @saa711x_s_register, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa711x_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr null, ptr @saa711x_s_radio, ptr null, ptr null, ptr null, ptr @saa711x_g_tuner, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@saa711x_audio_ops = internal constant { %struct.v4l2_subdev_audio_ops, [16 x i8] } { %struct.v4l2_subdev_audio_ops { ptr @saa711x_s_clock_freq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@saa711x_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr @saa711x_s_routing, ptr @saa711x_s_crystal_freq, ptr null, ptr @saa711x_s_std, ptr null, ptr null, ptr @saa711x_querystd, ptr null, ptr null, ptr @saa711x_g_input_status, ptr @saa711x_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@saa711x_vbi_ops = internal constant { %struct.v4l2_subdev_vbi_ops, [36 x i8] } { %struct.v4l2_subdev_vbi_ops { ptr @saa711x_decode_vbi_line, ptr null, ptr @saa711x_g_vbi_data, ptr null, ptr @saa711x_s_raw_fmt, ptr @saa711x_g_sliced_fmt, ptr @saa711x_s_sliced_fmt }, [36 x i8] zeroinitializer }, align 32
@saa711x_pad_ops = internal constant { %struct.v4l2_subdev_pad_ops, [60 x i8] } { %struct.v4l2_subdev_pad_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @saa711x_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.3, i32 1528, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Audio frequency: %d Hz\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"saa711x_log_status\00", [45 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr = internal global ptr @saa711x_log_status._entry, section ".printk_index", align 4
@saa711x_log_status._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Video signal:    %s\0A\00", [37 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.38 = internal global ptr @saa711x_log_status._entry.36, section ".printk_index", align 4
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ok\00", [29 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bad\00", [28 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.3, i32 1534, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: Frequency:       %s\0A\00", [37 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.43 = internal global ptr @saa711x_log_status._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"60 Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"50 Hz\00", [26 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.35, ptr @.str.3, i32 1546, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Input:           S-Video %d\0A\00", [61 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.48 = internal global ptr @saa711x_log_status._entry.46, section ".printk_index", align 4
@saa711x_log_status._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.35, ptr @.str.3, i32 1548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: Input:           Composite %d\0A\00", [59 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.51 = internal global ptr @saa711x_log_status._entry.49, section ".printk_index", align 4
@saa711x_log_status._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.3, i32 1549, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.53 = internal global ptr @saa711x_log_status._entry.52, section ".printk_index", align 4
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"VCR\00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"broadcast/DVD\00", [18 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.35, ptr @.str.3, i32 1550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.57 = internal global ptr @saa711x_log_status._entry.56, section ".printk_index", align 4
@saa711x_log_status._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.35, ptr @.str.3, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: Detected format: NTSC\0A\00", [35 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.60 = internal global ptr @saa711x_log_status._entry.58, section ".printk_index", align 4
@saa711x_log_status._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.35, ptr @.str.3, i32 1557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Detected format: PAL\0A\00", [36 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.63 = internal global ptr @saa711x_log_status._entry.61, section ".printk_index", align 4
@saa711x_log_status._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.35, ptr @.str.3, i32 1560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Detected format: SECAM\0A\00", [34 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.66 = internal global ptr @saa711x_log_status._entry.64, section ".printk_index", align 4
@saa711x_log_status._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.35, ptr @.str.3, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: Detected format: BW/No color\0A\00", [60 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.69 = internal global ptr @saa711x_log_status._entry.67, section ".printk_index", align 4
@saa711x_log_status._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.35, ptr @.str.3, i32 1566, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016%s: Width, Height:   %d, %d\0A\00", [33 x i8] zeroinitializer }, align 32
@saa711x_log_status._entry_ptr.72 = internal global ptr @saa711x_log_status._entry.70, section ".printk_index", align 4
@saa711x_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017%s: decoder RESET\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"saa711x_reset\00", [18 x i8] zeroinitializer }, align 32
@saa711x_reset._entry_ptr = internal global ptr @saa711x_reset._entry, section ".printk_index", align 4
@saa711x_g_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\017%s: status: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"saa711x_g_tuner\00", [16 x i8] zeroinitializer }, align 32
@saa711x_g_tuner._entry_ptr = internal global ptr @saa711x_g_tuner._entry, section ".printk_index", align 4
@saa711x_s_clock_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017%s: set audio clock freq: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"saa711x_s_clock_freq\00", [43 x i8] zeroinitializer }, align 32
@saa711x_s_clock_freq._entry_ptr = internal global ptr @saa711x_s_clock_freq._entry, section ".printk_index", align 4
@saa711x_s_routing._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1293, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: decoder set input %d output %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa711x_s_routing\00", [46 x i8] zeroinitializer }, align 32
@saa711x_s_routing._entry_ptr = internal global ptr @saa711x_s_routing._entry, section ".printk_index", align 4
@saa711x_s_routing._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.3, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s: now setting %s input %s output\0A\00", [58 x i8] zeroinitializer }, align 32
@saa711x_s_routing._entry_ptr.83 = internal global ptr @saa711x_s_routing._entry.81, section ".printk_index", align 4
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"S-Video\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Composite\00", [22 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"iport on\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iport off\00", [22 x i8] zeroinitializer }, align 32
@saa711x_querystd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.3, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Status byte 1 (0x1e)=0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa711x_querystd\00", [47 x i8] zeroinitializer }, align 32
@saa711x_querystd._entry_ptr = internal global ptr @saa711x_querystd._entry, section ".printk_index", align 4
@saa711x_querystd._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.3, i32 1472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\017%s: Status byte 2 (0x1f)=0x%02x\0A\00", [61 x i8] zeroinitializer }, align 32
@saa711x_querystd._entry_ptr.92 = internal global ptr @saa711x_querystd._entry.90, section ".printk_index", align 4
@saa711x_querystd._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.89, ptr @.str.3, i32 1486, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: detected std mask = %08Lx\0A\00", [63 x i8] zeroinitializer }, align 32
@saa711x_querystd._entry_ptr.95 = internal global ptr @saa711x_querystd._entry.93, section ".printk_index", align 4
@saa711x_s_stream._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.3, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\017%s: %s output\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa711x_s_stream\00", [47 x i8] zeroinitializer }, align 32
@saa711x_s_stream._entry_ptr = internal global ptr @saa711x_s_stream._entry, section ".printk_index", align 4
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"disable\00", [24 x i8] zeroinitializer }, align 32
@saa711x_decode_vbi_line.vbi_no_data_pattern = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0", [22 x i8] zeroinitializer }, align 32
@saa711x_decode_wss.wss_bits = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 0, i32 0, i32 1, i32 0, i32 1, i32 1, i32 1], [32 x i8] zeroinitializer }, align 32
@saa711x_decode_vps.biphase_tbl = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\D2ZR\D2\96\1E\16\96\92\1A\12\92\D2ZR\D2\D0XP\D0\94\1C\14\94\90\18\10\90\D0XP\D0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\E1ia\E1\A5-%\A5\A1)!\A1\E1ia\E1\C3KC\C3\87\0F\07\87\83\0B\03\83\C3KC\C3\C1IA\C1\85\0D\05\85\81\09\01\81\C1IA\C1\E1ia\E1\A5-%\A5\A1)!\A1\E1ia\E1\E0h`\E0\A4,$\A4\A0( \A0\E0h`\E0\C2JB\C2\86\0E\06\86\82\0A\02\82\C2JB\C2\C0H@\C0\84\0C\04\84\80\08\00\80\C0H@\C0\E0h`\E0\A4,$\A4\A0( \A0\E0h`\E0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0\D2ZR\D2\96\1E\16\96\92\1A\12\92\D2ZR\D2\D0XP\D0\94\1C\14\94\90\18\10\90\D0XP\D0\F0xp\F0\B4<4\B4\B080\B0\F0xp\F0", [64 x i8] zeroinitializer }, align 32
@saa7115_cfg_vbi_on = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\80\00\88\D0\800\88\F0\87\01\00\00", [20 x i8] zeroinitializer }, align 32
@saa7115_cfg_vbi_off = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\80\00\88\D0\80 \88\F0\87\01\00\00", [20 x i8] zeroinitializer }, align 32
@saa711x_g_sliced_fmt.lcr2vbi = internal constant { <{ [8 x i16], [8 x i16] }>, [32 x i8] } { <{ [8 x i16], [8 x i16] }> <{ [8 x i16] [i16 0, i16 1, i16 0, i16 0, i16 4096, i16 16384, i16 0, i16 1024], [8 x i16] zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@saa711x_set_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.101, ptr @.str.3, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\017%s: decoder set size to %ix%i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"saa711x_set_size\00", [47 x i8] zeroinitializer }, align 32
@saa711x_set_size._entry_ptr = internal global ptr @saa711x_set_size._entry, section ".printk_index", align 4
@saa711x_set_size._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.101, ptr @.str.3, i32 928, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: Hpsc: 0x%05x, Hfsc: 0x%05x\0A\00", [62 x i8] zeroinitializer }, align 32
@saa711x_set_size._entry_ptr.104 = internal global ptr @saa711x_set_size._entry.102, section ".printk_index", align 4
@saa711x_set_size._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.101, ptr @.str.3, i32 942, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s: Vsrc: %d, Vscy: 0x%05x\0A\00", [34 x i8] zeroinitializer }, align 32
@saa711x_set_size._entry_ptr.107 = internal global ptr @saa711x_set_size._entry.105, section ".printk_index", align 4
@saa711x_writeregs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s: tried to access reserved reg 0x%02x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"saa711x_writeregs\00", [46 x i8] zeroinitializer }, align 32
@saa711x_writeregs._entry_ptr = internal global ptr @saa711x_writeregs._entry, section ".printk_index", align 4
@saa711x_set_v4lstd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.3, i32 988, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: decoder set standard 60 Hz\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"saa711x_set_v4lstd\00", [45 x i8] zeroinitializer }, align 32
@saa711x_set_v4lstd._entry_ptr = internal global ptr @saa711x_set_v4lstd._entry, section ".printk_index", align 4
@saa7115_cfg_60hz_video = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\80\00\88\D0\15\03\16\11\17\9C\08h\0E\07Z\06\90\80\91H\92@\93\84\94\01\95\00\96\D0\97\02\98\05\99\00\9A\0C\9B\00\9C\A0\9D\05\9E\0C\9F\00\C0\00\C1\08\C2\00\C3\80\C4\02\C5\00\C6\D0\C7\02\C8\12\C9\00\CA\F8\CB\00\CC\D0\CD\02\F0\AD\F1\05\F5\AD\F6\01\00\00", [42 x i8] zeroinitializer }, align 32
@saa711x_set_v4lstd._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.3, i32 999, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\017%s: decoder set standard 50 Hz\0A\00", [62 x i8] zeroinitializer }, align 32
@saa711x_set_v4lstd._entry_ptr.114 = internal global ptr @saa711x_set_v4lstd._entry.112, section ".printk_index", align 4
@saa7115_cfg_50hz_video = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\80\00\88\D0\157\16\16\17\99\08(\0E\07Z\03\90\81\91H\92@\93\84\94\00\95\00\96\D0\97\02\98\03\99\00\9A\12\9B\00\9C\A0\9D\05\9E\12\9F\00\C0\00\C1\08\C2\00\C3\80\C4\00\C5\00\C6\D0\C7\02\C8\16\C9\00\CA \CB\01\CC\D0\CD\02\F0\B0\F1\05\F5\B0\F6\01\00\00", [42 x i8] zeroinitializer }, align 32
@switch.table.saa711x_log_status = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.59, ptr @.str.62, ptr @.str.65], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 8, i64 49, i64 51, i64 52, i64 53, i64 56]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [6 x i64] [i64 4, i64 64, i64 256, i64 1024, i64 2048, i64 8192]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.119 = internal global [8 x i64] [i64 6, i64 8, i64 92, i64 95, i64 163, i64 167, i64 171, i64 175]
@__sancov_gen_cov_switch_values.120 = internal global [6 x i64] [i64 4, i64 8, i64 130, i64 229, i64 230, i64 231]
@__sancov_gen_cov_switch_values.121 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 8, i64 51, i64 55, i64 129]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 24576000, i64 32110000]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.126 = internal global [4 x i64] [i64 2, i64 32, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.129 = internal global [7 x i64] [i64 5, i64 16, i64 0, i64 1, i64 1024, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.130 = internal global [7 x i64] [i64 5, i64 32, i64 9963776, i64 9963777, i64 9963778, i64 9963779, i64 9963805]
@___asan_gen_.131 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 46, i32 13 }
@___asan_gen_.134 = private unnamed_addr constant [15 x i8] c"saa711x_driver\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1951, i32 26 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1953, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant [11 x i8] c"saa711x_id\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1939, i32 35 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1827, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"saa711x_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1618, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1856, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1859, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [17 x i8] c"saa711x_ctrl_ops\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1573, i32 35 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1890, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"saa7111_init\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 185, i32 28 }
@___asan_gen_.182 = private unnamed_addr constant [13 x i8] c"gm7113c_init\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 272, i32 28 }
@___asan_gen_.185 = private unnamed_addr constant [13 x i8] c"saa7113_init\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 234, i32 28 }
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"saa7115_init_auto_input\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 305, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant [18 x i8] c"saa7115_init_misc\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 526, i32 28 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1922, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1726, i32 24 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1728, i32 33 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1736, i32 35 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1737, i32 5 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1750, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1757, i32 20 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1774, i32 17 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1779, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1787, i32 20 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1788, i32 17 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1793, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1802, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"saa711x_core_ops\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1578, i32 42 }
@___asan_gen_.254 = private unnamed_addr constant [18 x i8] c"saa711x_tuner_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1588, i32 43 }
@___asan_gen_.257 = private unnamed_addr constant [18 x i8] c"saa711x_audio_ops\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1593, i32 43 }
@___asan_gen_.260 = private unnamed_addr constant [18 x i8] c"saa711x_video_ops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1597, i32 43 }
@___asan_gen_.263 = private unnamed_addr constant [16 x i8] c"saa711x_vbi_ops\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1606, i32 41 }
@___asan_gen_.266 = private unnamed_addr constant [16 x i8] c"saa711x_pad_ops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1614, i32 41 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1528, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1533, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1534, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1546, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1548, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1549, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1550, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1554, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1557, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1560, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1563, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1566, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1394, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1264, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 763, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1292, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1306, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1447, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1472, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1486, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1365, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c"vbi_no_data_pattern\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1193, i32 20 }
@___asan_gen_.449 = private unnamed_addr constant [9 x i8] c"wss_bits\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 725, i32 19 }
@___asan_gen_.452 = private unnamed_addr constant [12 x i8] c"biphase_tbl\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 678, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant [19 x i8] c"saa7115_cfg_vbi_on\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 505, i32 28 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c"saa7115_cfg_vbi_off\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 515, i32 28 }
@___asan_gen_.461 = private unnamed_addr constant [8 x i8] c"lcr2vbi\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 1132, i32 13 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 873, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 928, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 942, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 169, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 988, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [23 x i8] c"saa7115_cfg_60hz_video\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 352, i32 28 }
@___asan_gen_.506 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 999, i32 3 }
@___asan_gen_.512 = private unnamed_addr constant [23 x i8] c"saa7115_cfg_50hz_video\00", align 1
@___asan_gen_.513 = private constant [31 x i8] c"../drivers/media/i2c/saa7115.c\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.513, i32 425, i32 28 }
@___asan_gen_.515 = private unnamed_addr constant [32 x i8] c"switch.table.saa711x_log_status\00", align 1
@llvm.compiler.used = appending global [175 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug297, ptr @__UNIQUE_ID_debugtype296, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__exitcall_saa711x_driver_exit, ptr @__initcall__kmod_saa7115__298_1960_saa711x_driver_init6, ptr @__param_debug, ptr @saa711x_detect_chip._entry, ptr @saa711x_detect_chip._entry.19, ptr @saa711x_detect_chip._entry.24, ptr @saa711x_detect_chip._entry.29, ptr @saa711x_detect_chip._entry.31, ptr @saa711x_detect_chip._entry_ptr, ptr @saa711x_detect_chip._entry_ptr.21, ptr @saa711x_detect_chip._entry_ptr.26, ptr @saa711x_detect_chip._entry_ptr.30, ptr @saa711x_detect_chip._entry_ptr.33, ptr @saa711x_driver_exit, ptr @saa711x_g_tuner._entry, ptr @saa711x_g_tuner._entry_ptr, ptr @saa711x_log_status._entry, ptr @saa711x_log_status._entry.36, ptr @saa711x_log_status._entry.41, ptr @saa711x_log_status._entry.46, ptr @saa711x_log_status._entry.49, ptr @saa711x_log_status._entry.52, ptr @saa711x_log_status._entry.56, ptr @saa711x_log_status._entry.58, ptr @saa711x_log_status._entry.61, ptr @saa711x_log_status._entry.64, ptr @saa711x_log_status._entry.67, ptr @saa711x_log_status._entry.70, ptr @saa711x_log_status._entry_ptr, ptr @saa711x_log_status._entry_ptr.38, ptr @saa711x_log_status._entry_ptr.43, ptr @saa711x_log_status._entry_ptr.48, ptr @saa711x_log_status._entry_ptr.51, ptr @saa711x_log_status._entry_ptr.53, ptr @saa711x_log_status._entry_ptr.57, ptr @saa711x_log_status._entry_ptr.60, ptr @saa711x_log_status._entry_ptr.63, ptr @saa711x_log_status._entry_ptr.66, ptr @saa711x_log_status._entry_ptr.69, ptr @saa711x_log_status._entry_ptr.72, ptr @saa711x_probe._entry, ptr @saa711x_probe._entry.11, ptr @saa711x_probe._entry.4, ptr @saa711x_probe._entry.8, ptr @saa711x_probe._entry_ptr, ptr @saa711x_probe._entry_ptr.10, ptr @saa711x_probe._entry_ptr.13, ptr @saa711x_probe._entry_ptr.6, ptr @saa711x_querystd._entry, ptr @saa711x_querystd._entry.90, ptr @saa711x_querystd._entry.93, ptr @saa711x_querystd._entry_ptr, ptr @saa711x_querystd._entry_ptr.92, ptr @saa711x_querystd._entry_ptr.95, ptr @saa711x_reset._entry, ptr @saa711x_reset._entry_ptr, ptr @saa711x_s_clock_freq._entry, ptr @saa711x_s_clock_freq._entry_ptr, ptr @saa711x_s_routing._entry, ptr @saa711x_s_routing._entry.81, ptr @saa711x_s_routing._entry_ptr, ptr @saa711x_s_routing._entry_ptr.83, ptr @saa711x_s_stream._entry, ptr @saa711x_s_stream._entry_ptr, ptr @saa711x_set_size._entry, ptr @saa711x_set_size._entry.102, ptr @saa711x_set_size._entry.105, ptr @saa711x_set_size._entry_ptr, ptr @saa711x_set_size._entry_ptr.104, ptr @saa711x_set_size._entry_ptr.107, ptr @saa711x_set_v4lstd._entry, ptr @saa711x_set_v4lstd._entry.112, ptr @saa711x_set_v4lstd._entry_ptr, ptr @saa711x_set_v4lstd._entry_ptr.114, ptr @saa711x_writeregs._entry, ptr @saa711x_writeregs._entry_ptr, ptr @debug, ptr @saa711x_driver, ptr @.str, ptr @saa711x_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @saa711x_ops, ptr @.str.5, ptr @saa711x_probe._key, ptr @.str.7, ptr @saa711x_ctrl_ops, ptr @.str.9, ptr @saa7111_init, ptr @gm7113c_init, ptr @saa7113_init, ptr @saa7115_init_auto_input, ptr @saa7115_init_misc, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.32, ptr @saa711x_core_ops, ptr @saa711x_tuner_ops, ptr @saa711x_audio_ops, ptr @saa711x_video_ops, ptr @saa711x_vbi_ops, ptr @saa711x_pad_ops, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.50, ptr @.str.54, ptr @.str.55, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @saa711x_decode_vbi_line.vbi_no_data_pattern, ptr @saa711x_decode_wss.wss_bits, ptr @saa711x_decode_vps.biphase_tbl, ptr @saa7115_cfg_vbi_on, ptr @saa7115_cfg_vbi_off, ptr @saa711x_g_sliced_fmt.lcr2vbi, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @saa7115_cfg_60hz_video, ptr @.str.113, ptr @saa7115_cfg_50hz_video, ptr @switch.table.saa711x_log_status], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_id to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_probe._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_ctrl_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7111_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gm7113c_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7113_init to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7115_init_auto_input to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7115_init_misc to i32), i32 198, i32 256, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_detect_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_detect_chip._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_detect_chip._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_detect_chip._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_detect_chip._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_audio_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_vbi_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_pad_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_log_status._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_g_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_s_clock_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_s_routing._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_s_routing._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_querystd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_querystd._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_querystd._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_s_stream._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_decode_vbi_line.vbi_no_data_pattern to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_decode_wss.wss_bits to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_decode_vps.biphase_tbl to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7115_cfg_vbi_on to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7115_cfg_vbi_off to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_g_sliced_fmt.lcr2vbi to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_set_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_set_size._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_set_size._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_writeregs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_set_v4lstd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7115_cfg_60hz_video to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa711x_set_v4lstd._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @saa7115_cfg_50hz_video to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.saa711x_log_status to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @saa711x_driver) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @saa711x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @i2c_del_driver(ptr noundef nonnull @saa711x_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_probe(ptr noundef %client, ptr noundef %id) #2 align 64 {
entry:
  %chip_ver.i = alloca [16 x i8], align 1
  %name = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %name) #12
  %0 = getelementptr inbounds [17 x i8], ptr %name, i32 0, i32 1
  %1 = getelementptr inbounds [17 x i8], ptr %name, i32 0, i32 5
  %2 = getelementptr inbounds [17 x i8], ptr %name, i32 0, i32 16
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = call ptr @memset(ptr %name, i32 255, i32 17)
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #12
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %chip_ver.i) #12
  %tobool.not.i = icmp eq ptr %id, null
  %10 = call ptr @memset(ptr %chip_ver.i, i32 255, i32 16)
  br i1 %tobool.not.i, label %if.end.lor.end.i_crit_edge, label %lor.rhs.i

if.end.lor.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %driver_data.i = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %11 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i214 = icmp eq i32 %12, 1
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end.lor.end.i_crit_edge
  %13 = phi i1 [ true, %if.end.lor.end.i_crit_edge ], [ %cmp.i214, %lor.rhs.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %lor.end.i
  %i.0232.i = phi i32 [ 0, %lor.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i215 = trunc i32 %i.0232.i to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv.i215) #12
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #12
  %conv3.i = trunc i32 %call2.i to i8
  %arrayidx.i = getelementptr [16 x i8], ptr %chip_ver.i, i32 0, i32 %i.0232.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv3.i, ptr %arrayidx.i, align 1
  %15 = and i8 %conv3.i, 15
  %conv6.i = or i8 %15, 48
  %arrayidx7.i = getelementptr i8, ptr %name, i32 %i.0232.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 57, i8 %conv6.i)
  %cmp10.i = icmp ugt i8 %conv6.i, 57
  %narrow.i = add nuw nsw i8 %15, 87
  %spec.select.i = select i1 %cmp10.i, i8 %narrow.i, i8 %conv6.i
  %16 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %spec.select.i, ptr %arrayidx7.i, align 1
  %inc.i = add nuw nsw i32 %i.0232.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %2, align 1
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(4) %0, ptr noundef nonnull dereferenceable(4) @.str.14, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool18.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool18.not.i, label %if.then19.i, label %if.end53.i

if.then19.i:                                      ; preds = %for.end.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 1
  %conv21.i = zext i8 %19 to i32
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.15, i32 noundef %conv21.i) #12
  br i1 %13, label %if.then19.i.if.end28.i_crit_edge, label %land.lhs.true.i

if.then19.i.if.end28.i_crit_edge:                 ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

land.lhs.true.i:                                  ; preds = %if.then19.i
  %call25.i = call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %land.lhs.true.i.if.end28.i_crit_edge, label %land.lhs.true.i.do.end_crit_edge

land.lhs.true.i.do.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true.i.if.end28.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28.i

if.end28.i:                                       ; preds = %land.lhs.true.i.if.end28.i_crit_edge, %if.then19.i.if.end28.i_crit_edge
  %20 = zext i8 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %19, label %do.end48.i [
    i8 49, label %sw.bb.i
    i8 51, label %if.end28.i.if.end14_crit_edge
    i8 52, label %sw.bb43.i
    i8 53, label %sw.bb44.i
    i8 56, label %sw.bb45.i
  ]

if.end28.i.if.end14_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

sw.bb.i:                                          ; preds = %if.end28.i
  %21 = ptrtoint ptr %chip_ver.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %chip_ver.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %22)
  %tobool33.not.i = icmp ult i8 %22, 16
  br i1 %tobool33.not.i, label %sw.bb.i.if.end14_crit_edge, label %if.then34.i

sw.bb.i.if.end14_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then34.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  %call36.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef 49) #12
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %27 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %31 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr.i, align 2
  %conv39.i = zext i16 %32 to i32
  %call40.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %26, i32 noundef %30, i32 noundef %conv39.i) #16
  br label %if.end14

sw.bb43.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

sw.bb44.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

sw.bb45.i:                                        ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end48.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #14
  %name50.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %name50.i) #16
  br label %if.end14

if.end53.i:                                       ; preds = %for.end.i
  %bcmp227.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %name, ptr noundef nonnull dereferenceable(4) @.str.22, i32 4) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp227.i)
  %tobool55.not.i = icmp eq i32 %bcmp227.i, 0
  br i1 %tobool55.not.i, label %for.body60.preheader.i, label %if.end106.i

for.body60.preheader.i:                           ; preds = %if.end53.i
  %call72.i = call i32 @strscpy(ptr noundef nonnull %name, ptr noundef nonnull @.str.23, i32 noundef 16) #12
  br i1 %13, label %for.body60.preheader.i.do.body81.i_crit_edge, label %land.lhs.true74.i

for.body60.preheader.i.do.body81.i_crit_edge:     ; preds = %for.body60.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81.i

land.lhs.true74.i:                                ; preds = %for.body60.preheader.i
  %call77.i = call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool78.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool78.not.i, label %land.lhs.true74.i.do.body81.i_crit_edge, label %land.lhs.true74.i.do.end_crit_edge

land.lhs.true74.i.do.end_crit_edge:               ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true74.i.do.body81.i_crit_edge:          ; preds = %land.lhs.true74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body81.i

do.body81.i:                                      ; preds = %land.lhs.true74.i.do.body81.i_crit_edge, %for.body60.preheader.i.do.body81.i_crit_edge
  %33 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool82.not.i = icmp eq i8 %33, 0
  br i1 %tobool82.not.i, label %do.body81.i.if.end14_crit_edge, label %do.end89.i

do.body81.i.if.end14_crit_edge:                   ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end89.i:                                       ; preds = %do.body81.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver92.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %34 = ptrtoint ptr %driver92.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %driver92.i, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %38 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter, align 8
  %nr.i229.i = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i229.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i229.i, align 4
  %addr96.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %42 = ptrtoint ptr %addr96.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr96.i, align 2
  %conv97.i = zext i16 %43 to i32
  %shl101.i = shl nuw nsw i32 %conv97.i, 1
  %call102.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %37, i32 noundef %41, i32 noundef %conv97.i, ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull %chip_ver.i, i32 noundef %shl101.i) #16
  br label %if.end14

if.end106.i:                                      ; preds = %if.end53.i
  %bcmp228.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(16) %name, ptr noundef nonnull dereferenceable(16) @.str.27, i32 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp228.i)
  %tobool108.not.i = icmp eq i32 %bcmp228.i, 0
  br i1 %tobool108.not.i, label %if.then109.i, label %do.body145.i

if.then109.i:                                     ; preds = %if.end106.i
  %call110.i = call i32 @strscpy(ptr noundef nonnull %name, ptr noundef nonnull @.str.28, i32 noundef 16) #12
  br i1 %13, label %if.then109.i.do.body119.i_crit_edge, label %land.lhs.true112.i

if.then109.i.do.body119.i_crit_edge:              ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body119.i

land.lhs.true112.i:                               ; preds = %if.then109.i
  %call115.i = call i32 @strcmp(ptr noundef nonnull %name, ptr noundef %id) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115.i)
  %tobool116.not.i = icmp eq i32 %call115.i, 0
  br i1 %tobool116.not.i, label %land.lhs.true112.i.do.body119.i_crit_edge, label %land.lhs.true112.i.do.end_crit_edge

land.lhs.true112.i.do.end_crit_edge:              ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true112.i.do.body119.i_crit_edge:        ; preds = %land.lhs.true112.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body119.i

do.body119.i:                                     ; preds = %land.lhs.true112.i.do.body119.i_crit_edge, %if.then109.i.do.body119.i_crit_edge
  %44 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool120.not.i = icmp eq i8 %44, 0
  br i1 %tobool120.not.i, label %do.body119.i.if.end14_crit_edge, label %do.end127.i

do.body119.i.if.end14_crit_edge:                  ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

do.end127.i:                                      ; preds = %do.body119.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver130.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %45 = ptrtoint ptr %driver130.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %driver130.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %49 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %adapter, align 8
  %nr.i230.i = getelementptr inbounds %struct.i2c_adapter, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %nr.i230.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %nr.i230.i, align 4
  %addr134.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %53 = ptrtoint ptr %addr134.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %addr134.i, align 2
  %conv135.i = zext i16 %54 to i32
  %shl139.i = shl nuw nsw i32 %conv135.i, 1
  %call140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %48, i32 noundef %52, i32 noundef %conv135.i, ptr noundef nonnull %name, i32 noundef 16, ptr noundef nonnull %chip_ver.i, i32 noundef %shl139.i) #16
  br label %if.end14

do.body145.i:                                     ; preds = %if.end106.i
  %55 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool146.not.i = icmp eq i8 %55, 0
  br i1 %tobool146.not.i, label %do.body145.i.if.end10_crit_edge, label %do.end153.i

do.body145.i.if.end10_crit_edge:                  ; preds = %do.body145.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end153.i:                                      ; preds = %do.body145.i
  call void @__sanitizer_cov_trace_pc() #14
  %driver156.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %56 = ptrtoint ptr %driver156.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %driver156.i, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adapter, align 8
  %nr.i231.i = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %nr.i231.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr.i231.i, align 4
  %addr160.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %64 = ptrtoint ptr %addr160.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %addr160.i, align 2
  %conv161.i = zext i16 %65 to i32
  %shl165.i = shl nuw nsw i32 %conv161.i, 1
  %call166.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %59, i32 noundef %63, i32 noundef %conv161.i, i32 noundef 16, ptr noundef nonnull %chip_ver.i, i32 noundef %shl165.i) #16
  br label %if.end10

do.end:                                           ; preds = %land.lhs.true112.i.do.end_crit_edge, %land.lhs.true74.i.do.end_crit_edge, %land.lhs.true.i.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chip_ver.i) #12
  %driver = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %driver, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %70 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %74 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr, align 2
  %conv = zext i16 %75 to i32
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %69, i32 noundef %73, i32 noundef %conv, ptr noundef nonnull %name, ptr noundef %id) #16
  br label %cleanup

if.end10:                                         ; preds = %do.end153.i, %do.body145.i.if.end10_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chip_ver.i) #12
  br label %cleanup

if.end14:                                         ; preds = %do.end127.i, %do.body119.i.if.end14_crit_edge, %do.end89.i, %do.body81.i.if.end14_crit_edge, %do.end48.i, %sw.bb45.i, %sw.bb44.i, %sw.bb43.i, %if.then34.i, %sw.bb.i.if.end14_crit_edge, %if.end28.i.if.end14_crit_edge
  %retval.0.i.ph.ph = phi i32 [ 1, %do.end48.i ], [ 6, %sw.bb45.i ], [ 5, %sw.bb44.i ], [ 4, %sw.bb43.i ], [ 0, %if.then34.i ], [ 1, %sw.bb.i.if.end14_crit_edge ], [ 2, %if.end28.i.if.end14_crit_edge ], [ 3, %do.end89.i ], [ 3, %do.body81.i.if.end14_crit_edge ], [ 2, %do.end127.i ], [ 2, %do.body119.i.if.end14_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %chip_ver.i) #12
  %name15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call18 = call i32 @strscpy(ptr noundef %name15, ptr noundef nonnull %name, i32 noundef 20) #12
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i216 = call noalias ptr @devm_kmalloc(ptr noundef %dev19, i32 noundef 504, i32 noundef 3520) #12
  %cmp21 = icmp eq ptr %call.i216, null
  br i1 %cmp21, label %if.end14.cleanup_crit_edge, label %if.end24

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  call void @v4l2_i2c_subdev_init(ptr noundef nonnull %call.i216, ptr noundef %client, ptr noundef nonnull @saa711x_ops) #12
  %pads = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 1
  %flags = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 1, i32 0, i32 4
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %flags, align 4
  %sig_type = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 1, i32 0, i32 3
  %77 = ptrtoint ptr %sig_type to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 1, ptr %sig_type, align 4
  %flags30 = getelementptr %struct.saa711x_state, ptr %call.i216, i32 0, i32 1, i32 1, i32 4
  %78 = ptrtoint ptr %flags30 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 2, ptr %flags30, align 4
  %sig_type33 = getelementptr %struct.saa711x_state, ptr %call.i216, i32 0, i32 1, i32 1, i32 3
  %79 = ptrtoint ptr %sig_type33 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 2, ptr %sig_type33, align 4
  %function = getelementptr inbounds %struct.media_entity, ptr %call.i216, i32 0, i32 3
  %80 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 131076, ptr %function, align 4
  %call37 = call i32 @media_entity_pads_init(ptr noundef nonnull %call.i216, i16 noundef zeroext 2, ptr noundef %pads) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end24.cleanup_crit_edge, label %do.end44

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end44:                                         ; preds = %if.end24
  %driver47 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 6
  %81 = ptrtoint ptr %driver47 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %driver47, align 4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  %85 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adapter, align 8
  %nr.i217 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 11
  %87 = ptrtoint ptr %nr.i217 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nr.i217, align 4
  %addr51 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %89 = ptrtoint ptr %addr51 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %addr51, align 2
  %conv52 = zext i16 %90 to i32
  %shl = shl nuw nsw i32 %conv52, 1
  %name57 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 12
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %84, i32 noundef %88, i32 noundef %conv52, ptr noundef nonnull %name, i32 noundef %shl, ptr noundef %name57) #16
  %hdl60 = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 2
  %call62 = call i32 @v4l2_ctrl_handler_init_class(ptr noundef %hdl60, i32 noundef 6, ptr noundef nonnull @saa711x_probe._key, ptr noundef nonnull @.str.7) #12
  %call63 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl60, ptr noundef nonnull @saa711x_ctrl_ops, i32 noundef 9963776, i64 noundef 0, i64 noundef 255, i64 noundef 1, i64 noundef 128) #12
  %call64 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl60, ptr noundef nonnull @saa711x_ctrl_ops, i32 noundef 9963777, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #12
  %call65 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl60, ptr noundef nonnull @saa711x_ctrl_ops, i32 noundef 9963778, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 64) #12
  %call66 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl60, ptr noundef nonnull @saa711x_ctrl_ops, i32 noundef 9963779, i64 noundef -128, i64 noundef 127, i64 noundef 1, i64 noundef 0) #12
  %call67 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl60, ptr noundef nonnull @saa711x_ctrl_ops, i32 noundef 9963805, i64 noundef 0, i64 noundef 1, i64 noundef 1, i64 noundef 1) #12
  %91 = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 3
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call67, ptr %91, align 4
  %call68 = call ptr @v4l2_ctrl_new_std(ptr noundef %hdl60, ptr noundef nonnull @saa711x_ctrl_ops, i32 noundef 9963812, i64 noundef 0, i64 noundef 127, i64 noundef 1, i64 noundef 40) #12
  %gain = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call68, ptr %gain, align 4
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i216, i32 0, i32 8
  %94 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %hdl60, ptr %ctrl_handler, align 4
  %error = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 2, i32 9
  %95 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool69.not = icmp eq i32 %96, 0
  br i1 %tobool69.not, label %if.end72, label %if.then70

if.then70:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #14
  call void @v4l2_ctrl_handler_free(ptr noundef %hdl60) #12
  br label %cleanup

if.end72:                                         ; preds = %do.end44
  call void @v4l2_ctrl_auto_cluster(i32 noundef 2, ptr noundef %91, i8 noundef zeroext 0, i1 noundef zeroext true) #12
  %input = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 5
  %97 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %input, align 8
  %output = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 6
  %98 = ptrtoint ptr %output to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %output, align 4
  %enable = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 7
  %99 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %enable, align 8
  %radio = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 8
  %100 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %radio, align 4
  %ident74 = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 11
  %101 = ptrtoint ptr %ident74 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %retval.0.i.ph.ph, ptr %ident74, align 8
  %audclk_freq = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 12
  %102 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 48000, ptr %audclk_freq, align 4
  %103 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %tobool76.not = icmp eq i8 %103, 0
  br i1 %tobool76.not, label %if.end72.do.end90_crit_edge, label %do.end83

if.end72.do.end90_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end90

do.end83:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #14
  %name85 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i216, i32 0, i32 9
  %call87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %name85) #16
  %104 = ptrtoint ptr %ident74 to i32
  call void @__asan_load4_noabort(i32 %104)
  %.pr = load i32, ptr %ident74, align 8
  br label %do.end90

do.end90:                                         ; preds = %do.end83, %if.end72.do.end90_crit_edge
  %105 = phi i32 [ %.pr, %do.end83 ], [ %retval.0.i.ph.ph, %if.end72.do.end90_crit_edge ]
  %crystal_freq = getelementptr inbounds %struct.saa711x_state, ptr %call.i216, i32 0, i32 13
  %106 = ptrtoint ptr %crystal_freq to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 24576000, ptr %crystal_freq, align 8
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %107 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %platform_data, align 8
  %109 = zext i32 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %105, label %sw.default [
    i32 1, label %do.end90.sw.epilog_crit_edge
    i32 0, label %do.end90.sw.epilog_crit_edge226
    i32 3, label %sw.bb94
    i32 2, label %sw.bb96
  ]

do.end90.sw.epilog_crit_edge226:                  ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

do.end90.sw.epilog_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb94:                                          ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb96:                                          ; preds = %do.end90
  %tobool97.not = icmp eq ptr %108, null
  br i1 %tobool97.not, label %sw.bb96.if.else_crit_edge, label %land.lhs.true

sw.bb96.if.else_crit_edge:                        ; preds = %sw.bb96
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %sw.bb96
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %108, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool98.not = icmp eq i8 %111, 0
  br i1 %tobool98.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %sw.bb96.if.else_crit_edge
  br label %sw.epilog

sw.default:                                       ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #14
  %112 = ptrtoint ptr %crystal_freq to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 32110000, ptr %crystal_freq, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %land.lhs.true.sw.epilog_crit_edge, %sw.bb94, %do.end90.sw.epilog_crit_edge, %do.end90.sw.epilog_crit_edge226
  %gm7113c_init.sink = phi ptr [ @saa7113_init, %if.else ], [ @saa7115_init_auto_input, %sw.default ], [ @gm7113c_init, %sw.bb94 ], [ @saa7111_init, %do.end90.sw.epilog_crit_edge ], [ @saa7111_init, %do.end90.sw.epilog_crit_edge226 ], [ @gm7113c_init, %land.lhs.true.sw.epilog_crit_edge ]
  call fastcc void @saa711x_writeregs(ptr noundef nonnull %call.i216, ptr noundef nonnull %gm7113c_init.sink)
  %113 = ptrtoint ptr %ident74 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ident74, align 8
  %115 = zext i32 %114 to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %114, label %if.then113 [
    i32 0, label %sw.epilog.if.end115_crit_edge
    i32 3, label %sw.epilog.if.end115_crit_edge227
  ]

sw.epilog.if.end115_crit_edge227:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

sw.epilog.if.end115_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end115

if.then113:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @saa711x_writeregs(ptr noundef nonnull %call.i216, ptr noundef nonnull @saa7115_init_misc)
  br label %if.end115

if.end115:                                        ; preds = %if.then113, %sw.epilog.if.end115_crit_edge, %sw.epilog.if.end115_crit_edge227
  %tobool116.not = icmp eq ptr %108, null
  br i1 %tobool116.not, label %if.end115.if.end118_crit_edge, label %if.then117

if.end115.if.end118_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.then117:                                       ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @saa711x_write_platform_data(ptr noundef nonnull %call.i216, ptr noundef nonnull %108)
  br label %if.end118

if.end118:                                        ; preds = %if.then117, %if.end115.if.end118_crit_edge
  call fastcc void @saa711x_set_v4lstd(ptr noundef nonnull %call.i216, i64 noundef 45056)
  %call119 = call i32 @v4l2_ctrl_handler_setup(ptr noundef %hdl60) #12
  %116 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool121.not = icmp eq i8 %116, 0
  br i1 %tobool121.not, label %if.end118.cleanup_crit_edge, label %do.end128

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end128:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #14
  %name130 = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i216, i32 0, i32 9
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %call.i216, i32 0, i32 11
  %117 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %118, i8 noundef zeroext 30) #12
  %119 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i219 = call i32 @i2c_smbus_read_byte_data(ptr noundef %120, i8 noundef zeroext 31) #12
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %name130, i32 noundef %call1.i, i32 noundef %call1.i219) #16
  br label %cleanup

cleanup:                                          ; preds = %do.end128, %if.end118.cleanup_crit_edge, %if.then70, %if.end24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %96, %if.then70 ], [ -5, %entry.cleanup_crit_edge ], [ -19, %if.end10 ], [ -12, %if.end14.cleanup_crit_edge ], [ %call37, %if.end24.cleanup_crit_edge ], [ 0, %do.end128 ], [ 0, %if.end118.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %name) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #12
  %ctrl_handler = getelementptr inbounds %struct.v4l2_subdev, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %ctrl_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_handler, align 4
  tail call void @v4l2_ctrl_handler_free(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_auto_cluster(i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa711x_writeregs(ptr noundef %sd, ptr nocapture noundef readonly %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not2 = icmp eq i8 %1, 0
  br i1 %cmp.not2, label %entry.cleanup_crit_edge, label %while.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph:                                 ; preds = %entry
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %if.end19.while.body_crit_edge, %while.body.lr.ph
  %2 = phi i8 [ %1, %while.body.lr.ph ], [ %11, %if.end19.while.body_crit_edge ]
  %regs.addr.03 = phi ptr [ %regs, %while.body.lr.ph ], [ %incdec.ptr2, %if.end19.while.body_crit_edge ]
  %conv4 = zext i8 %2 to i32
  %incdec.ptr2 = getelementptr i8, ptr %regs.addr.03, i32 2
  %3 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ident, align 8
  %call3 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %4, i8 noundef zeroext %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %while.body
  %incdec.ptr = getelementptr i8, ptr %regs.addr.03, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext %2, i8 noundef zeroext %6) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp5 = icmp slt i32 %call1.i, 0
  br i1 %cmp5, label %if.then.cleanup_crit_edge, label %if.then.if.end19_crit_edge

if.then.if.end19_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %while.body
  %9 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %do.body.if.end19_crit_edge, label %do.end

do.body.if.end19_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name, i32 noundef %conv4) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %do.body.if.end19_crit_edge, %if.then.if.end19_crit_edge
  %10 = ptrtoint ptr %incdec.ptr2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %incdec.ptr2, align 1
  %cmp.not = icmp eq i8 %11, 0
  br i1 %cmp.not, label %if.end19.cleanup_crit_edge, label %if.end19.while.body_crit_edge

if.end19.while.body_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa711x_write_platform_data(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %state, i32 0, i32 11
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ident, align 8
  %2 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %switch = icmp eq i32 %2, 2
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %saa7113_r08_htc = getelementptr inbounds %struct.saa7115_platform_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %saa7113_r08_htc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %saa7113_r08_htc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then4

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 8) #12
  %conv6 = and i32 %call1.i, 231
  %7 = ptrtoint ptr %saa7113_r08_htc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %saa7113_r08_htc, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %shl = shl i32 %10, 3
  %or = or i32 %shl, %conv6
  %conv9 = trunc i32 %or to i8
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i155 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 8, i8 noundef zeroext %conv9) #12
  br label %if.end11

if.end11:                                         ; preds = %if.then4, %if.end.if.end11_crit_edge
  %saa7113_r10_vrln = getelementptr inbounds %struct.saa7115_platform_data, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %saa7113_r10_vrln to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %saa7113_r10_vrln, align 4
  %tobool12.not = icmp eq ptr %14, null
  br i1 %tobool12.not, label %if.end11.if.end27_crit_edge, label %if.then13

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i156 = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 11
  %15 = ptrtoint ptr %dev_priv.i.i156 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i156, align 4
  %call1.i157 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 16) #12
  %17 = trunc i32 %call1.i157 to i8
  %conv18 = and i8 %17, -9
  %18 = ptrtoint ptr %saa7113_r10_vrln to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %saa7113_r10_vrln, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %19, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool20.not = icmp eq i8 %21, 0
  %masksel = select i1 %tobool20.not, i8 0, i8 8
  %work.0 = or i8 %masksel, %conv18
  %22 = ptrtoint ptr %dev_priv.i.i156 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i156, align 4
  %call1.i159 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 16, i8 noundef zeroext %work.0) #12
  br label %if.end27

if.end27:                                         ; preds = %if.then13, %if.end11.if.end27_crit_edge
  %saa7113_r10_ofts = getelementptr inbounds %struct.saa7115_platform_data, ptr %data, i32 0, i32 3
  %24 = ptrtoint ptr %saa7113_r10_ofts to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %saa7113_r10_ofts, align 4
  %tobool28.not = icmp eq ptr %25, null
  br i1 %tobool28.not, label %if.end27.if.end41_crit_edge, label %if.then29

if.end27.if.end41_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end41

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i160 = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 11
  %26 = ptrtoint ptr %dev_priv.i.i160 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i160, align 4
  %call1.i161 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 16) #12
  %conv34 = and i32 %call1.i161, 63
  %28 = ptrtoint ptr %saa7113_r10_ofts to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %saa7113_r10_ofts, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %shl36 = shl i32 %31, 6
  %or38 = or i32 %shl36, %conv34
  %conv39 = trunc i32 %or38 to i8
  %32 = ptrtoint ptr %dev_priv.i.i160 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i160, align 4
  %call1.i163 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 16, i8 noundef zeroext %conv39) #12
  br label %if.end41

if.end41:                                         ; preds = %if.then29, %if.end27.if.end41_crit_edge
  %saa7113_r12_rts0 = getelementptr inbounds %struct.saa7115_platform_data, ptr %data, i32 0, i32 4
  %34 = ptrtoint ptr %saa7113_r12_rts0 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %saa7113_r12_rts0, align 4
  %tobool42.not = icmp eq ptr %35, null
  br i1 %tobool42.not, label %if.end41.if.end79_crit_edge, label %if.then43

if.end41.if.end79_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end79

if.then43:                                        ; preds = %if.end41
  %dev_priv.i.i164 = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 11
  %36 = ptrtoint ptr %dev_priv.i.i164 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_priv.i.i164, align 4
  %call1.i165 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 18) #12
  %conv48 = and i32 %call1.i165, 240
  %38 = ptrtoint ptr %saa7113_r12_rts0 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %saa7113_r12_rts0, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %or52 = or i32 %41, %conv48
  %conv53 = trunc i32 %or52 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp55 = icmp eq i32 %41, 0
  br i1 %cmp55, label %do.end, label %if.then43.if.end71_crit_edge, !prof !261

if.then43.if.end71_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end71

do.end:                                           ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1670, i32 noundef 9, ptr noundef null) #12
  br label %if.end71

if.end71:                                         ; preds = %do.end, %if.then43.if.end71_crit_edge
  %42 = ptrtoint ptr %dev_priv.i.i164 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i164, align 4
  %call1.i167 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext 18, i8 noundef zeroext %conv53) #12
  br label %if.end79

if.end79:                                         ; preds = %if.end71, %if.end41.if.end79_crit_edge
  %saa7113_r12_rts1 = getelementptr inbounds %struct.saa7115_platform_data, ptr %data, i32 0, i32 5
  %44 = ptrtoint ptr %saa7113_r12_rts1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %saa7113_r12_rts1, align 4
  %tobool80.not = icmp eq ptr %45, null
  br i1 %tobool80.not, label %if.end79.if.end93_crit_edge, label %if.then81

if.end79.if.end93_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end93

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i168 = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 11
  %46 = ptrtoint ptr %dev_priv.i.i168 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i168, align 4
  %call1.i169 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %47, i8 noundef zeroext 18) #12
  %conv86 = and i32 %call1.i169, 15
  %48 = ptrtoint ptr %saa7113_r12_rts1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %saa7113_r12_rts1, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %shl88 = shl i32 %51, 4
  %or90 = or i32 %shl88, %conv86
  %conv91 = trunc i32 %or90 to i8
  %52 = ptrtoint ptr %dev_priv.i.i168 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i168, align 4
  %call1.i171 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext 18, i8 noundef zeroext %conv91) #12
  br label %if.end93

if.end93:                                         ; preds = %if.then81, %if.end79.if.end93_crit_edge
  %saa7113_r13_adlsb = getelementptr inbounds %struct.saa7115_platform_data, ptr %data, i32 0, i32 6
  %54 = ptrtoint ptr %saa7113_r13_adlsb to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %saa7113_r13_adlsb, align 4
  %tobool94.not = icmp eq ptr %55, null
  br i1 %tobool94.not, label %if.end93.cleanup_crit_edge, label %if.then95

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then95:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i172 = getelementptr inbounds %struct.v4l2_subdev, ptr %state, i32 0, i32 11
  %56 = ptrtoint ptr %dev_priv.i.i172 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev_priv.i.i172, align 4
  %call1.i173 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %57, i8 noundef zeroext 19) #12
  %58 = trunc i32 %call1.i173 to i8
  %conv100 = and i8 %58, 127
  %59 = ptrtoint ptr %saa7113_r13_adlsb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %saa7113_r13_adlsb, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %60, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool102.not = icmp eq i8 %62, 0
  %masksel176 = select i1 %tobool102.not, i8 0, i8 -128
  %work.1 = or i8 %masksel176, %conv100
  %63 = ptrtoint ptr %dev_priv.i.i172 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i172, align 4
  %call1.i175 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext 19, i8 noundef zeroext %work.1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then95, %if.end93.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa711x_set_v4lstd(ptr noundef %sd, i64 noundef %std) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %std1 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %std1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %std)
  %cmp = icmp eq i64 %1, %std
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %std1 to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %std, ptr %std1, align 8
  %and = and i64 %std, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %3 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool29.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %do.body28, label %do.body

do.body:                                          ; preds = %if.end
  br i1 %tobool29.not, label %do.body.do.end12_crit_edge, label %do.end

do.body.do.end12_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end12

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %name) #16
  br label %do.end12

do.end12:                                         ; preds = %do.end, %do.body.do.end12_crit_edge
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp13 = icmp eq i32 %5, 3
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 8) #12
  %8 = trunc i32 %call1.i to i8
  %9 = and i8 %8, 63
  %conv22 = or i8 %9, 64
  br label %if.end59.sink.split

if.else:                                          ; preds = %do.end12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %if.else
  %10 = phi i8 [ -128, %if.else ], [ %19, %if.end19.i.while.body.i_crit_edge ]
  %regs.addr.03.i = phi ptr [ @saa7115_cfg_60hz_video, %if.else ], [ %incdec.ptr2.i, %if.end19.i.while.body.i_crit_edge ]
  %conv4.i = zext i8 %10 to i32
  %incdec.ptr2.i = getelementptr i8, ptr %regs.addr.03.i, i32 2
  %11 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ident, align 8
  %call3.i = tail call fastcc i32 @saa711x_has_reg(i32 noundef %12, i8 noundef zeroext %10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %regs.addr.03.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.i, align 1
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext %10, i8 noundef zeroext %14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp5.i, label %if.then.i.if.end59_crit_edge, label %if.then.i.if.end19.i_crit_edge

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then.i.if.end59_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.body.i:                                        ; preds = %while.body.i
  %17 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not.i = icmp eq i8 %17, 0
  br i1 %tobool8.not.i, label %do.body.i.if.end19.i_crit_edge, label %do.end.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef %conv4.i) #16
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %do.body.i.if.end19.i_crit_edge, %if.then.i.if.end19.i_crit_edge
  %18 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %incdec.ptr2.i, align 1
  %cmp.not.i = icmp eq i8 %19, 0
  br i1 %cmp.not.i, label %if.end19.i.if.end59_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end19.i.if.end59_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.body28:                                        ; preds = %if.end
  br i1 %tobool29.not, label %do.body28.do.end43_crit_edge, label %do.end36

do.body28.do.end43_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end43

do.end36:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #14
  %name38 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef %name38) #16
  br label %do.end43

do.end43:                                         ; preds = %do.end36, %do.body28.do.end43_crit_edge
  %ident44 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %20 = ptrtoint ptr %ident44 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ident44, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %21)
  %cmp45 = icmp eq i32 %21, 3
  %dev_priv.i.i162 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br i1 %cmp45, label %if.then47, label %if.else55

if.then47:                                        ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %dev_priv.i.i162 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i162, align 4
  %call1.i163 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext 8) #12
  %24 = trunc i32 %call1.i163 to i8
  %conv53 = and i8 %24, 63
  br label %if.end59.sink.split

if.else55:                                        ; preds = %do.end43
  %name.i168 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.body.i174

while.body.i174:                                  ; preds = %if.end19.i184.while.body.i174_crit_edge, %if.else55
  %25 = phi i8 [ -128, %if.else55 ], [ %34, %if.end19.i184.while.body.i174_crit_edge ]
  %regs.addr.03.i169 = phi ptr [ @saa7115_cfg_50hz_video, %if.else55 ], [ %incdec.ptr2.i171, %if.end19.i184.while.body.i174_crit_edge ]
  %conv4.i170 = zext i8 %25 to i32
  %incdec.ptr2.i171 = getelementptr i8, ptr %regs.addr.03.i169, i32 2
  %26 = ptrtoint ptr %ident44 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ident44, align 8
  %call3.i172 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %27, i8 noundef zeroext %25) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i172)
  %tobool.not.i173 = icmp eq i32 %call3.i172, 0
  br i1 %tobool.not.i173, label %do.body.i180, label %if.then.i178

if.then.i178:                                     ; preds = %while.body.i174
  %incdec.ptr.i175 = getelementptr i8, ptr %regs.addr.03.i169, i32 1
  %28 = ptrtoint ptr %incdec.ptr.i175 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %incdec.ptr.i175, align 1
  %30 = ptrtoint ptr %dev_priv.i.i162 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i162, align 4
  %call1.i.i176 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext %25, i8 noundef zeroext %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i176)
  %cmp5.i177 = icmp slt i32 %call1.i.i176, 0
  br i1 %cmp5.i177, label %if.then.i178.if.end59_crit_edge, label %if.then.i178.if.end19.i184_crit_edge

if.then.i178.if.end19.i184_crit_edge:             ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i184

if.then.i178.if.end59_crit_edge:                  ; preds = %if.then.i178
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

do.body.i180:                                     ; preds = %while.body.i174
  %32 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool8.not.i179 = icmp eq i8 %32, 0
  br i1 %tobool8.not.i179, label %do.body.i180.if.end19.i184_crit_edge, label %do.end.i182

do.body.i180.if.end19.i184_crit_edge:             ; preds = %do.body.i180
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i184

do.end.i182:                                      ; preds = %do.body.i180
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i168, i32 noundef %conv4.i170) #16
  br label %if.end19.i184

if.end19.i184:                                    ; preds = %do.end.i182, %do.body.i180.if.end19.i184_crit_edge, %if.then.i178.if.end19.i184_crit_edge
  %33 = ptrtoint ptr %incdec.ptr2.i171 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %incdec.ptr2.i171, align 1
  %cmp.not.i183 = icmp eq i8 %34, 0
  br i1 %cmp.not.i183, label %if.end19.i184.if.end59_crit_edge, label %if.end19.i184.while.body.i174_crit_edge

if.end19.i184.while.body.i174_crit_edge:          ; preds = %if.end19.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i174

if.end19.i184.if.end59_crit_edge:                 ; preds = %if.end19.i184
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end59

if.end59.sink.split:                              ; preds = %if.then47, %if.then15
  %dev_priv.i.i162.sink = phi ptr [ %dev_priv.i.i162, %if.then47 ], [ %dev_priv.i.i, %if.then15 ]
  %conv53.sink = phi i8 [ %conv53, %if.then47 ], [ %conv22, %if.then15 ]
  %.sink.ph = phi i32 [ 576, %if.then47 ], [ 480, %if.then15 ]
  %35 = ptrtoint ptr %dev_priv.i.i162.sink to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i162.sink, align 4
  %call1.i165 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 8, i8 noundef zeroext %conv53.sink) #12
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.end19.i184.if.end59_crit_edge, %if.then.i178.if.end59_crit_edge, %if.end19.i.if.end59_crit_edge, %if.then.i.if.end59_crit_edge
  %.sink = phi i32 [ %.sink.ph, %if.end59.sink.split ], [ 576, %if.end19.i184.if.end59_crit_edge ], [ 576, %if.then.i178.if.end59_crit_edge ], [ 480, %if.end19.i.if.end59_crit_edge ], [ 480, %if.then.i.if.end59_crit_edge ]
  %call58 = tail call fastcc i32 @saa711x_set_size(ptr noundef %sd, i32 noundef 720, i32 noundef %.sink)
  %ident60 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %37 = ptrtoint ptr %ident60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ident60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %switch = icmp ult i32 %38, 4
  %dev_priv.i.i186 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %39 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i186, align 4
  br i1 %switch, label %if.then66, label %if.else111

if.then66:                                        ; preds = %if.end59
  %call1.i187 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 14) #12
  %41 = trunc i32 %call1.i187 to i8
  %conv70 = and i8 %41, -113
  call void @__sanitizer_cov_trace_switch(i64 %std, ptr @__sancov_gen_cov_switch_values.117)
  switch i64 %std, label %if.else98 [
    i64 256, label %if.then73
    i64 1024, label %if.then80
    i64 2048, label %if.then87
    i64 8192, label %if.then94
  ]

if.then73:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %42 = or i8 %conv70, 48
  br label %if.end109

if.then80:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %43 = or i8 %conv70, 32
  br label %if.end109

if.then87:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %44 = or i8 %conv70, 16
  br label %if.end109

if.then94:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %45 = or i8 %conv70, 64
  br label %if.end109

if.else98:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #14
  %and99 = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and99)
  %tobool100.not = icmp eq i64 %and99, 0
  %46 = or i8 %conv70, 80
  %spec.select = select i1 %tobool100.not, i8 %conv70, i8 %46
  br label %if.end109

if.end109:                                        ; preds = %if.else98, %if.then94, %if.then87, %if.then80, %if.then73
  %reg67.0 = phi i8 [ %42, %if.then73 ], [ %43, %if.then80 ], [ %44, %if.then87 ], [ %45, %if.then94 ], [ %spec.select, %if.else98 ]
  %47 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_priv.i.i186, align 4
  %call1.i189 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %48, i8 noundef zeroext 14, i8 noundef zeroext %reg67.0) #12
  br label %cleanup

if.else111:                                       ; preds = %if.end59
  %call1.i191 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext -128) #12
  %and113 = and i32 %call1.i191, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.else111.if.end120_crit_edge, label %land.lhs.true

if.else111.if.end120_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

land.lhs.true:                                    ; preds = %if.else111
  %49 = ptrtoint ptr %ident60 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ident60, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp116 = icmp eq i32 %50, 4
  br i1 %cmp116, label %if.then118, label %land.lhs.true.if.end120_crit_edge

land.lhs.true.if.end120_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

if.then118:                                       ; preds = %land.lhs.true
  %name.i194 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %51 = ptrtoint ptr %ident60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ident60, align 8
  %call3.i198 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %52, i8 noundef zeroext -128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i198)
  %tobool.not.i199 = icmp eq i32 %call3.i198, 0
  br i1 %tobool.not.i199, label %do.body.i206, label %if.then.i204

if.then.i204:                                     ; preds = %if.then118
  %53 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_priv.i.i186, align 4
  %call1.i.i202 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %54, i8 noundef zeroext -128, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i202)
  %cmp5.i203 = icmp slt i32 %call1.i.i202, 0
  br i1 %cmp5.i203, label %if.then.i204.if.end120_crit_edge, label %if.then.i204.if.end19.i210_crit_edge

if.then.i204.if.end19.i210_crit_edge:             ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210

if.then.i204.if.end120_crit_edge:                 ; preds = %if.then.i204
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

do.body.i206:                                     ; preds = %if.then118
  %55 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool8.not.i205 = icmp eq i8 %55, 0
  br i1 %tobool8.not.i205, label %do.body.i206.if.end19.i210_crit_edge, label %do.end.i208

do.body.i206.if.end19.i210_crit_edge:             ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210

do.end.i208:                                      ; preds = %do.body.i206
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i194, i32 noundef 128) #16
  br label %if.end19.i210

if.end19.i210:                                    ; preds = %do.end.i208, %do.body.i206.if.end19.i210_crit_edge, %if.then.i204.if.end19.i210_crit_edge
  %56 = ptrtoint ptr %ident60 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ident60, align 8
  %call3.i198.1 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %57, i8 noundef zeroext -120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i198.1)
  %tobool.not.i199.1 = icmp eq i32 %call3.i198.1, 0
  br i1 %tobool.not.i199.1, label %do.body.i206.1, label %if.then.i204.1

if.then.i204.1:                                   ; preds = %if.end19.i210
  %58 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_priv.i.i186, align 4
  %call1.i.i202.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %59, i8 noundef zeroext -120, i8 noundef zeroext -48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i202.1)
  %cmp5.i203.1 = icmp slt i32 %call1.i.i202.1, 0
  br i1 %cmp5.i203.1, label %if.then.i204.1.if.end120_crit_edge, label %if.then.i204.1.if.end19.i210.1_crit_edge

if.then.i204.1.if.end19.i210.1_crit_edge:         ; preds = %if.then.i204.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210.1

if.then.i204.1.if.end120_crit_edge:               ; preds = %if.then.i204.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

do.body.i206.1:                                   ; preds = %if.end19.i210
  %60 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool8.not.i205.1 = icmp eq i8 %60, 0
  br i1 %tobool8.not.i205.1, label %do.body.i206.1.if.end19.i210.1_crit_edge, label %do.end.i208.1

do.body.i206.1.if.end19.i210.1_crit_edge:         ; preds = %do.body.i206.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210.1

do.end.i208.1:                                    ; preds = %do.body.i206.1
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i207.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i194, i32 noundef 136) #16
  br label %if.end19.i210.1

if.end19.i210.1:                                  ; preds = %do.end.i208.1, %do.body.i206.1.if.end19.i210.1_crit_edge, %if.then.i204.1.if.end19.i210.1_crit_edge
  %61 = ptrtoint ptr %ident60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ident60, align 8
  %call3.i198.2 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %62, i8 noundef zeroext -128) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i198.2)
  %tobool.not.i199.2 = icmp eq i32 %call3.i198.2, 0
  br i1 %tobool.not.i199.2, label %do.body.i206.2, label %if.then.i204.2

if.then.i204.2:                                   ; preds = %if.end19.i210.1
  %63 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev_priv.i.i186, align 4
  %call1.i.i202.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %64, i8 noundef zeroext -128, i8 noundef zeroext 48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i202.2)
  %cmp5.i203.2 = icmp slt i32 %call1.i.i202.2, 0
  br i1 %cmp5.i203.2, label %if.then.i204.2.if.end120_crit_edge, label %if.then.i204.2.if.end19.i210.2_crit_edge

if.then.i204.2.if.end19.i210.2_crit_edge:         ; preds = %if.then.i204.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210.2

if.then.i204.2.if.end120_crit_edge:               ; preds = %if.then.i204.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

do.body.i206.2:                                   ; preds = %if.end19.i210.1
  %65 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool8.not.i205.2 = icmp eq i8 %65, 0
  br i1 %tobool8.not.i205.2, label %do.body.i206.2.if.end19.i210.2_crit_edge, label %do.end.i208.2

do.body.i206.2.if.end19.i210.2_crit_edge:         ; preds = %do.body.i206.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210.2

do.end.i208.2:                                    ; preds = %do.body.i206.2
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i207.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i194, i32 noundef 128) #16
  br label %if.end19.i210.2

if.end19.i210.2:                                  ; preds = %do.end.i208.2, %do.body.i206.2.if.end19.i210.2_crit_edge, %if.then.i204.2.if.end19.i210.2_crit_edge
  %66 = ptrtoint ptr %ident60 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %ident60, align 8
  %call3.i198.3 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %67, i8 noundef zeroext -120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i198.3)
  %tobool.not.i199.3 = icmp eq i32 %call3.i198.3, 0
  br i1 %tobool.not.i199.3, label %do.body.i206.3, label %if.then.i204.3

if.then.i204.3:                                   ; preds = %if.end19.i210.2
  %68 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev_priv.i.i186, align 4
  %call1.i.i202.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %69, i8 noundef zeroext -120, i8 noundef zeroext -16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i202.3)
  %cmp5.i203.3 = icmp slt i32 %call1.i.i202.3, 0
  br i1 %cmp5.i203.3, label %if.then.i204.3.if.end120_crit_edge, label %if.then.i204.3.if.end19.i210.3_crit_edge

if.then.i204.3.if.end19.i210.3_crit_edge:         ; preds = %if.then.i204.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210.3

if.then.i204.3.if.end120_crit_edge:               ; preds = %if.then.i204.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

do.body.i206.3:                                   ; preds = %if.end19.i210.2
  %70 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool8.not.i205.3 = icmp eq i8 %70, 0
  br i1 %tobool8.not.i205.3, label %do.body.i206.3.if.end19.i210.3_crit_edge, label %do.end.i208.3

do.body.i206.3.if.end19.i210.3_crit_edge:         ; preds = %do.body.i206.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i210.3

do.end.i208.3:                                    ; preds = %do.body.i206.3
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i207.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i194, i32 noundef 136) #16
  br label %if.end19.i210.3

if.end19.i210.3:                                  ; preds = %do.end.i208.3, %do.body.i206.3.if.end19.i210.3_crit_edge, %if.then.i204.3.if.end19.i210.3_crit_edge
  %71 = ptrtoint ptr %ident60 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ident60, align 8
  %call3.i198.4 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %72, i8 noundef zeroext -121) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i198.4)
  %tobool.not.i199.4 = icmp eq i32 %call3.i198.4, 0
  br i1 %tobool.not.i199.4, label %do.body.i206.4, label %if.then.i204.4

if.then.i204.4:                                   ; preds = %if.end19.i210.3
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %dev_priv.i.i186 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i.i186, align 4
  %call1.i.i202.4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext -121, i8 noundef zeroext 1) #12
  br label %if.end120

do.body.i206.4:                                   ; preds = %if.end19.i210.3
  %75 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool8.not.i205.4 = icmp eq i8 %75, 0
  br i1 %tobool8.not.i205.4, label %do.body.i206.4.if.end120_crit_edge, label %do.end.i208.4

do.body.i206.4.if.end120_crit_edge:               ; preds = %do.body.i206.4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end120

do.end.i208.4:                                    ; preds = %do.body.i206.4
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i207.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i194, i32 noundef 135) #16
  br label %if.end120

if.end120:                                        ; preds = %do.end.i208.4, %do.body.i206.4.if.end120_crit_edge, %if.then.i204.4, %if.then.i204.3.if.end120_crit_edge, %if.then.i204.2.if.end120_crit_edge, %if.then.i204.1.if.end120_crit_edge, %if.then.i204.if.end120_crit_edge, %land.lhs.true.if.end120_crit_edge, %if.else111.if.end120_crit_edge
  %audclk_freq = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 12
  %76 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %audclk_freq, align 4
  %call121 = tail call i32 @saa711x_s_clock_freq(ptr noundef %sd, i32 noundef %77)
  br label %cleanup

cleanup:                                          ; preds = %if.end120, %if.end109, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_ctrl_handler_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %audclk_freq = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 12
  %0 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %audclk_freq, align 4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %name, i32 noundef %1) #16
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not = icmp eq i32 %3, 5
  %dev_priv.i.i145 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i145 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i145, align 4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 31) #12
  %and = and i32 %call1.i, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and)
  %cmp3 = icmp eq i32 %and, 129
  %cond = select i1 %cmp3, ptr @.str.39, ptr @.str.40
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, ptr noundef nonnull %cond) #16
  %and17 = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond19 = select i1 %tobool18.not, ptr @.str.45, ptr @.str.44
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef nonnull %cond19) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1.i146 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 30) #12
  %6 = ptrtoint ptr %dev_priv.i.i145 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i145, align 4
  %call1.i148 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 31) #12
  %and23 = and i32 %call1.i148, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and23)
  %cmp24 = icmp eq i32 %and23, 129
  %and26 = and i32 %call1.i146, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %and26)
  %cmp27 = icmp eq i32 %and26, 128
  %8 = select i1 %cmp24, i1 %cmp27, i1 false
  %and29 = and i32 %call1.i148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  %input = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 5
  %9 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %input, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp31 = icmp sgt i32 %10, 5
  br i1 %cmp31, label %do.end36, label %do.end44

do.end36:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %sub = add nsw i32 %10, -6
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name, i32 noundef %sub) #16
  br label %do.end53

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name, i32 noundef %10) #16
  br label %do.end53

do.end53:                                         ; preds = %do.end44, %do.end36
  %cond59 = select i1 %tobool30.not, ptr @.str.54, ptr @.str.55
  %spec.select = select i1 %8, ptr %cond59, ptr @.str.40
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name, ptr noundef nonnull %spec.select) #16
  %and68 = and i32 %call1.i148, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70 = select i1 %tobool69.not, ptr @.str.45, ptr @.str.44
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef %name, ptr noundef nonnull %cond70) #16
  %and72 = and i32 %call1.i146, 3
  %switch.tableidx = add nsw i32 %and72, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 3
  br i1 %11, label %switch.lookup, label %do.end53.do.end105_crit_edge

do.end53.do.end105_crit_edge:                     ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end105

switch.lookup:                                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.saa711x_log_status, i32 0, i32 %switch.tableidx
  %12 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %12)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %do.end105

do.end105:                                        ; preds = %switch.lookup, %do.end53.do.end105_crit_edge
  %.str.59.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.68, %do.end53.do.end105_crit_edge ]
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.59.sink, ptr noundef %name) #16
  %width = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 9
  %13 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 10
  %15 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %height, align 4
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef %name, i32 noundef %14, i32 noundef %16) #16
  %hdl = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 2
  tail call void @v4l2_ctrl_handler_log_status(ptr noundef %hdl, ptr noundef %name) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end105, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_reset(ptr noundef %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef %name) #16
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %ident.i = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %dev_priv.i.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %1 = ptrtoint ptr %ident.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ident.i, align 8
  %call3.i = tail call fastcc i32 @saa711x_has_reg(i32 noundef %2, i8 noundef zeroext -121) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %do.end3
  %3 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext -121, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp5.i, label %if.then.i.saa711x_writeregs.exit_crit_edge, label %if.then.i.if.end19.i_crit_edge

if.then.i.if.end19.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then.i.saa711x_writeregs.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.body.i:                                        ; preds = %do.end3
  %5 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool8.not.i = icmp eq i8 %5, 0
  br i1 %tobool8.not.i, label %do.body.i.if.end19.i_crit_edge, label %do.end.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 135) #16
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %do.body.i.if.end19.i_crit_edge, %if.then.i.if.end19.i_crit_edge
  %6 = ptrtoint ptr %ident.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ident.i, align 8
  %call3.i.1 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %7, i8 noundef zeroext -120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1)
  %tobool.not.i.1 = icmp eq i32 %call3.i.1, 0
  br i1 %tobool.not.i.1, label %do.body.i.1, label %if.then.i.1

if.then.i.1:                                      ; preds = %if.end19.i
  %8 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext -120, i8 noundef zeroext -48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.1)
  %cmp5.i.1 = icmp slt i32 %call1.i.i.1, 0
  br i1 %cmp5.i.1, label %if.then.i.1.saa711x_writeregs.exit_crit_edge, label %if.then.i.1.if.end19.i.1_crit_edge

if.then.i.1.if.end19.i.1_crit_edge:               ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.1

if.then.i.1.saa711x_writeregs.exit_crit_edge:     ; preds = %if.then.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.body.i.1:                                      ; preds = %if.end19.i
  %10 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not.i.1 = icmp eq i8 %10, 0
  br i1 %tobool8.not.i.1, label %do.body.i.1.if.end19.i.1_crit_edge, label %do.end.i.1

do.body.i.1.if.end19.i.1_crit_edge:               ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.1

do.end.i.1:                                       ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 136) #16
  br label %if.end19.i.1

if.end19.i.1:                                     ; preds = %do.end.i.1, %do.body.i.1.if.end19.i.1_crit_edge, %if.then.i.1.if.end19.i.1_crit_edge
  %11 = ptrtoint ptr %ident.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ident.i, align 8
  %call3.i.2 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %12, i8 noundef zeroext -120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2)
  %tobool.not.i.2 = icmp eq i32 %call3.i.2, 0
  br i1 %tobool.not.i.2, label %do.body.i.2, label %if.then.i.2

if.then.i.2:                                      ; preds = %if.end19.i.1
  %13 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext -120, i8 noundef zeroext -16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.2)
  %cmp5.i.2 = icmp slt i32 %call1.i.i.2, 0
  br i1 %cmp5.i.2, label %if.then.i.2.saa711x_writeregs.exit_crit_edge, label %if.then.i.2.if.end19.i.2_crit_edge

if.then.i.2.if.end19.i.2_crit_edge:               ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.2

if.then.i.2.saa711x_writeregs.exit_crit_edge:     ; preds = %if.then.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.body.i.2:                                      ; preds = %if.end19.i.1
  %15 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not.i.2 = icmp eq i8 %15, 0
  br i1 %tobool8.not.i.2, label %do.body.i.2.if.end19.i.2_crit_edge, label %do.end.i.2

do.body.i.2.if.end19.i.2_crit_edge:               ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.2

do.end.i.2:                                       ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 136) #16
  br label %if.end19.i.2

if.end19.i.2:                                     ; preds = %do.end.i.2, %do.body.i.2.if.end19.i.2_crit_edge, %if.then.i.2.if.end19.i.2_crit_edge
  %16 = ptrtoint ptr %ident.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ident.i, align 8
  %call3.i.3 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %17, i8 noundef zeroext -121) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3)
  %tobool.not.i.3 = icmp eq i32 %call3.i.3, 0
  br i1 %tobool.not.i.3, label %do.body.i.3, label %if.then.i.3

if.then.i.3:                                      ; preds = %if.end19.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %18 = ptrtoint ptr %dev_priv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i.i, align 4
  %call1.i.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext -121, i8 noundef zeroext 1) #12
  br label %saa711x_writeregs.exit

do.body.i.3:                                      ; preds = %if.end19.i.2
  %20 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool8.not.i.3 = icmp eq i8 %20, 0
  br i1 %tobool8.not.i.3, label %do.body.i.3.saa711x_writeregs.exit_crit_edge, label %do.end.i.3

do.body.i.3.saa711x_writeregs.exit_crit_edge:     ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.end.i.3:                                       ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 135) #16
  br label %saa711x_writeregs.exit

saa711x_writeregs.exit:                           ; preds = %do.end.i.3, %do.body.i.3.saa711x_writeregs.exit_crit_edge, %if.then.i.3, %if.then.i.2.saa711x_writeregs.exit_crit_edge, %if.then.i.1.saa711x_writeregs.exit_crit_edge, %if.then.i.saa711x_writeregs.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_gpio(ptr nocapture noundef readonly %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #12
  %and = and i32 %call1.i, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %cond = select i1 %tobool.not, i32 0, i32 128
  %or = or i32 %and, %cond
  %conv = trunc i32 %or to i8
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 17, i8 noundef zeroext %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_g_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #12
  %conv2 = sext i32 %call1.i to i64
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_storeN_noabort(i32 %4, i32 8)
  store i64 %conv2, ptr %val, align 1
  %size = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_storeN_noabort(i32 %5, i32 4)
  store i32 1, ptr %size, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_register(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %reg1, align 1
  %conv = trunc i64 %1 to i8
  %val = getelementptr inbounds %struct.v4l2_dbg_register, ptr %reg, i32 0, i32 3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %val, align 1
  %conv3 = trunc i64 %3 to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv3) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_ctrl_handler_log_status(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @saa711x_s_radio(ptr nocapture noundef writeonly %sd) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %radio, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_g_tuner(ptr noundef %sd, ptr nocapture noundef writeonly %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %radio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 31) #12
  %4 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end.do.end9_crit_edge, label %do.end

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, ptr noundef %name, i32 noundef %call1.i) #16
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.end.do.end9_crit_edge
  %and = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp10 = icmp eq i32 %and, 0
  %cond = select i1 %cmp10, i32 65535, i32 0
  %signal = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %cond, ptr %signal, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_clock_freq(ptr noundef %sd, i32 noundef %freq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch = icmp ult i32 %1, 4
  br i1 %switch, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not = icmp eq i8 %2, 0
  br i1 %tobool2.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %name, i32 noundef %freq) #16
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %3 = add i32 %freq, -48001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16001, i32 %3)
  %4 = icmp ult i32 %3, -16001
  br i1 %4, label %do.end9.cleanup_crit_edge, label %if.end15

do.end9.cleanup_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %do.end9
  %std = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 4
  %5 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %std, align 8
  %and = and i64 %6, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool16.not = icmp eq i64 %and, 0
  %cond = select i1 %tobool16.not, i32 5000, i32 5994
  %mul = mul nuw nsw i32 %freq, 25600
  %div = udiv i32 %mul, %cond
  %crystal_freq = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 13
  %7 = ptrtoint ptr %crystal_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %crystal_freq, align 8
  %conv17 = zext i32 %freq to i64
  %shl = shl nuw nsw i64 %conv17, 31
  %9 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %8, i64 %shl) #17, !srcloc !262
  %asmresult1.i = extractvalue { i64, i64 } %9, 1
  %extract.t447 = trunc i64 %asmresult1.i to i32
  %ucgc = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 14
  %10 = ptrtoint ptr %ucgc to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ucgc, align 4, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool211.not = icmp eq i8 %11, 0
  br i1 %tobool211.not, label %if.end15.if.end229_crit_edge, label %if.then212

if.end15.if.end229_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end229

if.then212:                                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %cgcdiv = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 15
  %12 = ptrtoint ptr %cgcdiv to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cgcdiv, align 1
  %conv213 = zext i8 %13 to i32
  %mul214 = mul nuw nsw i32 %div, %conv213
  %div215390 = lshr i32 %mul214, 4
  %mul218 = mul i32 %extract.t447, %conv213
  %div219391 = lshr i32 %mul218, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp222 = icmp eq i8 %13, 3
  %spec.select = select i1 %cmp222, i8 -64, i8 -128
  br label %if.end229

if.end229:                                        ; preds = %if.then212, %if.end15.if.end229_crit_edge
  %acni.0 = phi i32 [ %extract.t447, %if.end15.if.end229_crit_edge ], [ %div219391, %if.then212 ]
  %acc.0 = phi i8 [ 0, %if.end15.if.end229_crit_edge ], [ %spec.select, %if.then212 ]
  %acpf.0 = phi i32 [ %div, %if.end15.if.end229_crit_edge ], [ %div215390, %if.then212 ]
  %apll = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 16
  %14 = ptrtoint ptr %apll to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %apll, align 2, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool230.not = icmp eq i8 %15, 0
  %16 = or i8 %acc.0, 8
  %spec.select393 = select i1 %tobool230.not, i8 %acc.0, i8 %16
  %double_asclk = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 17
  %17 = ptrtoint ptr %double_asclk to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %double_asclk, align 1, !range !260
  %19 = zext i8 %18 to i32
  %acni.1 = shl i32 %acni.0, %19
  %acpf.1 = shl nuw nsw i32 %acpf.0, %19
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 56, i8 noundef zeroext 3) #12
  %22 = ptrtoint ptr %double_asclk to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %double_asclk, align 1, !range !260
  %shl245 = shl nuw nsw i8 16, %23
  %24 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i396 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 57, i8 noundef zeroext %shl245) #12
  %26 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i398 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 58, i8 noundef zeroext %spec.select393) #12
  %conv250 = trunc i32 %acpf.1 to i8
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i400 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 48, i8 noundef zeroext %conv250) #12
  %shr252 = lshr i32 %acpf.1, 8
  %conv254 = trunc i32 %shr252 to i8
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i402 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 49, i8 noundef zeroext %conv254) #12
  %shr256 = lshr i32 %acpf.1, 16
  %32 = trunc i32 %shr256 to i8
  %conv258 = and i8 %32, 3
  %33 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i404 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 50, i8 noundef zeroext %conv258) #12
  %conv261 = trunc i32 %acni.1 to i8
  %35 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i406 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %36, i8 noundef zeroext 52, i8 noundef zeroext %conv261) #12
  %shr263 = lshr i32 %acni.1, 8
  %conv265 = trunc i32 %shr263 to i8
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i408 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext 53, i8 noundef zeroext %conv265) #12
  %shr267 = lshr i32 %acni.1, 16
  %39 = trunc i32 %shr267 to i8
  %conv269 = and i8 %39, 63
  %40 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i410 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %41, i8 noundef zeroext 54, i8 noundef zeroext %conv269) #12
  %audclk_freq = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 12
  %42 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %freq, ptr %audclk_freq, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end229, %do.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end229 ], [ -22, %do.end9.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @saa711x_has_reg(i32 noundef %id, i8 noundef zeroext %reg) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %id, label %if.end60 [
    i32 1, label %if.then
    i32 0, label %if.then26
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %reg)
  %cmp1 = icmp ugt i8 %reg, 31
  br i1 %cmp1, label %if.then.return_crit_edge, label %switch.early.test

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test:                                ; preds = %if.then
  %switch.tableidx = add i8 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %switch.tableidx)
  %1 = icmp ult i8 %switch.tableidx, 30
  br i1 %1, label %switch.lookup, label %switch.early.test.return_crit_edge

switch.early.test.return_crit_edge:               ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %reg)
  %cmp28 = icmp ugt i8 %reg, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %reg)
  %cmp32.not = icmp eq i8 %reg, 1
  %or.cond384 = or i1 %cmp28, %cmp32.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %reg)
  %cmp36.not = icmp eq i8 %reg, 15
  %or.cond385 = or i1 %cmp36.not, %or.cond384
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %reg)
  %cmp40.not = icmp eq i8 %reg, 20
  %or.cond386 = or i1 %cmp40.not, %or.cond385
  %2 = and i8 %reg, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %2)
  %3 = icmp eq i8 %2, 24
  %4 = or i1 %3, %or.cond386
  call void @__sanitizer_cov_trace_const_cmp1(i8 29, i8 %reg)
  %cmp52.not = icmp eq i8 %reg, 29
  %or.cond389 = or i1 %cmp52.not, %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %reg)
  %cmp56 = icmp ne i8 %reg, 30
  %not.or.cond389 = xor i1 %or.cond389, true
  %narrow = and i1 %cmp56, %not.or.cond389
  br label %return

if.end60:                                         ; preds = %entry
  %5 = add i8 %reg, -59
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %5)
  %6 = icmp ult i8 %5, 5
  br i1 %6, label %if.end60.return_crit_edge, label %switch.early.test425

if.end60.return_crit_edge:                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test425:                             ; preds = %if.end60
  %7 = zext i8 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %reg, label %lor.lhs.false92 [
    i8 -81, label %switch.early.test425.return_crit_edge
    i8 -85, label %switch.early.test425.return_crit_edge458
    i8 -89, label %switch.early.test425.return_crit_edge459
    i8 -93, label %switch.early.test425.return_crit_edge460
    i8 95, label %switch.early.test425.return_crit_edge461
    i8 92, label %switch.early.test425.return_crit_edge462
  ]

switch.early.test425.return_crit_edge462:         ; preds = %switch.early.test425
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test425.return_crit_edge461:         ; preds = %switch.early.test425
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test425.return_crit_edge460:         ; preds = %switch.early.test425
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test425.return_crit_edge459:         ; preds = %switch.early.test425
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test425.return_crit_edge458:         ; preds = %switch.early.test425
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test425.return_crit_edge:            ; preds = %switch.early.test425
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false92:                                  ; preds = %switch.early.test425
  %8 = add i8 %reg, 75
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %9 = icmp ult i8 %8, 3
  br i1 %9, label %lor.lhs.false92.return_crit_edge, label %switch.early.test426

lor.lhs.false92.return_crit_edge:                 ; preds = %lor.lhs.false92
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test426:                             ; preds = %lor.lhs.false92
  %10 = add i8 %reg, 45
  %11 = tail call i8 @llvm.fshl.i8(i8 %10, i8 %10, i8 6)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %switch = icmp ult i8 %11, 4
  br i1 %switch, label %switch.early.test426.return_crit_edge, label %lor.lhs.false116

switch.early.test426.return_crit_edge:            ; preds = %switch.early.test426
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false116:                                 ; preds = %switch.early.test426
  %12 = zext i8 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %reg, label %lor.rhs [
    i8 -25, label %lor.lhs.false116.return_crit_edge
    i8 -26, label %lor.lhs.false116.return_crit_edge463
    i8 -27, label %lor.lhs.false116.return_crit_edge464
    i8 -126, label %lor.lhs.false116.return_crit_edge465
  ]

lor.lhs.false116.return_crit_edge465:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false116.return_crit_edge464:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false116.return_crit_edge463:             ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.lhs.false116.return_crit_edge:                ; preds = %lor.lhs.false116
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

lor.rhs:                                          ; preds = %lor.lhs.false116
  %13 = add i8 %reg, 119
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %14 = icmp ult i8 %13, 6
  br i1 %14, label %lor.rhs.return_crit_edge, label %if.end139, !prof !261

lor.rhs.return_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end139:                                        ; preds = %lor.rhs
  %15 = zext i32 %id to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %id, label %if.end139.return_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb157
    i32 4, label %sw.bb187
    i32 5, label %sw.bb229
    i32 6, label %sw.bb252
  ]

if.end139.return_crit_edge:                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %if.end139
  %switch.tableidx442 = add i8 %reg, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx442)
  %16 = icmp ult i8 %switch.tableidx442, 11
  br i1 %16, label %switch.hole_check, label %sw.bb.land.rhs151_crit_edge

sw.bb.land.rhs151_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs151

land.rhs151:                                      ; preds = %switch.hole_check.land.rhs151_crit_edge, %sw.bb.land.rhs151_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %reg)
  %cmp153 = icmp ult i8 %reg, 32
  br label %return

sw.bb157:                                         ; preds = %if.end139
  %switch.tableidx445 = add i8 %reg, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %switch.tableidx445)
  %17 = icmp ult i8 %switch.tableidx445, 11
  br i1 %17, label %switch.hole_check446, label %sw.bb157.land.lhs.true169_crit_edge

sw.bb157.land.lhs.true169_crit_edge:              ; preds = %sw.bb157
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true169

land.lhs.true169:                                 ; preds = %switch.hole_check446.land.lhs.true169_crit_edge, %sw.bb157.land.lhs.true169_crit_edge
  %18 = and i8 %reg, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %18)
  %.not = icmp ne i8 %18, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 93, i8 %reg)
  %cmp179.not = icmp ne i8 %reg, 93
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %reg)
  %cmp183 = icmp ult i8 %reg, 99
  %not.or.cond409 = and i1 %cmp179.not, %.not
  %spec.select = and i1 %not.or.cond409, %cmp183
  br label %return

sw.bb187:                                         ; preds = %if.end139
  %19 = add i8 %reg, -26
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %19)
  %20 = icmp ult i8 %19, 5
  %21 = and i8 %reg, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %21)
  %22 = icmp eq i8 %21, 32
  %or.cond433.not = or i1 %20, %22
  call void @__sanitizer_cov_trace_const_cmp1(i8 98, i8 %reg)
  %23 = icmp sgt i8 %reg, 98
  %or.cond434 = or i1 %23, %or.cond433.not
  br i1 %or.cond434, label %sw.bb187.return_crit_edge, label %switch.early.test427

sw.bb187.return_crit_edge:                        ; preds = %sw.bb187
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test427:                             ; preds = %sw.bb187
  %24 = zext i8 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %reg, label %land.rhs223 [
    i8 -127, label %switch.early.test427.return_crit_edge
    i8 55, label %switch.early.test427.return_crit_edge466
    i8 51, label %switch.early.test427.return_crit_edge467
  ]

switch.early.test427.return_crit_edge467:         ; preds = %switch.early.test427
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test427.return_crit_edge466:         ; preds = %switch.early.test427
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.early.test427.return_crit_edge:            ; preds = %switch.early.test427
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.rhs223:                                      ; preds = %switch.early.test427
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %reg)
  %cmp225 = icmp ult i8 %reg, -16
  br label %return

sw.bb229:                                         ; preds = %if.end139
  %25 = and i8 %reg, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %25)
  %26 = icmp eq i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 101, i8 %reg)
  %cmp239.not = icmp eq i8 %reg, 101
  %or.cond417 = or i1 %cmp239.not, %26
  br i1 %or.cond417, label %sw.bb229.return_crit_edge, label %land.rhs241

sw.bb229.return_crit_edge:                        ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

land.rhs241:                                      ; preds = %sw.bb229
  call void @__sanitizer_cov_trace_pc() #14
  %27 = add i8 %reg, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -3, i8 %27)
  %28 = icmp ult i8 %27, -3
  br label %return

sw.bb252:                                         ; preds = %if.end139
  %switch.tableidx452 = add i8 %reg, -26
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %switch.tableidx452)
  %29 = icmp ult i8 %switch.tableidx452, 30
  br i1 %29, label %switch.hole_check453, label %sw.bb252.land.lhs.true284_crit_edge

sw.bb252.land.lhs.true284_crit_edge:              ; preds = %sw.bb252
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true284

land.lhs.true284:                                 ; preds = %switch.hole_check453.land.lhs.true284_crit_edge, %sw.bb252.land.lhs.true284_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 99, i8 %reg)
  %30 = icmp slt i8 %reg, 99
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %reg)
  %cmp294.not = icmp ne i8 %reg, -127
  call void @__sanitizer_cov_trace_const_cmp1(i8 -16, i8 %reg)
  %cmp298 = icmp ult i8 %reg, -16
  %not.or.cond424 = and i1 %30, %cmp294.not
  %spec.select440 = and i1 %not.or.cond424, %cmp298
  br label %return

switch.lookup:                                    ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #14
  %switch.cast = zext i8 %switch.tableidx to i30
  %switch.downshift = lshr i30 235126782, %switch.cast
  %31 = and i30 %switch.downshift, 1
  %32 = sext i30 %31 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %switch.masked = icmp ne i30 %31, 0
  br label %return

switch.hole_check:                                ; preds = %sw.bb
  %switch.maskindex = zext i8 %switch.tableidx442 to i16
  %switch.shifted = lshr i16 2033, %switch.maskindex
  %33 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %switch.lobit.not = icmp eq i16 %33, 0
  br i1 %switch.lobit.not, label %switch.hole_check.land.rhs151_crit_edge, label %switch.hole_check.return_crit_edge

switch.hole_check.return_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.hole_check.land.rhs151_crit_edge:          ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs151

switch.hole_check446:                             ; preds = %sw.bb157
  %switch.maskindex448 = zext i8 %switch.tableidx445 to i16
  %switch.shifted449 = lshr i16 2033, %switch.maskindex448
  %34 = and i16 %switch.shifted449, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %switch.lobit450.not = icmp eq i16 %34, 0
  br i1 %switch.lobit450.not, label %switch.hole_check446.land.lhs.true169_crit_edge, label %switch.hole_check446.return_crit_edge

switch.hole_check446.return_crit_edge:            ; preds = %switch.hole_check446
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.hole_check446.land.lhs.true169_crit_edge:  ; preds = %switch.hole_check446
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true169

switch.hole_check453:                             ; preds = %sw.bb252
  %switch.maskindex455 = zext i8 %switch.tableidx452 to i32
  %switch.shifted456 = lshr i32 570454479, %switch.maskindex455
  %35 = and i32 %switch.shifted456, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %switch.lobit457.not = icmp eq i32 %35, 0
  br i1 %switch.lobit457.not, label %switch.hole_check453.land.lhs.true284_crit_edge, label %switch.hole_check453.return_crit_edge

switch.hole_check453.return_crit_edge:            ; preds = %switch.hole_check453
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

switch.hole_check453.land.lhs.true284_crit_edge:  ; preds = %switch.hole_check453
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true284

return:                                           ; preds = %switch.hole_check453.return_crit_edge, %switch.hole_check446.return_crit_edge, %switch.hole_check.return_crit_edge, %switch.lookup, %land.lhs.true284, %land.rhs241, %sw.bb229.return_crit_edge, %land.rhs223, %switch.early.test427.return_crit_edge, %switch.early.test427.return_crit_edge466, %switch.early.test427.return_crit_edge467, %sw.bb187.return_crit_edge, %land.lhs.true169, %land.rhs151, %if.end139.return_crit_edge, %lor.rhs.return_crit_edge, %lor.lhs.false116.return_crit_edge, %lor.lhs.false116.return_crit_edge463, %lor.lhs.false116.return_crit_edge464, %lor.lhs.false116.return_crit_edge465, %switch.early.test426.return_crit_edge, %lor.lhs.false92.return_crit_edge, %switch.early.test425.return_crit_edge, %switch.early.test425.return_crit_edge458, %switch.early.test425.return_crit_edge459, %switch.early.test425.return_crit_edge460, %switch.early.test425.return_crit_edge461, %switch.early.test425.return_crit_edge462, %if.end60.return_crit_edge, %if.then26, %switch.early.test.return_crit_edge, %if.then.return_crit_edge
  %retval.0.shrunk = phi i1 [ %narrow, %if.then26 ], [ false, %lor.rhs.return_crit_edge ], [ %cmp153, %land.rhs151 ], [ %cmp225, %land.rhs223 ], [ false, %sw.bb187.return_crit_edge ], [ false, %switch.early.test427.return_crit_edge ], [ false, %sw.bb229.return_crit_edge ], [ true, %if.end139.return_crit_edge ], [ false, %if.then.return_crit_edge ], [ false, %switch.early.test425.return_crit_edge ], [ false, %switch.early.test425.return_crit_edge458 ], [ false, %switch.early.test425.return_crit_edge459 ], [ false, %switch.early.test425.return_crit_edge460 ], [ false, %switch.early.test425.return_crit_edge461 ], [ false, %switch.early.test425.return_crit_edge462 ], [ false, %if.end60.return_crit_edge ], [ false, %switch.early.test426.return_crit_edge ], [ false, %lor.lhs.false92.return_crit_edge ], [ false, %lor.lhs.false116.return_crit_edge ], [ false, %switch.early.test427.return_crit_edge466 ], [ false, %switch.early.test427.return_crit_edge467 ], [ false, %lor.lhs.false116.return_crit_edge463 ], [ false, %lor.lhs.false116.return_crit_edge464 ], [ false, %lor.lhs.false116.return_crit_edge465 ], [ %spec.select, %land.lhs.true169 ], [ %28, %land.rhs241 ], [ %spec.select440, %land.lhs.true284 ], [ %switch.masked, %switch.lookup ], [ true, %switch.early.test.return_crit_edge ], [ false, %switch.hole_check.return_crit_edge ], [ false, %switch.hole_check446.return_crit_edge ], [ false, %switch.hole_check453.return_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_routing(ptr noundef %sd, i32 noundef %input, i32 noundef %output, i32 noundef %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %2 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef %name, i32 noundef %input, i32 noundef %output) #16
  %3 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pr = load i32, ptr %ident, align 8
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %4 = phi i32 [ %.pr, %do.end ], [ %1, %entry.do.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %switch164 = icmp ult i32 %4, 4
  br i1 %switch164, label %land.lhs.true, label %if.end20

land.lhs.true:                                    ; preds = %do.end7
  %5 = and i32 %input, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp eq i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %input)
  %cmp21 = icmp ugt i32 %input, 9
  %or.cond = or i1 %cmp21, %switch
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end24_crit_edge

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %input)
  %cmp21.old = icmp ugt i32 %input, 9
  br i1 %cmp21.old, label %if.end20.cleanup_crit_edge, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end24

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end24:                                         ; preds = %if.end20.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge
  %input25 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 5
  %6 = ptrtoint ptr %input25 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %input25, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %input)
  %cmp26 = icmp eq i32 %7, %input
  br i1 %cmp26, label %land.lhs.true28, label %if.end24.do.body34_crit_edge

if.end24.do.body34_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

land.lhs.true28:                                  ; preds = %if.end24
  %output29 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 6
  %8 = ptrtoint ptr %output29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %output)
  %cmp30 = icmp eq i32 %9, %output
  br i1 %cmp30, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true28.do.body34_crit_edge

land.lhs.true28.do.body34_crit_edge:              ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body34

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body34:                                        ; preds = %land.lhs.true28.do.body34_crit_edge, %if.end24.do.body34_crit_edge
  %10 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool35.not = icmp eq i8 %10, 0
  br i1 %tobool35.not, label %do.body34.do.end55_crit_edge, label %do.end42

do.body34.do.end55_crit_edge:                     ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end55

do.end42:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #14
  %name44 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %input)
  %cmp46 = icmp ugt i32 %input, 5
  %cond48 = select i1 %cmp46, ptr @.str.84, ptr @.str.85
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %output)
  %cmp49 = icmp eq i32 %output, 1
  %cond51 = select i1 %cmp49, ptr @.str.86, ptr @.str.87
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef %name44, ptr noundef nonnull %cond48, ptr noundef nonnull %cond51) #16
  br label %do.end55

do.end55:                                         ; preds = %do.end42, %do.body34.do.end55_crit_edge
  %11 = ptrtoint ptr %input25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %input, ptr %input25, align 8
  %12 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp58 = icmp eq i32 %13, 0
  br i1 %cmp58, label %if.then60, label %do.end55.if.end77_crit_edge

do.end55.if.end77_crit_edge:                      ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end77

if.then60:                                        ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %input)
  %cmp61 = icmp ugt i32 %input, 3
  %sub = add nsw i32 %input, -2
  %spec.select = select i1 %cmp61, i32 %sub, i32 %input
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 16) #12
  %and = and i32 %call1.i, 63
  %and66 = and i32 %output, 192
  %16 = or i32 %and, %and66
  %17 = trunc i32 %16 to i8
  %conv67 = xor i8 %17, 64
  %18 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i166 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 16, i8 noundef zeroext %conv67) #12
  %20 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i168 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 19) #12
  %and70 = and i32 %call1.i168, 240
  %and71 = and i32 %output, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  %cond73 = select i1 %tobool72.not, i32 0, i32 10
  %or74 = or i32 %and70, %cond73
  %conv75 = trunc i32 %or74 to i8
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i170 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext 19, i8 noundef zeroext %conv75) #12
  br label %if.end77

if.end77:                                         ; preds = %if.then60, %do.end55.if.end77_crit_edge
  %input.addr.1 = phi i32 [ %spec.select, %if.then60 ], [ %input, %do.end55.if.end77_crit_edge ]
  %dev_priv.i.i171 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %24 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_priv.i.i171, align 4
  %call1.i172 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %25, i8 noundef zeroext 2) #12
  %conv79 = select i1 %cmp, i32 248, i32 240
  %and80 = and i32 %call1.i172, %conv79
  %or81 = or i32 %and80, %input.addr.1
  %conv82 = trunc i32 %or81 to i8
  %26 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_priv.i.i171, align 4
  %call1.i174 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %27, i8 noundef zeroext 2, i8 noundef zeroext %conv82) #12
  %28 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i171, align 4
  %call1.i176 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 9) #12
  %and85 = and i32 %call1.i176, 127
  %30 = ptrtoint ptr %input25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %input25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp87 = icmp sgt i32 %31, 5
  %cond89 = select i1 %cmp87, i32 128, i32 0
  %or90 = or i32 %cond89, %and85
  %conv91 = trunc i32 %or90 to i8
  %32 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i171, align 4
  %call1.i178 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 9, i8 noundef zeroext %conv91) #12
  %output93 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 6
  %34 = ptrtoint ptr %output93 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %output, ptr %output93, align 4
  %35 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ident, align 8
  %37 = and i32 %36, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %37)
  %switch163 = icmp eq i32 %37, 4
  br i1 %switch163, label %if.then101, label %if.end77.if.end109_crit_edge

if.end77.if.end109_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end109

if.then101:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #14
  %38 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_priv.i.i171, align 4
  %call1.i180 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %39, i8 noundef zeroext -125) #12
  %and103 = and i32 %call1.i180, 254
  %40 = ptrtoint ptr %output93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %output93, align 4
  %and105 = and i32 %41, 1
  %or106 = or i32 %and105, %and103
  %conv107 = trunc i32 %or106 to i8
  %42 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_priv.i.i171, align 4
  %call1.i182 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %43, i8 noundef zeroext -125, i8 noundef zeroext %conv107) #12
  %44 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pr187 = load i32, ptr %ident, align 8
  br label %if.end109

if.end109:                                        ; preds = %if.then101, %if.end77.if.end109_crit_edge
  %45 = phi i32 [ %36, %if.end77.if.end109_crit_edge ], [ %.pr187, %if.then101 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp111.not = icmp eq i32 %45, 0
  br i1 %cmp111.not, label %if.end109.cleanup_crit_edge, label %if.then113

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then113:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #14
  %and114 = and i32 %config, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %46 = ptrtoint ptr %dev_priv.i.i171 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i171, align 4
  %. = select i1 %tobool115.not, i8 33, i8 32
  %call1.i186 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext -123, i8 noundef zeroext %.) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %if.end109.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ 0, %land.lhs.true28.cleanup_crit_edge ], [ 0, %if.end109.cleanup_crit_edge ], [ 0, %if.then113 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_crystal_freq(ptr noundef %sd, i32 noundef %freq, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 32110000, label %entry.if.end_crit_edge
    i32 24576000, label %entry.if.end_crit_edge22
  ]

entry.if.end_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge22
  %crystal_freq = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 13
  %1 = ptrtoint ptr %crystal_freq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %freq, ptr %crystal_freq, align 8
  %double_asclk = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 17
  %2 = trunc i32 %flags to i8
  %3 = lshr i8 %2, 3
  %4 = and i8 %3, 1
  %5 = ptrtoint ptr %double_asclk to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %double_asclk, align 1
  %and2 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %conv = select i1 %tobool3.not, i8 4, i8 3
  %cgcdiv = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 15
  %6 = ptrtoint ptr %cgcdiv to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %cgcdiv, align 1
  %ucgc = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 14
  %7 = and i8 %2, 1
  %8 = ptrtoint ptr %ucgc to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %ucgc, align 4
  %apll = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 16
  %9 = lshr i8 %2, 2
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %apll to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %apll, align 2
  %audclk_freq = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 12
  %12 = ptrtoint ptr %audclk_freq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %audclk_freq, align 4
  %call10 = tail call i32 @saa711x_s_clock_freq(ptr noundef %sd, i32 noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %radio = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 8
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %radio, align 4
  tail call fastcc void @saa711x_set_v4lstd(ptr noundef %sd, i64 noundef %std)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_querystd(ptr noundef %sd, ptr nocapture noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 31) #12
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %2 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp = icmp eq i32 %3, 5
  br i1 %cmp, label %if.then, label %entry.do.body16_crit_edge

entry.do.body16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 30) #12
  %6 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.then.do.end9_crit_edge, label %do.end

if.then.do.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88, ptr noundef %name, i32 noundef %call1.i74) #16
  br label %do.end9

do.end9:                                          ; preds = %do.end, %if.then.do.end9_crit_edge
  %and = and i32 %call1.i74, 3
  %7 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %and, label %do.end9.do.body16.sink.split_crit_edge [
    i32 1, label %do.end9.do.body16.sink.split.sink.split_crit_edge
    i32 2, label %sw.bb11
    i32 3, label %sw.bb13
  ]

do.end9.do.body16.sink.split.sink.split_crit_edge: ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.sink.split.sink.split

do.end9.do.body16.sink.split_crit_edge:           ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.sink.split

sw.bb11:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.sink.split.sink.split

sw.bb13:                                          ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body16.sink.split.sink.split

do.body16.sink.split.sink.split:                  ; preds = %sw.bb13, %sw.bb11, %do.end9.do.body16.sink.split.sink.split_crit_edge
  %.sink77 = phi i64 [ 4095, %sw.bb11 ], [ 16711680, %sw.bb13 ], [ 45056, %do.end9.do.body16.sink.split.sink.split_crit_edge ]
  %8 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %std, align 8
  %and10 = and i64 %9, %.sink77
  br label %do.body16.sink.split

do.body16.sink.split:                             ; preds = %do.body16.sink.split.sink.split, %do.end9.do.body16.sink.split_crit_edge
  %.sink = phi i64 [ 0, %do.end9.do.body16.sink.split_crit_edge ], [ %and10, %do.body16.sink.split.sink.split ]
  %10 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %.sink, ptr %std, align 8
  br label %do.body16

do.body16:                                        ; preds = %do.body16.sink.split, %entry.do.body16_crit_edge
  %11 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool17.not = icmp eq i8 %11, 0
  br i1 %tobool17.not, label %do.body16.do.end31_crit_edge, label %do.end24

do.body16.do.end31_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end31

do.end24:                                         ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #14
  %name26 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef %name26, i32 noundef %call1.i) #16
  br label %do.end31

do.end31:                                         ; preds = %do.end24, %do.body16.do.end31_crit_edge
  %and32 = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end35, label %do.end31.do.body42_crit_edge

do.end31.do.body42_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body42

if.end35:                                         ; preds = %do.end31
  %and36 = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %12 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %std, align 8
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %and39 = and i64 %13, 63744
  br label %do.body42

if.else:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  %and40 = and i64 %13, 16713471
  br label %do.body42

do.body42:                                        ; preds = %if.else, %if.then38, %do.end31.do.body42_crit_edge
  %.sink75 = phi i64 [ %and40, %if.else ], [ %and39, %if.then38 ], [ 0, %do.end31.do.body42_crit_edge ]
  %14 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %.sink75, ptr %std, align 8
  %15 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool43.not = icmp eq i8 %15, 0
  br i1 %tobool43.not, label %do.body42.do.end57_crit_edge, label %do.end50

do.body42.do.end57_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end57

do.end50:                                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #14
  %name52 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %16 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %std, align 8
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef %name52, i64 noundef %17) #16
  br label %do.end57

do.end57:                                         ; preds = %do.end50, %do.body42.do.end57_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_g_input_status(ptr nocapture noundef readonly %sd, ptr nocapture noundef writeonly %status) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %status, align 4
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %1 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %2)
  %cmp = icmp eq i32 %2, 5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 30) #12
  %phi.bo = and i32 %call1.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %phi.bo)
  %phi.cmp = icmp eq i32 %phi.bo, 128
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %reg1e.0 = phi i1 [ %phi.cmp, %if.then ], [ true, %entry.if.end_crit_edge ]
  %dev_priv.i.i11 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %dev_priv.i.i11 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_priv.i.i11, align 4
  %call1.i12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 31) #12
  %and = and i32 %call1.i12, 193
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %and)
  %cmp3 = icmp eq i32 %and, 129
  %or.cond = select i1 %cmp3, i1 %reg1e.0, i1 false
  br i1 %or.cond, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_stream(ptr noundef %sd, i32 noundef %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool3.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool3.not, ptr @.str.99, ptr @.str.98
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef %name, ptr noundef nonnull %cond) #16
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %enable7 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 7
  %1 = ptrtoint ptr %enable7 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %enable7, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %enable)
  %cmp8 = icmp eq i32 %2, %enable
  br i1 %cmp8, label %do.end6.cleanup_crit_edge, label %if.end11

do.end6.cleanup_crit_edge:                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %do.end6
  %3 = ptrtoint ptr %enable7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %enable, ptr %enable7, align 8
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %switch = icmp ult i32 %5, 4
  br i1 %switch, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %conv18 = trunc i32 %enable to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %6 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -121, i8 noundef zeroext %conv18) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %do.end6.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_decode_vbi_line(ptr nocapture noundef readonly %sd, ptr nocapture noundef %vbi) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %p1 = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 1
  %0 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p1, align 4
  %type = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 3
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %type, align 4
  %arrayidx = getelementptr i8, ptr %1, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %arrayidx2 = getelementptr i8, ptr %1, i32 3
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %6 to i32
  %std = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 4
  %7 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %std, align 8
  %and = and i64 %8, 63744
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %xor = xor i32 %conv, 64
  %spec.select = select i1 %tobool.not, i32 %conv, i32 %xor
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %9 = ptrtoint ptr %p1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr, ptr %p1, align 4
  %and5 = lshr i32 %spec.select, 6
  %and5.lobit = and i32 %and5, 1
  %10 = ptrtoint ptr %vbi to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and5.lobit, ptr %vbi, align 4
  %and7 = shl nuw nsw i32 %spec.select, 3
  %shl = and i32 %and7, 504
  %line = getelementptr inbounds %struct.v4l2_decode_vbi_line, ptr %vbi, i32 0, i32 2
  %and8 = lshr i32 %conv3, 4
  %11 = and i32 %and8, 7
  %or = or i32 %shl, %11
  %12 = ptrtoint ptr %line to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %or, ptr %line, align 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(10) %add.ptr, ptr noundef nonnull dereferenceable(10) @saa711x_decode_vbi_line.vbi_no_data_pattern, i32 10) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %entry.cleanup_crit_edge, label %if.end14

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %entry
  %and10 = and i32 %conv3, 15
  %13 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %and10, label %if.end14.cleanup_crit_edge [
    i32 1, label %if.end14.cleanup.sink.split_crit_edge
    i32 4, label %sw.bb16
    i32 5, label %if.end14.for.body.i_crit_edge
    i32 7, label %if.end14.for.body.i85_crit_edge
  ]

if.end14.for.body.i85_crit_edge:                  ; preds = %if.end14
  br label %for.body.i85

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.cleanup.sink.split_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb16:                                          ; preds = %if.end14
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr, align 1
  %16 = lshr i8 %15, 4
  %xor.i = xor i8 %16, %15
  %17 = lshr i8 %xor.i, 2
  %xor6.i = xor i8 %17, %xor.i
  %18 = lshr i8 %xor6.i, 1
  %xor11.i = xor i8 %18, %xor6.i
  %19 = and i8 %xor11.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool19.not = icmp eq i8 %19, 0
  br i1 %tobool19.not, label %sw.bb16.cleanup_crit_edge, label %lor.lhs.false

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb16
  %arrayidx20 = getelementptr i8, ptr %1, i32 5
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20, align 1
  %22 = lshr i8 %21, 4
  %xor.i76 = xor i8 %22, %21
  %23 = lshr i8 %xor.i76, 2
  %xor6.i77 = xor i8 %23, %xor.i76
  %24 = lshr i8 %xor6.i77, 1
  %xor11.i78 = xor i8 %24, %xor6.i77
  %25 = and i8 %xor11.i78, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool22.not = icmp eq i8 %25, 0
  br i1 %tobool22.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %i.041.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %wss.040.i = phi i32 [ %or.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %add.ptr, i32 %i.041.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %27 to i32
  %and.i80 = and i32 %conv.i, 7
  %arrayidx1.i = getelementptr [8 x i32], ptr @saa711x_decode_wss.wss_bits, i32 0, i32 %and.i80
  %28 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.i, align 4
  %30 = lshr i32 %conv.i, 3
  %and4.i = and i32 %30, 7
  %arrayidx5.i = getelementptr [8 x i32], ptr @saa711x_decode_wss.wss_bits, i32 0, i32 %and4.i
  %31 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %32)
  %cmp6.i = icmp eq i32 %29, %32
  br i1 %cmp6.i, label %for.body.i.cleanup_crit_edge, label %for.inc.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.inc.i:                                        ; preds = %for.body.i
  %shl.i = shl i32 %32, %i.041.i
  %or.i = or i32 %shl.i, %wss.040.i
  %inc.i = add nuw nsw i32 %i.041.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %conv10.i = and i32 %or.i, 15
  %33 = lshr i32 %conv10.i, 2
  %xor.i81 = xor i32 %33, %conv10.i
  %34 = lshr i32 %xor.i81, 1
  %xor18.i = xor i32 %34, %xor.i81
  %and21.i = and i32 %xor18.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool.not.i = icmp eq i32 %and21.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %or.i)
  %cmp28 = icmp eq i32 %or.i, -1
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %cmp28
  br i1 %or.cond, label %for.end.i.cleanup_crit_edge, label %if.end31

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %conv33 = trunc i32 %or.i to i8
  %35 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv33, ptr %add.ptr, align 1
  %shr35 = lshr i32 %or.i, 8
  %conv36 = trunc i32 %shr35 to i8
  %arrayidx37 = getelementptr i8, ptr %1, i32 5
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv36, ptr %arrayidx37, align 1
  br label %cleanup.sink.split

for.body.i85:                                     ; preds = %for.body.i85.for.body.i85_crit_edge, %if.end14.for.body.i85_crit_edge
  %err.039.i = phi i32 [ %or7.i, %for.body.i85.for.body.i85_crit_edge ], [ 0, %if.end14.for.body.i85_crit_edge ]
  %i.038.i = phi i32 [ %add22.i, %for.body.i85.for.body.i85_crit_edge ], [ 0, %if.end14.for.body.i85_crit_edge ]
  %arrayidx.i82 = getelementptr i8, ptr %add.ptr, i32 %i.038.i
  %37 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.i82, align 1
  %idxprom.i = zext i8 %38 to i32
  %arrayidx1.i83 = getelementptr [256 x i8], ptr @saa711x_decode_vps.biphase_tbl, i32 0, i32 %idxprom.i
  %39 = ptrtoint ptr %arrayidx1.i83 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx1.i83, align 1
  %add.i = or i32 %i.038.i, 1
  %arrayidx2.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx2.i, align 1
  %idxprom3.i = zext i8 %42 to i32
  %arrayidx4.i = getelementptr [256 x i8], ptr @saa711x_decode_vps.biphase_tbl, i32 0, i32 %idxprom3.i
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx4.i, align 1
  %or35.i = or i8 %44, %40
  %or.i84 = zext i8 %or35.i to i32
  %or7.i = or i32 %err.039.i, %or.i84
  %45 = and i8 %44, 15
  %46 = shl i8 %40, 4
  %or1936.i = or i8 %45, %46
  %div37.i = lshr exact i32 %i.038.i, 1
  %arrayidx21.i = getelementptr i8, ptr %add.ptr, i32 %div37.i
  %47 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %or1936.i, ptr %arrayidx21.i, align 1
  %add22.i = add nuw nsw i32 %i.038.i, 2
  %cmp.i = icmp ult i32 %i.038.i, 24
  br i1 %cmp.i, label %for.body.i85.for.body.i85_crit_edge, label %saa711x_decode_vps.exit

for.body.i85.for.body.i85_crit_edge:              ; preds = %for.body.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i85

saa711x_decode_vps.exit:                          ; preds = %for.body.i85
  %and24.i = and i32 %or7.i, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %cmp41.not = icmp eq i32 %and24.i, 0
  br i1 %cmp41.not, label %saa711x_decode_vps.exit.cleanup.sink.split_crit_edge, label %saa711x_decode_vps.exit.cleanup_crit_edge

saa711x_decode_vps.exit.cleanup_crit_edge:        ; preds = %saa711x_decode_vps.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

saa711x_decode_vps.exit.cleanup.sink.split_crit_edge: ; preds = %saa711x_decode_vps.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %saa711x_decode_vps.exit.cleanup.sink.split_crit_edge, %if.end31, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.end14.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 16384, %if.end31 ], [ %and10, %if.end14.cleanup.sink.split_crit_edge ], [ 4096, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 1024, %saa711x_decode_vps.exit.cleanup.sink.split_crit_edge ]
  %48 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink, ptr %type, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %saa711x_decode_vps.exit.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_g_vbi_data(ptr nocapture noundef readonly %sd, ptr nocapture noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %1, label %entry.return_crit_edge [
    i32 16384, label %sw.bb
    i32 4096, label %sw.bb7
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb:                                            ; preds = %entry
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %3 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext 107) #12
  %and = and i32 %call1.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.return.sink.split_crit_edge, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.bb.return.sink.split_crit_edge:                ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

sw.bb7:                                           ; preds = %entry
  %field = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %field to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %field, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %dev_priv.i.i56 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %7 = ptrtoint ptr %dev_priv.i.i56 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i56, align 4
  %call1.i57 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 102) #12
  br i1 %cmp, label %if.then9, label %if.end23

if.then9:                                         ; preds = %sw.bb7
  %and11 = and i32 %call1.i57, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then9.return.sink.split_crit_edge, label %if.then9.return_crit_edge

if.then9.return_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.then9.return.sink.split_crit_edge:             ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

if.end23:                                         ; preds = %sw.bb7
  %and25 = and i32 %call1.i57, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.return.sink.split_crit_edge, label %if.end23.return_crit_edge

if.end23.return_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

if.end23.return.sink.split_crit_edge:             ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #14
  br label %return.sink.split

return.sink.split:                                ; preds = %if.end23.return.sink.split_crit_edge, %if.then9.return.sink.split_crit_edge, %sw.bb.return.sink.split_crit_edge
  %dev_priv.i.i56.sink70 = phi ptr [ %dev_priv.i.i, %sw.bb.return.sink.split_crit_edge ], [ %dev_priv.i.i56, %if.then9.return.sink.split_crit_edge ], [ %dev_priv.i.i56, %if.end23.return.sink.split_crit_edge ]
  %.sink69 = phi i8 [ 108, %sw.bb.return.sink.split_crit_edge ], [ 105, %if.then9.return.sink.split_crit_edge ], [ 103, %if.end23.return.sink.split_crit_edge ]
  %.sink68 = phi i8 [ 109, %sw.bb.return.sink.split_crit_edge ], [ 106, %if.then9.return.sink.split_crit_edge ], [ 104, %if.end23.return.sink.split_crit_edge ]
  %9 = ptrtoint ptr %dev_priv.i.i56.sink70 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i56.sink70, align 4
  %call1.i65 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext %.sink69) #12
  %conv30 = trunc i32 %call1.i65 to i8
  %data31 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4
  %11 = ptrtoint ptr %data31 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv30, ptr %data31, align 4
  %12 = ptrtoint ptr %dev_priv.i.i56.sink70 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_priv.i.i56.sink70, align 4
  %call1.i67 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext %.sink68) #12
  %conv34 = trunc i32 %call1.i67 to i8
  %arrayidx36 = getelementptr %struct.v4l2_sliced_vbi_data, ptr %data, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv34, ptr %arrayidx36, align 1
  br label %return

return:                                           ; preds = %return.sink.split, %if.end23.return_crit_edge, %if.then9.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %sw.bb.return_crit_edge ], [ -5, %if.then9.return_crit_edge ], [ -5, %if.end23.return_crit_edge ], [ -22, %entry.return_crit_edge ], [ 0, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_raw_fmt(ptr noundef %sd, ptr nocapture noundef readnone %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @saa711x_set_lcr(ptr noundef %sd, ptr noundef null)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_g_sliced_fmt(ptr nocapture noundef readonly %sd, ptr nocapture noundef %sliced) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %service_lines = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %sliced, i32 0, i32 1
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = call ptr @memset(ptr %sliced, i32 0, i32 98)
  %1 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext -128) #12
  %and = and i32 %call1.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.043 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 2, %entry.for.body_crit_edge ]
  %3 = trunc i32 %i.043 to i8
  %conv = add i8 %3, 63
  %4 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i42 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %conv) #12
  %conv3 = lshr i32 %call1.i42, 4
  %6 = and i32 %conv3, 15
  %arrayidx = getelementptr [16 x i16], ptr @saa711x_g_sliced_fmt.lcr2vbi, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %arrayidx6 = getelementptr [24 x i16], ptr %service_lines, i32 0, i32 %i.043
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %arrayidx6, align 2
  %and8 = and i32 %call1.i42, 15
  %arrayidx9 = getelementptr [16 x i16], ptr @saa711x_g_sliced_fmt.lcr2vbi, i32 0, i32 %and8
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx9, align 2
  %arrayidx12 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %sliced, i32 0, i32 1, i32 1, i32 %i.043
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx12, align 2
  %or39 = or i16 %11, %8
  %13 = ptrtoint ptr %sliced to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %sliced, align 4
  %or2340 = or i16 %or39, %14
  store i16 %or2340, ptr %sliced, align 4
  %inc = add nuw nsw i32 %i.043, 1
  %exitcond.not = icmp eq i32 %inc, 24
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_sliced_fmt(ptr noundef %sd, ptr noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @saa711x_set_lcr(ptr noundef %sd, ptr noundef %fmt)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @saa711x_set_lcr(ptr noundef %sd, ptr noundef %fmt) unnamed_addr #2 align 64 {
entry:
  %lcr = alloca [24 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %std = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %lcr) #12
  %2 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 6
  %3 = getelementptr inbounds [24 x i8], ptr %lcr, i32 0, i32 10
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %4 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ident, align 8
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %5, label %for.body.preheader [
    i32 3, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge215
    i32 0, label %entry.cleanup_crit_edge216
  ]

entry.cleanup_crit_edge216:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge215:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %7 = call ptr @memset(ptr %lcr, i32 255, i32 24)
  %cmp3 = icmp eq ptr %fmt, null
  %conv214 = and i64 %1, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv214)
  %tobool6.not = icmp eq i64 %conv214, 0
  br i1 %cmp3, label %if.then5, label %if.else25

if.then5:                                         ; preds = %for.body.preheader
  br i1 %tobool6.not, label %for.body19.preheader, label %for.body11.preheader

for.body11.preheader:                             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %8 = call ptr @memset(ptr %2, i32 221, i32 18)
  br label %if.end118

for.body19.preheader:                             ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #14
  %9 = call ptr @memset(ptr %3, i32 221, i32 12)
  br label %if.end118

if.else25:                                        ; preds = %for.body.preheader
  %service_lines45 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1
  br i1 %tobool6.not, label %for.cond41.preheader, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx47 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 0
  %10 = call ptr @memset(ptr %service_lines45, i32 0, i32 12)
  %11 = call ptr @memset(ptr %arrayidx47, i32 0, i32 12)
  br label %for.body71.preheader

for.cond41.preheader:                             ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx60 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 22
  %12 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %arrayidx60, align 2
  %arrayidx63 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 22
  %arrayidx60.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 23
  %13 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %arrayidx60.1, align 2
  %14 = call ptr @memset(ptr %service_lines45, i32 0, i32 20)
  %15 = call ptr @memset(ptr %arrayidx63, i32 0, i32 24)
  br label %for.body71.preheader

for.body71.preheader:                             ; preds = %for.cond41.preheader, %for.cond28.preheader
  br label %for.body71

for.body71:                                       ; preds = %for.inc112.1.for.body71_crit_edge, %for.body71.preheader
  %i.6203 = phi i32 [ %inc116, %for.inc112.1.for.body71_crit_edge ], [ 6, %for.body71.preheader ]
  %arrayidx72 = getelementptr [24 x i8], ptr %lcr, i32 0, i32 %i.6203
  %16 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx72, align 1
  %arrayidx79 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 1, i32 %i.6203
  %17 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx79, align 2
  %19 = zext i16 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.128)
  switch i16 %18, label %for.body71.for.inc112_crit_edge [
    i16 0, label %for.body71.for.inc112.sink.split_crit_edge
    i16 1, label %sw.bb84
    i16 4096, label %sw.bb91
    i16 16384, label %sw.bb98
    i16 1024, label %sw.bb105
  ]

for.body71.for.inc112.sink.split_crit_edge:       ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.sink.split

for.body71.for.inc112_crit_edge:                  ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112

sw.bb84:                                          ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.sink.split

sw.bb91:                                          ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.sink.split

sw.bb98:                                          ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.sink.split

sw.bb105:                                         ; preds = %for.body71
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.sink.split

for.inc112.sink.split:                            ; preds = %sw.bb105, %sw.bb98, %sw.bb91, %sw.bb84, %for.body71.for.inc112.sink.split_crit_edge
  %.sink212 = phi i8 [ 1, %sw.bb84 ], [ 4, %sw.bb91 ], [ 5, %sw.bb98 ], [ 7, %sw.bb105 ], [ 15, %for.body71.for.inc112.sink.split_crit_edge ]
  %20 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx72, align 1
  %conv83 = or i8 %21, %.sink212
  store i8 %conv83, ptr %arrayidx72, align 1
  br label %for.inc112

for.inc112:                                       ; preds = %for.inc112.sink.split, %for.body71.for.inc112_crit_edge
  %arrayidx79.1 = getelementptr %struct.v4l2_sliced_vbi_format, ptr %fmt, i32 0, i32 1, i32 0, i32 %i.6203
  %22 = ptrtoint ptr %arrayidx79.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx79.1, align 2
  %24 = zext i16 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.129)
  switch i16 %23, label %for.inc112.for.inc112.1_crit_edge [
    i16 0, label %sw.bb.1
    i16 1, label %sw.bb84.1
    i16 4096, label %sw.bb91.1
    i16 16384, label %sw.bb98.1
    i16 1024, label %for.inc112.for.inc112.1.sink.split_crit_edge
  ]

for.inc112.for.inc112.1.sink.split_crit_edge:     ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.1.sink.split

for.inc112.for.inc112.1_crit_edge:                ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.1

sw.bb98.1:                                        ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.1.sink.split

sw.bb91.1:                                        ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.1.sink.split

sw.bb84.1:                                        ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.1.sink.split

sw.bb.1:                                          ; preds = %for.inc112
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc112.1.sink.split

for.inc112.1.sink.split:                          ; preds = %sw.bb.1, %sw.bb84.1, %sw.bb91.1, %sw.bb98.1, %for.inc112.for.inc112.1.sink.split_crit_edge
  %.sink213 = phi i8 [ -16, %sw.bb.1 ], [ 16, %sw.bb84.1 ], [ 64, %sw.bb91.1 ], [ 80, %sw.bb98.1 ], [ 112, %for.inc112.for.inc112.1.sink.split_crit_edge ]
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx72, align 1
  %conv83.1 = or i8 %26, %.sink213
  store i8 %conv83.1, ptr %arrayidx72, align 1
  br label %for.inc112.1

for.inc112.1:                                     ; preds = %for.inc112.1.sink.split, %for.inc112.for.inc112.1_crit_edge
  %inc116 = add nuw nsw i32 %i.6203, 1
  %exitcond.not = icmp eq i32 %inc116, 24
  br i1 %exitcond.not, label %for.inc112.1.if.end118_crit_edge, label %for.inc112.1.for.body71_crit_edge

for.inc112.1.for.body71_crit_edge:                ; preds = %for.inc112.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body71

for.inc112.1.if.end118_crit_edge:                 ; preds = %for.inc112.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end118

if.end118:                                        ; preds = %for.inc112.1.if.end118_crit_edge, %for.body19.preheader, %for.body11.preheader
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  br label %for.body122

for.body122:                                      ; preds = %for.body122.for.body122_crit_edge, %if.end118
  %i.7206 = phi i32 [ 2, %if.end118 ], [ %inc128, %for.body122.for.body122_crit_edge ]
  %27 = trunc i32 %i.7206 to i8
  %conv124 = add i8 %27, 63
  %arrayidx125 = getelementptr [24 x i8], ptr %lcr, i32 0, i32 %i.7206
  %28 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx125, align 1
  %30 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext %conv124, i8 noundef zeroext %29) #12
  %inc128 = add nuw nsw i32 %i.7206, 1
  %exitcond211.not = icmp eq i32 %inc128, 24
  br i1 %exitcond211.not, label %for.end129, label %for.body122.for.body122_crit_edge

for.body122.for.body122_crit_edge:                ; preds = %for.body122
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body122

for.end129:                                       ; preds = %for.body122
  %cond = select i1 %cmp3, ptr @saa7115_cfg_vbi_on, ptr @saa7115_cfg_vbi_off
  %32 = ptrtoint ptr %cond to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %cond, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp.not2.i = icmp eq i8 %33, 0
  br i1 %cmp.not2.i, label %for.end129.cleanup_crit_edge, label %while.body.lr.ph.i

for.end129.cleanup_crit_edge:                     ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

while.body.lr.ph.i:                               ; preds = %for.end129
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  br label %while.body.i

while.body.i:                                     ; preds = %if.end19.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %34 = phi i8 [ %33, %while.body.lr.ph.i ], [ %43, %if.end19.i.while.body.i_crit_edge ]
  %regs.addr.03.i = phi ptr [ %cond, %while.body.lr.ph.i ], [ %incdec.ptr2.i, %if.end19.i.while.body.i_crit_edge ]
  %conv4.i = zext i8 %34 to i32
  %incdec.ptr2.i = getelementptr i8, ptr %regs.addr.03.i, i32 2
  %35 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ident, align 8
  %call3.i = tail call fastcc i32 @saa711x_has_reg(i32 noundef %36, i8 noundef zeroext %34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i189

if.then.i189:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i8, ptr %regs.addr.03.i, i32 1
  %37 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i, align 1
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext %34, i8 noundef zeroext %38) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp5.i, label %if.then.i189.cleanup_crit_edge, label %if.then.i189.if.end19.i_crit_edge

if.then.i189.if.end19.i_crit_edge:                ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then.i189.cleanup_crit_edge:                   ; preds = %if.then.i189
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body.i:                                        ; preds = %while.body.i
  %41 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool8.not.i = icmp eq i8 %41, 0
  br i1 %tobool8.not.i, label %do.body.i.if.end19.i_crit_edge, label %do.end.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef %conv4.i) #16
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %do.body.i.if.end19.i_crit_edge, %if.then.i189.if.end19.i_crit_edge
  %42 = ptrtoint ptr %incdec.ptr2.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %incdec.ptr2.i, align 1
  %cmp.not.i = icmp eq i8 %43, 0
  br i1 %cmp.not.i, label %if.end19.i.cleanup_crit_edge, label %if.end19.i.while.body.i_crit_edge

if.end19.i.while.body.i_crit_edge:                ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %if.end19.i.cleanup_crit_edge, %if.then.i189.cleanup_crit_edge, %for.end129.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge215, %entry.cleanup_crit_edge216
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %lcr) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_set_fmt(ptr noundef %sd, ptr nocapture noundef readnone %sd_state, ptr nocapture noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %format1 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2
  %pad = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 1
  %0 = ptrtoint ptr %pad to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pad, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %code, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %field = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %field to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %field, align 4
  %colorspace = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %colorspace to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %colorspace, align 4
  %6 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %format, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %format1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %format1, align 4
  %height = getelementptr inbounds %struct.v4l2_subdev_format, ptr %format, i32 0, i32 2, i32 1
  %10 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %height, align 4
  %call = tail call fastcc i32 @saa711x_set_size(ptr noundef %sd, i32 noundef %9, i32 noundef %11)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end4 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @saa711x_set_size(ptr noundef %sd, i32 noundef %width, i32 noundef %height) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %std = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %std, align 8
  %conv201 = and i64 %1, 16713471
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv201)
  %tobool.not = icmp eq i64 %conv201, 0
  %cond = select i1 %tobool.not, i32 480, i32 576
  %2 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %name = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.100, ptr noundef %name, i32 noundef %width, i32 noundef %height) #16
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %3 = add i32 %width, -1441
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1440, i32 %3)
  %4 = icmp ult i32 %3, -1440
  br i1 %4, label %do.end7.cleanup_crit_edge, label %if.end13

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13:                                         ; preds = %do.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %height)
  %cmp14 = icmp slt i32 %height, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %height)
  %cmp17 = icmp slt i32 %cond, %height
  %or.cond202 = select i1 %cmp14, i1 true, i1 %cmp17
  br i1 %or.cond202, label %if.end13.cleanup_crit_edge, label %if.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %ident = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 11
  %5 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ident, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %switch = icmp ult i32 %6, 4
  br i1 %switch, label %if.then23, label %if.end39

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 720, i32 %width)
  %cmp24.not = icmp eq i32 %width, 720
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %height)
  %cmp28.not = icmp eq i32 %cond, %height
  %or.cond203 = select i1 %cmp24.not, i1 %cmp28.not, i1 false
  br i1 %or.cond203, label %if.end32.thread, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end32.thread:                                  ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #14
  %width33278 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 9
  %7 = ptrtoint ptr %width33278 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %width, ptr %width33278, align 8
  %height34279 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 10
  %8 = ptrtoint ptr %height34279 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %height, ptr %height34279, align 4
  br label %cleanup

if.end39:                                         ; preds = %if.end20
  %width33 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 9
  %9 = ptrtoint ptr %width33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %width, ptr %width33, align 8
  %height34 = getelementptr inbounds %struct.saa711x_state, ptr %sd, i32 0, i32 10
  %10 = ptrtoint ptr %height34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %height, ptr %height34, align 4
  %conv41 = trunc i32 %width to i8
  %dev_priv.i.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %11 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext -52, i8 noundef zeroext %conv41) #12
  %13 = lshr i32 %width, 8
  %conv44 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i216 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext -51, i8 noundef zeroext %conv44) #12
  %div264277 = lshr i32 %height, 1
  %add = add nuw nsw i32 %div264277, 8
  %spec.select = select i1 %tobool.not, i32 %add, i32 %div264277
  %conv50 = trunc i32 %spec.select to i8
  %16 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i218 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %17, i8 noundef zeroext -50, i8 noundef zeroext %conv50) #12
  %18 = lshr i32 %spec.select, 8
  %conv54 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i220 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext -49, i8 noundef zeroext %conv54) #12
  %div56265.rhs.trunc = trunc i32 %width to i16
  %div56265266 = udiv i16 720, %div56265.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %div56265.rhs.trunc)
  %tobool57.not = icmp ugt i16 %div56265.rhs.trunc, 720
  %narrow = select i1 %tobool57.not, i16 1, i16 %div56265266
  %cond58 = zext i16 %narrow to i32
  %mul = mul nuw nsw i32 %cond58, %width
  %div59267 = udiv i32 737280, %mul
  %21 = trunc i16 %narrow to i8
  %conv61 = and i8 %21, 63
  %22 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i222 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %23, i8 noundef zeroext -48, i8 noundef zeroext %conv61) #12
  %24 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool64.not = icmp eq i8 %24, 0
  br i1 %tobool64.not, label %if.end39.do.end78_crit_edge, label %do.end71

if.end39.do.end78_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end78

do.end71:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #14
  %name73 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, ptr noundef %name73, i32 noundef %cond58, i32 noundef %div59267) #16
  br label %do.end78

do.end78:                                         ; preds = %do.end71, %if.end39.do.end78_crit_edge
  %conv80 = trunc i32 %div59267 to i8
  %25 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i224 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -40, i8 noundef zeroext %conv80) #12
  %27 = lshr i32 %div59267, 8
  %conv84 = trunc i32 %27 to i8
  %28 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i226 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext -39, i8 noundef zeroext %conv84) #12
  %30 = lshr i32 %div59267, 1
  %conv88 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i228 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext -36, i8 noundef zeroext %conv88) #12
  %33 = lshr i32 %div59267, 9
  %conv92 = trunc i32 %33 to i8
  %34 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i230 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext -35, i8 noundef zeroext %conv92) #12
  %mul94 = shl nuw nsw i32 %cond, 10
  %div95268 = udiv i32 %mul94, %height
  %36 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool97.not = icmp eq i8 %36, 0
  br i1 %tobool97.not, label %do.end78.do.end111_crit_edge, label %do.end104

do.end78.do.end111_crit_edge:                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end111

do.end104:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #14
  %name106 = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef %name106, i32 noundef %cond, i32 noundef %div95268) #16
  br label %do.end111

do.end111:                                        ; preds = %do.end104, %do.end78.do.end111_crit_edge
  %div112269 = udiv i32 65536, %div95268
  %conv113 = trunc i32 %div112269 to i8
  %37 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i232 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %38, i8 noundef zeroext -43, i8 noundef zeroext %conv113) #12
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i234 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %40, i8 noundef zeroext -42, i8 noundef zeroext %conv113) #12
  %conv119 = trunc i32 %div95268 to i8
  %41 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i236 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext -32, i8 noundef zeroext %conv119) #12
  %43 = lshr i32 %div95268, 8
  %conv123 = trunc i32 %43 to i8
  %44 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i238 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %45, i8 noundef zeroext -31, i8 noundef zeroext %conv123) #12
  %46 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i240 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %47, i8 noundef zeroext -30, i8 noundef zeroext %conv119) #12
  %48 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i242 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %49, i8 noundef zeroext -29, i8 noundef zeroext %conv123) #12
  %name.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 9
  %50 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ident, align 8
  %call3.i = tail call fastcc i32 @saa711x_has_reg(i32 noundef %51, i8 noundef zeroext -121) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i243

if.then.i243:                                     ; preds = %do.end111
  %52 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %53, i8 noundef zeroext -121, i8 noundef zeroext 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp5.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp5.i, label %if.then.i243.saa711x_writeregs.exit_crit_edge, label %if.then.i243.if.end19.i_crit_edge

if.then.i243.if.end19.i_crit_edge:                ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

if.then.i243.saa711x_writeregs.exit_crit_edge:    ; preds = %if.then.i243
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.body.i:                                        ; preds = %do.end111
  %54 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool8.not.i = icmp eq i8 %54, 0
  br i1 %tobool8.not.i, label %do.body.i.if.end19.i_crit_edge, label %do.end.i

do.body.i.if.end19.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 135) #16
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %do.body.i.if.end19.i_crit_edge, %if.then.i243.if.end19.i_crit_edge
  %55 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ident, align 8
  %call3.i.1 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %56, i8 noundef zeroext -120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1)
  %tobool.not.i.1 = icmp eq i32 %call3.i.1, 0
  br i1 %tobool.not.i.1, label %do.body.i.1, label %if.then.i243.1

if.then.i243.1:                                   ; preds = %if.end19.i
  %57 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %58, i8 noundef zeroext -120, i8 noundef zeroext -48) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.1)
  %cmp5.i.1 = icmp slt i32 %call1.i.i.1, 0
  br i1 %cmp5.i.1, label %if.then.i243.1.saa711x_writeregs.exit_crit_edge, label %if.then.i243.1.if.end19.i.1_crit_edge

if.then.i243.1.if.end19.i.1_crit_edge:            ; preds = %if.then.i243.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.1

if.then.i243.1.saa711x_writeregs.exit_crit_edge:  ; preds = %if.then.i243.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.body.i.1:                                      ; preds = %if.end19.i
  %59 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool8.not.i.1 = icmp eq i8 %59, 0
  br i1 %tobool8.not.i.1, label %do.body.i.1.if.end19.i.1_crit_edge, label %do.end.i.1

do.body.i.1.if.end19.i.1_crit_edge:               ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.1

do.end.i.1:                                       ; preds = %do.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 136) #16
  br label %if.end19.i.1

if.end19.i.1:                                     ; preds = %do.end.i.1, %do.body.i.1.if.end19.i.1_crit_edge, %if.then.i243.1.if.end19.i.1_crit_edge
  %60 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ident, align 8
  %call3.i.2 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %61, i8 noundef zeroext -120) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2)
  %tobool.not.i.2 = icmp eq i32 %call3.i.2, 0
  br i1 %tobool.not.i.2, label %do.body.i.2, label %if.then.i243.2

if.then.i243.2:                                   ; preds = %if.end19.i.1
  %62 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i.2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext -120, i8 noundef zeroext -16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.2)
  %cmp5.i.2 = icmp slt i32 %call1.i.i.2, 0
  br i1 %cmp5.i.2, label %if.then.i243.2.saa711x_writeregs.exit_crit_edge, label %if.then.i243.2.if.end19.i.2_crit_edge

if.then.i243.2.if.end19.i.2_crit_edge:            ; preds = %if.then.i243.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.2

if.then.i243.2.saa711x_writeregs.exit_crit_edge:  ; preds = %if.then.i243.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.body.i.2:                                      ; preds = %if.end19.i.1
  %64 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool8.not.i.2 = icmp eq i8 %64, 0
  br i1 %tobool8.not.i.2, label %do.body.i.2.if.end19.i.2_crit_edge, label %do.end.i.2

do.body.i.2.if.end19.i.2_crit_edge:               ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end19.i.2

do.end.i.2:                                       ; preds = %do.body.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 136) #16
  br label %if.end19.i.2

if.end19.i.2:                                     ; preds = %do.end.i.2, %do.body.i.2.if.end19.i.2_crit_edge, %if.then.i243.2.if.end19.i.2_crit_edge
  %65 = ptrtoint ptr %ident to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ident, align 8
  %call3.i.3 = tail call fastcc i32 @saa711x_has_reg(i32 noundef %66, i8 noundef zeroext -121) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3)
  %tobool.not.i.3 = icmp eq i32 %call3.i.3, 0
  br i1 %tobool.not.i.3, label %do.body.i.3, label %if.then.i243.3

if.then.i243.3:                                   ; preds = %if.end19.i.2
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i.i.3 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext -121, i8 noundef zeroext 1) #12
  br label %saa711x_writeregs.exit

do.body.i.3:                                      ; preds = %if.end19.i.2
  %69 = load i8, ptr @debug, align 1, !range !260
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool8.not.i.3 = icmp eq i8 %69, 0
  br i1 %tobool8.not.i.3, label %do.body.i.3.saa711x_writeregs.exit_crit_edge, label %do.end.i.3

do.body.i.3.saa711x_writeregs.exit_crit_edge:     ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  br label %saa711x_writeregs.exit

do.end.i.3:                                       ; preds = %do.body.i.3
  call void @__sanitizer_cov_trace_pc() #14
  %call15.i.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108, ptr noundef %name.i, i32 noundef 135) #16
  br label %saa711x_writeregs.exit

saa711x_writeregs.exit:                           ; preds = %do.end.i.3, %do.body.i.3.saa711x_writeregs.exit_crit_edge, %if.then.i243.3, %if.then.i243.2.saa711x_writeregs.exit_crit_edge, %if.then.i243.1.saa711x_writeregs.exit_crit_edge, %if.then.i243.saa711x_writeregs.exit_crit_edge
  %70 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i245 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %71, i8 noundef zeroext -128) #12
  %72 = trunc i32 %call1.i245 to i8
  %conv134 = or i8 %72, 32
  %73 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i247 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %74, i8 noundef zeroext -128, i8 noundef zeroext %conv134) #12
  br label %cleanup

cleanup:                                          ; preds = %saa711x_writeregs.exit, %if.end32.thread, %if.then23.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %saa711x_writeregs.exit ], [ -22, %do.end7.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -22, %if.then23.cleanup_crit_edge ], [ 0, %if.end32.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_g_volatile_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9963805, i32 %3)
  %cond = icmp eq i32 %3, 9963805
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %4 = getelementptr i8, ptr %1, i32 184
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -108
  %9 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 15) #12
  %and = and i32 %call1.i, 127
  %gain = getelementptr i8, ptr %1, i32 188
  %11 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gain, align 4
  %val3 = getelementptr inbounds %struct.v4l2_ctrl, ptr %12, i32 0, i32 22
  %13 = ptrtoint ptr %val3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %val3, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @saa711x_s_ctrl(ptr nocapture noundef readonly %ctrl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler.i = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 2
  %0 = ptrtoint ptr %handler.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler.i, align 8
  %id = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 8
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 8
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 9963776, label %sw.bb
    i32 9963777, label %sw.bb3
    i32 9963778, label %sw.bb7
    i32 9963779, label %sw.bb11
    i32 9963805, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv = trunc i32 %6 to i8
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 -108
  %7 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_priv.i.i, align 4
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 10, i8 noundef zeroext %conv) #12
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val4 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %9 = ptrtoint ptr %val4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val4, align 4
  %conv5 = trunc i32 %10 to i8
  %dev_priv.i.i38 = getelementptr i8, ptr %1, i32 -108
  %11 = ptrtoint ptr %dev_priv.i.i38 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_priv.i.i38, align 4
  %call1.i39 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %conv5) #12
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val8 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %13 = ptrtoint ptr %val8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val8, align 4
  %conv9 = trunc i32 %14 to i8
  %dev_priv.i.i40 = getelementptr i8, ptr %1, i32 -108
  %15 = ptrtoint ptr %dev_priv.i.i40 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i40, align 4
  %call1.i41 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 12, i8 noundef zeroext %conv9) #12
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %val12 = getelementptr inbounds %struct.v4l2_ctrl, ptr %ctrl, i32 0, i32 22
  %17 = ptrtoint ptr %val12 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val12, align 4
  %conv13 = trunc i32 %18 to i8
  %dev_priv.i.i42 = getelementptr i8, ptr %1, i32 -108
  %19 = ptrtoint ptr %dev_priv.i.i42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_priv.i.i42, align 4
  %call1.i43 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 13, i8 noundef zeroext %conv13) #12
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  %21 = getelementptr i8, ptr %1, i32 184
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %val16 = getelementptr inbounds %struct.v4l2_ctrl, ptr %23, i32 0, i32 22
  %24 = ptrtoint ptr %val16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not = icmp eq i32 %25, 0
  %gain20 = getelementptr i8, ptr %1, i32 188
  %26 = ptrtoint ptr %gain20 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %gain20, align 4
  %val21 = getelementptr inbounds %struct.v4l2_ctrl, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %val21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val21, align 4
  %30 = trunc i32 %29 to i8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  %dev_priv.i.i44 = getelementptr i8, ptr %1, i32 -108
  %31 = ptrtoint ptr %dev_priv.i.i44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_priv.i.i44, align 4
  %call1.i45 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 15, i8 noundef zeroext %30) #12
  br label %cleanup

if.else:                                          ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #14
  %conv22 = or i8 %30, -128
  %dev_priv.i.i46 = getelementptr i8, ptr %1, i32 -108
  %33 = ptrtoint ptr %dev_priv.i.i46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_priv.i.i46, align 4
  %call1.i47 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %34, i8 noundef zeroext 15, i8 noundef zeroext %conv22) #12
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then, %sw.bb11, %sw.bb7, %sw.bb3, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb11 ], [ 0, %sw.bb7 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind readnone }
attributes #18 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !64, !65, !66, !68, !70, !72, !73, !75, !76, !77, !79, !81, !83, !84, !85, !86, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !139, !141, !143, !145, !146, !147, !148, !150, !152, !153, !154, !155, !157, !159, !160, !161, !162, !164, !165, !166, !167, !168, !169, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !189, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !209, !210, !211, !213, !214, !215, !217, !218, !219, !221, !223, !224, !225, !226, !228, !230, !232, !234, !236, !238, !239, !240, !241, !243, !244, !245, !247, !249}
!llvm.module.flags = !{!251, !252, !253, !254, !255, !256, !257, !258}
!llvm.ident = !{!259}

!0 = !{ptr @__UNIQUE_ID_description292, !1, !"__UNIQUE_ID_description292", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/saa7115.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_author293, !3, !"__UNIQUE_ID_author293", i1 false, i1 false}
!3 = !{!"../drivers/media/i2c/saa7115.c", i32 42, i32 1}
!4 = !{ptr @__UNIQUE_ID_file294, !5, !"__UNIQUE_ID_file294", i1 false, i1 false}
!5 = !{!"../drivers/media/i2c/saa7115.c", i32 44, i32 1}
!6 = !{ptr @__UNIQUE_ID_license295, !5, !"__UNIQUE_ID_license295", i1 false, i1 false}
!7 = !{ptr @__param_debug, !8, !"__param_debug", i1 false, i1 false}
!8 = !{!"../drivers/media/i2c/saa7115.c", i32 47, i32 1}
!9 = !{ptr @__UNIQUE_ID_debugtype296, !8, !"__UNIQUE_ID_debugtype296", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_debug297, !11, !"__UNIQUE_ID_debug297", i1 false, i1 false}
!11 = !{!"../drivers/media/i2c/saa7115.c", i32 49, i32 1}
!12 = !{ptr @__initcall__kmod_saa7115__298_1960_saa711x_driver_init6, !13, !"__initcall__kmod_saa7115__298_1960_saa711x_driver_init6", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/saa7115.c", i32 1960, i32 1}
!14 = !{ptr @__exitcall_saa711x_driver_exit, !13, !"__exitcall_saa711x_driver_exit", i1 false, i1 false}
!15 = !{ptr @debug, !16, !"debug", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/saa7115.c", i32 46, i32 13}
!17 = !{ptr @__param_str_debug, !8, !"__param_str_debug", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/saa7115.c", i32 1953, i32 11}
!20 = !{ptr @saa711x_driver, !21, !"saa711x_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/i2c/saa7115.c", i32 1951, i32 26}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/i2c/saa7115.c", i32 1827, i32 3}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @saa711x_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @saa711x_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/i2c/saa7115.c", i32 1856, i32 2}
!30 = !{ptr @saa711x_probe._entry.4, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @saa711x_probe._entry_ptr.6, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @saa711x_probe._key, !33, !"_key", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/saa7115.c", i32 1859, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/i2c/saa7115.c", i32 1890, i32 2}
!37 = !{ptr @saa711x_probe._entry.8, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @saa711x_probe._entry_ptr.10, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/saa7115.c", i32 1922, i32 2}
!41 = !{ptr @saa711x_probe._entry.11, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @saa711x_probe._entry_ptr.13, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/saa7115.c", i32 1726, i32 24}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/i2c/saa7115.c", i32 1728, i32 33}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/i2c/saa7115.c", i32 1736, i32 35}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/saa7115.c", i32 1737, i32 5}
!51 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @saa711x_detect_chip._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @saa711x_detect_chip._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/media/i2c/saa7115.c", i32 1750, i32 4}
!56 = !{ptr @saa711x_detect_chip._entry.19, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @saa711x_detect_chip._entry_ptr.21, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/saa7115.c", i32 1757, i32 20}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/i2c/saa7115.c", i32 1774, i32 17}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/media/i2c/saa7115.c", i32 1779, i32 3}
!64 = !{ptr @saa711x_detect_chip._entry.24, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @saa711x_detect_chip._entry_ptr.26, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/media/i2c/saa7115.c", i32 1787, i32 20}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/i2c/saa7115.c", i32 1788, i32 17}
!70 = !{ptr @saa711x_detect_chip._entry.29, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/saa7115.c", i32 1793, i32 3}
!72 = !{ptr @saa711x_detect_chip._entry_ptr.30, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/saa7115.c", i32 1802, i32 2}
!75 = !{ptr @saa711x_detect_chip._entry.31, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @saa711x_detect_chip._entry_ptr.33, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @saa711x_ops, !78, !"saa711x_ops", i1 false, i1 false}
!78 = !{!"../drivers/media/i2c/saa7115.c", i32 1618, i32 37}
!79 = !{ptr @saa711x_core_ops, !80, !"saa711x_core_ops", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/saa7115.c", i32 1578, i32 42}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/i2c/saa7115.c", i32 1528, i32 2}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @saa711x_log_status._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @saa711x_log_status._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/saa7115.c", i32 1533, i32 3}
!88 = !{ptr @saa711x_log_status._entry.36, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @saa711x_log_status._entry_ptr.38, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.40, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/saa7115.c", i32 1534, i32 3}
!94 = !{ptr @saa711x_log_status._entry.41, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @saa711x_log_status._entry_ptr.43, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/saa7115.c", i32 1546, i32 3}
!100 = !{ptr @saa711x_log_status._entry.46, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @saa711x_log_status._entry_ptr.48, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.50, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/saa7115.c", i32 1548, i32 3}
!104 = !{ptr @saa711x_log_status._entry.49, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @saa711x_log_status._entry_ptr.51, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @saa711x_log_status._entry.52, !107, !"_entry", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/saa7115.c", i32 1549, i32 2}
!108 = !{ptr @saa711x_log_status._entry_ptr.53, !107, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @.str.55, !107, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @saa711x_log_status._entry.56, !112, !"_entry", i1 false, i1 false}
!112 = !{!"../drivers/media/i2c/saa7115.c", i32 1550, i32 2}
!113 = !{ptr @saa711x_log_status._entry_ptr.57, !112, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/i2c/saa7115.c", i32 1554, i32 3}
!116 = !{ptr @saa711x_log_status._entry.58, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @saa711x_log_status._entry_ptr.60, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/i2c/saa7115.c", i32 1557, i32 3}
!120 = !{ptr @saa711x_log_status._entry.61, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @saa711x_log_status._entry_ptr.63, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.65, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/saa7115.c", i32 1560, i32 3}
!124 = !{ptr @saa711x_log_status._entry.64, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @saa711x_log_status._entry_ptr.66, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.68, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/i2c/saa7115.c", i32 1563, i32 3}
!128 = !{ptr @saa711x_log_status._entry.67, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @saa711x_log_status._entry_ptr.69, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/i2c/saa7115.c", i32 1566, i32 2}
!132 = !{ptr @saa711x_log_status._entry.70, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @saa711x_log_status._entry_ptr.72, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.73, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/i2c/saa7115.c", i32 1394, i32 2}
!136 = !{ptr @.str.74, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @saa711x_reset._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @saa711x_reset._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = distinct !{null, !140, !"saa7115_cfg_reset_scaler", i1 false, i1 false}
!140 = !{!"../drivers/media/i2c/saa7115.c", i32 342, i32 28}
!141 = !{ptr @saa711x_tuner_ops, !142, !"saa711x_tuner_ops", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/saa7115.c", i32 1588, i32 43}
!143 = !{ptr @.str.75, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/i2c/saa7115.c", i32 1264, i32 2}
!145 = !{ptr @.str.76, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @saa711x_g_tuner._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @saa711x_g_tuner._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @saa711x_audio_ops, !149, !"saa711x_audio_ops", i1 false, i1 false}
!149 = !{!"../drivers/media/i2c/saa7115.c", i32 1593, i32 43}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/saa7115.c", i32 763, i32 2}
!152 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @saa711x_s_clock_freq._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @saa711x_s_clock_freq._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @saa711x_video_ops, !156, !"saa711x_video_ops", i1 false, i1 false}
!156 = !{!"../drivers/media/i2c/saa7115.c", i32 1597, i32 43}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/saa7115.c", i32 1292, i32 2}
!159 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @saa711x_s_routing._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @saa711x_s_routing._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.82, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/i2c/saa7115.c", i32 1306, i32 2}
!164 = !{ptr @saa711x_s_routing._entry.81, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @saa711x_s_routing._entry_ptr.83, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/i2c/saa7115.c", i32 1447, i32 3}
!172 = !{ptr @.str.89, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @saa711x_querystd._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @saa711x_querystd._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.91, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/i2c/saa7115.c", i32 1472, i32 2}
!177 = !{ptr @saa711x_querystd._entry.90, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @saa711x_querystd._entry_ptr.92, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.94, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/i2c/saa7115.c", i32 1486, i32 2}
!181 = !{ptr @saa711x_querystd._entry.93, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @saa711x_querystd._entry_ptr.95, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.96, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/i2c/saa7115.c", i32 1365, i32 2}
!185 = !{ptr @.str.97, !184, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @saa711x_s_stream._entry, !184, !"_entry", i1 false, i1 false}
!187 = !{ptr @saa711x_s_stream._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.98, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @saa711x_vbi_ops, !191, !"saa711x_vbi_ops", i1 false, i1 false}
!191 = !{!"../drivers/media/i2c/saa7115.c", i32 1606, i32 41}
!192 = !{ptr @saa711x_decode_vbi_line.vbi_no_data_pattern, !193, !"vbi_no_data_pattern", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/saa7115.c", i32 1193, i32 20}
!194 = !{ptr @saa711x_decode_wss.wss_bits, !195, !"wss_bits", i1 false, i1 false}
!195 = !{!"../drivers/media/i2c/saa7115.c", i32 725, i32 19}
!196 = !{ptr @saa711x_decode_vps.biphase_tbl, !197, !"biphase_tbl", i1 false, i1 false}
!197 = !{!"../drivers/media/i2c/saa7115.c", i32 678, i32 18}
!198 = !{ptr @saa7115_cfg_vbi_on, !199, !"saa7115_cfg_vbi_on", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/saa7115.c", i32 505, i32 28}
!200 = !{ptr @saa7115_cfg_vbi_off, !201, !"saa7115_cfg_vbi_off", i1 false, i1 false}
!201 = !{!"../drivers/media/i2c/saa7115.c", i32 515, i32 28}
!202 = !{ptr @saa711x_g_sliced_fmt.lcr2vbi, !203, !"lcr2vbi", i1 false, i1 false}
!203 = !{!"../drivers/media/i2c/saa7115.c", i32 1132, i32 13}
!204 = !{ptr @saa711x_pad_ops, !205, !"saa711x_pad_ops", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/saa7115.c", i32 1614, i32 41}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/i2c/saa7115.c", i32 873, i32 2}
!208 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @saa711x_set_size._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @saa711x_set_size._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/media/i2c/saa7115.c", i32 928, i32 2}
!213 = !{ptr @saa711x_set_size._entry.102, !212, !"_entry", i1 false, i1 false}
!214 = !{ptr @saa711x_set_size._entry_ptr.104, !212, !"_entry_ptr", i1 false, i1 false}
!215 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/media/i2c/saa7115.c", i32 942, i32 2}
!217 = !{ptr @saa711x_set_size._entry.105, !216, !"_entry", i1 false, i1 false}
!218 = !{ptr @saa711x_set_size._entry_ptr.107, !216, !"_entry_ptr", i1 false, i1 false}
!219 = !{ptr @saa711x_ctrl_ops, !220, !"saa711x_ctrl_ops", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/saa7115.c", i32 1573, i32 35}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/media/i2c/saa7115.c", i32 169, i32 4}
!223 = !{ptr @.str.109, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @saa711x_writeregs._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @saa711x_writeregs._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @saa7111_init, !227, !"saa7111_init", i1 false, i1 false}
!227 = !{!"../drivers/media/i2c/saa7115.c", i32 185, i32 28}
!228 = !{ptr @gm7113c_init, !229, !"gm7113c_init", i1 false, i1 false}
!229 = !{!"../drivers/media/i2c/saa7115.c", i32 272, i32 28}
!230 = !{ptr @saa7113_init, !231, !"saa7113_init", i1 false, i1 false}
!231 = !{!"../drivers/media/i2c/saa7115.c", i32 234, i32 28}
!232 = !{ptr @saa7115_init_auto_input, !233, !"saa7115_init_auto_input", i1 false, i1 false}
!233 = !{!"../drivers/media/i2c/saa7115.c", i32 305, i32 28}
!234 = !{ptr @saa7115_init_misc, !235, !"saa7115_init_misc", i1 false, i1 false}
!235 = !{!"../drivers/media/i2c/saa7115.c", i32 526, i32 28}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/media/i2c/saa7115.c", i32 988, i32 3}
!238 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @saa711x_set_v4lstd._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @saa711x_set_v4lstd._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.113, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/media/i2c/saa7115.c", i32 999, i32 3}
!243 = !{ptr @saa711x_set_v4lstd._entry.112, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @saa711x_set_v4lstd._entry_ptr.114, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @saa7115_cfg_60hz_video, !246, !"saa7115_cfg_60hz_video", i1 false, i1 false}
!246 = !{!"../drivers/media/i2c/saa7115.c", i32 352, i32 28}
!247 = !{ptr @saa7115_cfg_50hz_video, !248, !"saa7115_cfg_50hz_video", i1 false, i1 false}
!248 = !{!"../drivers/media/i2c/saa7115.c", i32 425, i32 28}
!249 = !{ptr @saa711x_id, !250, !"saa711x_id", i1 false, i1 false}
!250 = !{!"../drivers/media/i2c/saa7115.c", i32 1939, i32 35}
!251 = !{i32 1, !"wchar_size", i32 2}
!252 = !{i32 1, !"min_enum_size", i32 4}
!253 = !{i32 8, !"branch-target-enforcement", i32 0}
!254 = !{i32 8, !"sign-return-address", i32 0}
!255 = !{i32 8, !"sign-return-address-all", i32 0}
!256 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!257 = !{i32 7, !"uwtable", i32 1}
!258 = !{i32 7, !"frame-pointer", i32 2}
!259 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!260 = !{i8 0, i8 2}
!261 = !{!"branch_weights", i32 1, i32 2000}
!262 = !{i64 2148677837, i64 2148678117, i64 2148678451, i64 2148678785}
