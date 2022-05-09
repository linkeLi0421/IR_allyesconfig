; ModuleID = '/llk/IR_all_yes/drivers/media/v4l2-core/tuner-core.c_pt.bc'
source_filename = "../drivers/media/v4l2-core/tuner-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kparam_string = type { i32, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_tuner_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.tuner = type { %struct.dvb_frontend, ptr, %struct.v4l2_subdev, %struct.list_head, i64, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, [3 x %struct.media_pad] }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
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
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.xc4000_config = type { i8, i8, i8, i8, i32 }
%struct.v4l2_frequency = type { i32, i32, i32, [8 x i32] }
%struct.v4l2_tuner = type { i32, [32 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.tuner_setup = type { i16, i32, i32, ptr, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_addr = internal constant [11 x i8] c"tuner.addr\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@addr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_addr = internal constant %struct.kernel_param { ptr @__param_str_addr, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @addr } }, section "__param", align 4
@__UNIQUE_ID_addrtype292 = internal constant [24 x i8] c"tuner.parmtype=addr:int\00", section ".modinfo", align 1
@__param_str_no_autodetect = internal constant [20 x i8] c"tuner.no_autodetect\00", align 1
@no_autodetect = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_autodetect = internal constant %struct.kernel_param { ptr @__param_str_no_autodetect, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @no_autodetect } }, section "__param", align 4
@__UNIQUE_ID_no_autodetecttype293 = internal constant [33 x i8] c"tuner.parmtype=no_autodetect:int\00", section ".modinfo", align 1
@__param_str_show_i2c = internal constant [15 x i8] c"tuner.show_i2c\00", align 1
@show_i2c = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_show_i2c = internal constant %struct.kernel_param { ptr @__param_str_show_i2c, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @show_i2c } }, section "__param", align 4
@__UNIQUE_ID_show_i2ctype294 = internal constant [28 x i8] c"tuner.parmtype=show_i2c:int\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"tuner.debug\00", align 1
@tuner_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @tuner_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype295 = internal constant [25 x i8] c"tuner.parmtype=debug:int\00", section ".modinfo", align 1
@__param_str_tv_range = internal constant [15 x i8] c"tuner.tv_range\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_tv_range = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @tv_range }, align 4
@__param_tv_range = internal constant %struct.kernel_param { ptr @__param_str_tv_range, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_tv_range } }, section "__param", align 4
@__UNIQUE_ID_tv_rangetype296 = internal constant [37 x i8] c"tuner.parmtype=tv_range:array of int\00", section ".modinfo", align 1
@__param_str_radio_range = internal constant [18 x i8] c"tuner.radio_range\00", align 1
@__param_arr_radio_range = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @radio_range }, align 4
@__param_radio_range = internal constant %struct.kernel_param { ptr @__param_str_radio_range, ptr null, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_radio_range } }, section "__param", align 4
@__UNIQUE_ID_radio_rangetype297 = internal constant [40 x i8] c"tuner.parmtype=radio_range:array of int\00", section ".modinfo", align 1
@__param_str_pal = internal constant [10 x i8] c"tuner.pal\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_pal = internal constant %struct.kparam_string { i32 3, ptr @pal }, align 4
@__param_pal = internal constant %struct.kernel_param { ptr @__param_str_pal, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_pal } }, section "__param", align 4
@__UNIQUE_ID_paltype298 = internal constant [26 x i8] c"tuner.parmtype=pal:string\00", section ".modinfo", align 1
@__param_str_secam = internal constant [12 x i8] c"tuner.secam\00", align 1
@__param_string_secam = internal constant %struct.kparam_string { i32 3, ptr @secam }, align 4
@__param_secam = internal constant %struct.kernel_param { ptr @__param_str_secam, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_secam } }, section "__param", align 4
@__UNIQUE_ID_secamtype299 = internal constant [28 x i8] c"tuner.parmtype=secam:string\00", section ".modinfo", align 1
@__param_str_ntsc = internal constant [11 x i8] c"tuner.ntsc\00", align 1
@__param_string_ntsc = internal constant %struct.kparam_string { i32 2, ptr @ntsc }, align 4
@__param_ntsc = internal constant %struct.kernel_param { ptr @__param_str_ntsc, ptr null, ptr @param_ops_string, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_ntsc } }, section "__param", align 4
@__UNIQUE_ID_ntsctype300 = internal constant [27 x i8] c"tuner.parmtype=ntsc:string\00", section ".modinfo", align 1
@__initcall__kmod_tuner__301_1423_tuner_driver_init6 = internal global ptr @tuner_driver_init, section ".initcall6.init", align 4
@tuner_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tuner_probe, ptr @tuner_remove, ptr null, ptr null, ptr null, ptr @tuner_command, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tuner_pm_ops, ptr null, ptr null }, ptr @tuner_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tuner_driver_exit = internal global ptr @tuner_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [70 x i8] c"tuner.description=device driver for various TV and TV+FM radio tuners\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [54 x i8] c"tuner.author=Ralph Metzler, Gerd Knorr, Gunther Mayer\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [41 x i8] c"tuner.file=drivers/media/v4l2-core/tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [18 x i8] c"tuner.license=GPL\00", section ".modinfo", align 1
@tv_range = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 44, i32 958], [24 x i8] zeroinitializer }, align 32
@radio_range = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 65, i32 108], [24 x i8] zeroinitializer }, align 32
@pal = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@secam = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"--\00", [29 x i8] zeroinitializer }, align 32
@ntsc = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"-\00", [30 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"tuner\00", [26 x i8] zeroinitializer }, align 32
@tuner_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tuner_suspend, ptr @tuner_resume, ptr @tuner_suspend, ptr @tuner_resume, ptr @tuner_suspend, ptr @tuner_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tuner_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tuner\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tuner_ops = internal constant { %struct.v4l2_subdev_ops, [32 x i8] } { %struct.v4l2_subdev_ops { ptr @tuner_core_ops, ptr @tuner_tuner_ops, ptr null, ptr @tuner_video_ops, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(tuner unset)\00", [18 x i8] zeroinitializer }, align 32
@tuner_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016tuner: %d-%04x: I2C RECV = %*ph\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tuner_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/media/v4l2-core/tuner-core.c\00", [59 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr = internal global ptr @tuner_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tea5761_autodetection\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"symbol:tea5761_autodetection\00", [35 x i8] zeroinitializer }, align 32
@tuner_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 666, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013TUNER: Unable to find symbol tea5761_autodetection()\0A\00", [40 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr.9 = internal global ptr @tuner_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda829x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:tda829x_probe\00", [43 x i8] zeroinitializer }, align 32
@tuner_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013TUNER: Unable to find symbol tda829x_probe()\0A\00", [48 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr.14 = internal global ptr @tuner_probe._entry.12, section ".printk_index", align 4
@tuner_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 685, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017tuner: %d-%04x: %s: tda829x detected\0A\00", [56 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr.17 = internal global ptr @tuner_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tea5767_autodetection\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"symbol:tea5767_autodetection\00", [35 x i8] zeroinitializer }, align 32
@tuner_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013TUNER: Unable to find symbol tea5767_autodetection()\0A\00", [40 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr.22 = internal global ptr @tuner_probe._entry.20, section ".printk_index", align 4
@tuner_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017tuner: %d-%04x: %s: Setting mode_mask to 0x%02x\0A\00", [45 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr.25 = internal global ptr @tuner_probe._entry.23, section ".printk_index", align 4
@tuner_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 756, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013tuner: %d-%04x: failed to initialize media entity!\0A\00", [42 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr.28 = internal global ptr @tuner_probe._entry.26, section ".printk_index", align 4
@tuner_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @tuner_list, ptr @tuner_list }, [24 x i8] zeroinitializer }, align 32
@tuner_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 772, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tuner: %d-%04x: Tuner %d found with type(s)%s%s.\0A\00", [44 x i8] zeroinitializer }, align 32
@tuner_probe._entry_ptr.31 = internal global ptr @tuner_probe._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" Radio\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" TV\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tuner_core_ops = internal constant { %struct.v4l2_subdev_core_ops, [40 x i8] } { %struct.v4l2_subdev_core_ops { ptr @tuner_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tuner_tuner_ops = internal constant { %struct.v4l2_subdev_tuner_ops, [52 x i8] } { %struct.v4l2_subdev_tuner_ops { ptr @tuner_standby, ptr @tuner_s_radio, ptr @tuner_s_frequency, ptr @tuner_g_frequency, ptr null, ptr @tuner_g_tuner, ptr @tuner_s_tuner, ptr null, ptr null, ptr @tuner_s_type_addr, ptr @tuner_s_config }, [52 x i8] zeroinitializer }, align 32
@tuner_video_ops = internal constant { %struct.v4l2_subdev_video_ops, [48 x i8] } { %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr @tuner_s_std, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@tuner_standby._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.4, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017tuner: %d-%04x: %s: Putting tuner to sleep\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tuner_standby\00", [18 x i8] zeroinitializer }, align 32
@tuner_standby._entry_ptr = internal global ptr @tuner_standby._entry, section ".printk_index", align 4
@set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"\017tuner: %d-%04x: %s: Tuner doesn't support mode %d. Putting tuner to sleep\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_mode\00", [23 x i8] zeroinitializer }, align 32
@set_mode._entry_ptr = internal global ptr @set_mode._entry, section ".printk_index", align 4
@set_mode._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.4, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017tuner: %d-%04x: %s: Changing to mode %d\0A\00", [53 x i8] zeroinitializer }, align 32
@set_mode._entry_ptr.41 = internal global ptr @set_mode._entry.39, section ".printk_index", align 4
@set_radio_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.4, i32 1044, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014tuner: %d-%04x: tuner type not set\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_radio_freq\00", [17 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr = internal global ptr @set_radio_freq._entry, section ".printk_index", align 4
@set_radio_freq._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 1048, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\014tuner: %d-%04x: tuner has no way to set radio frequency\0A\00", [37 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.46 = internal global ptr @set_radio_freq._entry.44, section ".printk_index", align 4
@set_radio_freq._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 1054, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\017tuner: %d-%04x: %s: radio freq (%d.%02d) out of range (%d-%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.49 = internal global ptr @set_radio_freq._entry.47, section ".printk_index", align 4
@set_radio_freq._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.4, i32 1064, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\017tuner: %d-%04x: %s: radio freq set to %d.%02d\0A\00", [47 x i8] zeroinitializer }, align 32
@set_radio_freq._entry_ptr.52 = internal global ptr @set_radio_freq._entry.50, section ".printk_index", align 4
@set_tv_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.53, ptr @.str.4, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"set_tv_freq\00", [20 x i8] zeroinitializer }, align 32
@set_tv_freq._entry_ptr = internal global ptr @set_tv_freq._entry, section ".printk_index", align 4
@set_tv_freq._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.4, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014tuner: %d-%04x: Tuner has no way to set tv freq\0A\00", [45 x i8] zeroinitializer }, align 32
@set_tv_freq._entry_ptr.56 = internal global ptr @set_tv_freq._entry.54, section ".printk_index", align 4
@set_tv_freq._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.53, ptr @.str.4, i32 913, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\017tuner: %d-%04x: %s: TV freq (%d.%02d) out of range (%d-%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@set_tv_freq._entry_ptr.59 = internal global ptr @set_tv_freq._entry.57, section ".printk_index", align 4
@set_tv_freq._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.53, ptr @.str.4, i32 923, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017tuner: %d-%04x: %s: tv freq set to %d.%02d\0A\00", [50 x i8] zeroinitializer }, align 32
@set_tv_freq._entry_ptr.62 = internal global ptr @set_tv_freq._entry.60, section ".printk_index", align 4
@tuner_s_type_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.4, i32 530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\017tuner: %d-%04x: %s: Calling set_type_addr for type=%d, addr=0x%02x, mode=0x%02x, config=%p\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tuner_s_type_addr\00", [46 x i8] zeroinitializer }, align 32
@tuner_s_type_addr._entry_ptr = internal global ptr @tuner_s_type_addr._entry, section ".printk_index", align 4
@tuner_s_type_addr._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.4, i32 540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [115 x i8], [45 x i8] } { [115 x i8] c"\017tuner: %d-%04x: %s: set addr discarded for type %i, mask %x. Asked to change tuner at addr 0x%02x, with mask %x\0A\00", [45 x i8] zeroinitializer }, align 32
@tuner_s_type_addr._entry_ptr.67 = internal global ptr @tuner_s_type_addr._entry.65, section ".printk_index", align 4
@tuner_s_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str.4, i32 568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\017tuner: %d-%04x: %s: Tuner frontend module has no way to set config\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tuner_s_config\00", [17 x i8] zeroinitializer }, align 32
@tuner_s_config._entry_ptr = internal global ptr @tuner_s_config._entry, section ".printk_index", align 4
@tuner_s_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.71, ptr @.str.4, i32 1179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017tuner: %d-%04x: %s: Fixup standard %llx to %llx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tuner_s_std\00", [20 x i8] zeroinitializer }, align 32
@tuner_s_std._entry_ptr = internal global ptr @tuner_s_std._entry, section ".printk_index", align 4
@tuner_fixup_std._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.4, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014tuner: %d-%04x: pal= argument not recognised\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tuner_fixup_std\00", [16 x i8] zeroinitializer }, align 32
@tuner_fixup_std._entry_ptr = internal global ptr @tuner_fixup_std._entry, section ".printk_index", align 4
@tuner_fixup_std._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.73, ptr @.str.4, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014tuner: %d-%04x: secam= argument not recognised\0A\00", [46 x i8] zeroinitializer }, align 32
@tuner_fixup_std._entry_ptr.76 = internal global ptr @tuner_fixup_std._entry.74, section ".printk_index", align 4
@tuner_fixup_std._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.73, ptr @.str.4, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tuner: %d-%04x: ntsc= argument not recognised\0A\00", [47 x i8] zeroinitializer }, align 32
@tuner_fixup_std._entry_ptr.79 = internal global ptr @tuner_fixup_std._entry.77, section ".printk_index", align 4
@set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.4, i32 308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017tuner: %d-%04x: %s: tuner 0x%02x: Tuner type absent\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"set_type\00", [23 x i8] zeroinitializer }, align 32
@set_type._entry_ptr = internal global ptr @set_type._entry, section ".printk_index", align 4
@set_type._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str.4, i32 315, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017tuner: %d-%04x: %s: defining GPIO callback\0A\00", [50 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.84 = internal global ptr @set_type._entry.82, section ".printk_index", align 4
@.str.85 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"microtune_attach\00", [47 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"symbol:microtune_attach\00", [40 x i8] zeroinitializer }, align 32
@set_type._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.81, ptr @.str.4, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013DVB: Unable to find symbol microtune_attach()\0A\00", [47 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.89 = internal global ptr @set_type._entry.87, section ".printk_index", align 4
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda829x_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda829x_attach\00", [42 x i8] zeroinitializer }, align 32
@set_type._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.81, ptr @.str.4, i32 332, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda829x_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.94 = internal global ptr @set_type._entry.92, section ".printk_index", align 4
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5767_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tea5767_attach\00", [42 x i8] zeroinitializer }, align 32
@set_type._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.81, ptr @.str.4, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tea5767_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.99 = internal global ptr @set_type._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tea5761_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tea5761_attach\00", [42 x i8] zeroinitializer }, align 32
@set_type._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.81, ptr @.str.4, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tea5761_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.104 = internal global ptr @set_type._entry.102, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.105 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"simple_tuner_attach\00", [44 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"symbol:simple_tuner_attach\00", [37 x i8] zeroinitializer }, align 32
@set_type._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.81, ptr @.str.4, i32 360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013DVB: Unable to find symbol simple_tuner_attach()\0A\00", [44 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.109 = internal global ptr @set_type._entry.107, section ".printk_index", align 4
@set_type._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.81, ptr @.str.4, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.111 = internal global ptr @set_type._entry.110, section ".printk_index", align 4
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc2028_attach\00", [43 x i8] zeroinitializer }, align 32
@set_type._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.81, ptr @.str.4, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc2028_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.116 = internal global ptr @set_type._entry.114, section ".printk_index", align 4
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tda9887_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"symbol:tda9887_attach\00", [42 x i8] zeroinitializer }, align 32
@set_type._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.81, ptr @.str.4, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013DVB: Unable to find symbol tda9887_attach()\0A\00", [49 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.121 = internal global ptr @set_type._entry.119, section ".printk_index", align 4
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc5000_attach\00", [43 x i8] zeroinitializer }, align 32
@set_type._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.81, ptr @.str.4, i32 398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc5000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.126 = internal global ptr @set_type._entry.124, section ".printk_index", align 4
@set_type._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.81, ptr @.str.4, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.128 = internal global ptr @set_type._entry.127, section ".printk_index", align 4
@__const.set_type.cfg.129 = private unnamed_addr constant { ptr, i32, i32, i32, i32, i8, [3 x i8], i32 } { ptr null, i32 0, i32 0, i32 0, i32 3, i8 0, [3 x i8] zeroinitializer, i32 0 }, align 4
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda18271_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"symbol:tda18271_attach\00", [41 x i8] zeroinitializer }, align 32
@set_type._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.81, ptr @.str.4, i32 425, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", [48 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.134 = internal global ptr @set_type._entry.132, section ".printk_index", align 4
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc4000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"symbol:xc4000_attach\00", [43 x i8] zeroinitializer }, align 32
@set_type._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.81, ptr @.str.4, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013DVB: Unable to find symbol xc4000_attach()\0A\00", [50 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.139 = internal global ptr @set_type._entry.137, section ".printk_index", align 4
@set_type._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.81, ptr @.str.4, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.141 = internal global ptr @set_type._entry.140, section ".printk_index", align 4
@tuner_analog_ops = internal constant { %struct.analog_demod_ops, [60 x i8] } { %struct.analog_demod_ops { %struct.analog_demod_info zeroinitializer, ptr @fe_set_params, ptr null, ptr null, ptr @tuner_status, ptr @fe_standby, ptr null, ptr null, ptr @fe_set_config }, [60 x i8] zeroinitializer }, align 32
@set_type._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.81, ptr @.str.4, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017tuner: %d-%04x: %s: type set to %s\0A\00", [58 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.144 = internal global ptr @set_type._entry.142, section ".printk_index", align 4
@set_type._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.81, ptr @.str.4, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017tuner: %d-%04x: %s: %s %s I2C addr 0x%02x with type %d used for 0x%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.147 = internal global ptr @set_type._entry.145, section ".printk_index", align 4
@set_type._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.81, ptr @.str.4, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\017tuner: %d-%04x: %s: Tuner attach for type = %d failed.\0A\00", [38 x i8] zeroinitializer }, align 32
@set_type._entry_ptr.150 = internal global ptr @set_type._entry.148, section ".printk_index", align 4
@fe_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.4, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014tuner: %d-%04x: Tuner frontend module has no way to set freq\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fe_set_params\00", [18 x i8] zeroinitializer }, align 32
@fe_set_params._entry_ptr = internal global ptr @fe_set_params._entry, section ".printk_index", align 4
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"radio\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"digital TV\00", [21 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"analog TV\00", [22 x i8] zeroinitializer }, align 32
@tuner_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.4, i32 1115, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016tuner: %d-%04x: Tuner mode:      %s%s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tuner_status\00", [19 x i8] zeroinitializer }, align 32
@tuner_status._entry_ptr = internal global ptr @tuner_status._entry, section ".printk_index", align 4
@.str.158 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" on standby mode\00", [47 x i8] zeroinitializer }, align 32
@tuner_status._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.157, ptr @.str.4, i32 1116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016tuner: %d-%04x: Frequency:       %lu.%02lu MHz\0A\00", [46 x i8] zeroinitializer }, align 32
@tuner_status._entry_ptr.161 = internal global ptr @tuner_status._entry.159, section ".printk_index", align 4
@tuner_status._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.157, ptr @.str.4, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016tuner: %d-%04x: Standard:        0x%08lx\0A\00", [52 x i8] zeroinitializer }, align 32
@tuner_status._entry_ptr.164 = internal global ptr @tuner_status._entry.162, section ".printk_index", align 4
@tuner_status._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.157, ptr @.str.4, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016tuner: %d-%04x: Tuner is locked.\0A\00", [60 x i8] zeroinitializer }, align 32
@tuner_status._entry_ptr.167 = internal global ptr @tuner_status._entry.165, section ".printk_index", align 4
@tuner_status._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.157, ptr @.str.4, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016tuner: %d-%04x: Stereo:          yes\0A\00", [56 x i8] zeroinitializer }, align 32
@tuner_status._entry_ptr.170 = internal global ptr @tuner_status._entry.168, section ".printk_index", align 4
@tuner_status._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.157, ptr @.str.4, i32 1133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016tuner: %d-%04x: Signal strength: %hu\0A\00", [56 x i8] zeroinitializer }, align 32
@tuner_status._entry_ptr.173 = internal global ptr @tuner_status._entry.171, section ".printk_index", align 4
@fe_set_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.175, ptr @.str.4, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\014tuner: %d-%04x: Tuner frontend module has no way to set config\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fe_set_config\00", [18 x i8] zeroinitializer }, align 32
@fe_set_config._entry_ptr = internal global ptr @fe_set_config._entry, section ".printk_index", align 4
@tuner_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.176, ptr @.str.177, ptr @.str.4, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017tuner: %d-%04x: %s: suspend\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tuner_suspend\00", [18 x i8] zeroinitializer }, align 32
@tuner_suspend._entry_ptr = internal global ptr @tuner_suspend._entry, section ".printk_index", align 4
@tuner_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.179, ptr @.str.4, i32 1343, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017tuner: %d-%04x: %s: resume\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tuner_resume\00", [19 x i8] zeroinitializer }, align 32
@tuner_resume._entry_ptr = internal global ptr @tuner_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 16, i64 16, i64 66, i64 67, i64 74, i64 75, i64 96]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 4294967295]
@__sancov_gen_cov_switch_values.181 = internal global [15 x i64] [i64 13, i64 32, i64 33, i64 54, i64 62, i64 63, i64 67, i64 71, i64 74, i64 75, i64 76, i64 78, i64 83, i64 87, i64 88]
@__sancov_gen_cov_switch_values.182 = internal global [17 x i64] [i64 15, i64 8, i64 54, i64 66, i64 68, i64 71, i64 73, i64 75, i64 77, i64 78, i64 98, i64 100, i64 103, i64 105, i64 107, i64 109, i64 110]
@__sancov_gen_cov_switch_values.183 = internal global [14 x i64] [i64 12, i64 8, i64 66, i64 68, i64 71, i64 72, i64 75, i64 76, i64 98, i64 100, i64 103, i64 104, i64 107, i64 108]
@__sancov_gen_cov_switch_values.184 = internal global [8 x i64] [i64 6, i64 8, i64 74, i64 75, i64 77, i64 106, i64 107, i64 109]
@___asan_gen_.185 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 52, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant [14 x i8] c"no_autodetect\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 53, i32 21 }
@___asan_gen_.191 = private unnamed_addr constant [9 x i8] c"show_i2c\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 54, i32 21 }
@___asan_gen_.194 = private unnamed_addr constant [12 x i8] c"tuner_debug\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 61, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant [13 x i8] c"tuner_driver\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1412, i32 26 }
@___asan_gen_.200 = private unnamed_addr constant [9 x i8] c"tv_range\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 62, i32 21 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"radio_range\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 63, i32 21 }
@___asan_gen_.206 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 64, i32 13 }
@___asan_gen_.209 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 65, i32 13 }
@___asan_gen_.212 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 66, i32 13 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1414, i32 11 }
@___asan_gen_.218 = private unnamed_addr constant [13 x i8] c"tuner_pm_ops\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1402, i32 32 }
@___asan_gen_.221 = private unnamed_addr constant [9 x i8] c"tuner_id\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1406, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant [10 x i8] c"tuner_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1392, i32 37 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 643, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 657, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 664, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 683, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 685, i32 5 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 694, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 722, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 756, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant [11 x i8] c"tuner_list\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 79, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 769, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [15 x i8] c"tuner_core_ops\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1373, i32 42 }
@___asan_gen_.317 = private unnamed_addr constant [16 x i8] c"tuner_tuner_ops\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1377, i32 43 }
@___asan_gen_.320 = private unnamed_addr constant [16 x i8] c"tuner_video_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1388, i32 43 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1163, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 848, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 856, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1044, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1048, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1052, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1063, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 903, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 907, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 911, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 922, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 526, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 538, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 568, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1179, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 972, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 998, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1015, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 308, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 315, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 325, i32 8 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 331, i32 8 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 337, i32 8 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 343, i32 8 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 359, i32 8 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 369, i32 8 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 379, i32 8 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 385, i32 8 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 397, i32 8 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 412, i32 8 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 424, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 441, i32 8 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 448, i32 8 }
@___asan_gen_.596 = private unnamed_addr constant [17 x i8] c"tuner_analog_ops\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 272, i32 38 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 477, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 494, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 500, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 243, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1097, i32 7 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1100, i32 7 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1104, i32 7 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1114, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1116, i32 2 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1117, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1125, i32 4 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1127, i32 4 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1133, i32 4 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 265, i32 2 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1328, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.701 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.702 = private constant [40 x i8] c"../drivers/media/v4l2-core/tuner-core.c\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.702, i32 1343, i32 2 }
@llvm.compiler.used = appending global [252 x ptr] [ptr @__UNIQUE_ID_addrtype292, ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_debugtype295, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__UNIQUE_ID_no_autodetecttype293, ptr @__UNIQUE_ID_ntsctype300, ptr @__UNIQUE_ID_paltype298, ptr @__UNIQUE_ID_radio_rangetype297, ptr @__UNIQUE_ID_secamtype299, ptr @__UNIQUE_ID_show_i2ctype294, ptr @__UNIQUE_ID_tv_rangetype296, ptr @__exitcall_tuner_driver_exit, ptr @__initcall__kmod_tuner__301_1423_tuner_driver_init6, ptr @__param_addr, ptr @__param_debug, ptr @__param_no_autodetect, ptr @__param_ntsc, ptr @__param_pal, ptr @__param_radio_range, ptr @__param_secam, ptr @__param_show_i2c, ptr @__param_tv_range, ptr @fe_set_config._entry, ptr @fe_set_config._entry_ptr, ptr @fe_set_params._entry, ptr @fe_set_params._entry_ptr, ptr @set_mode._entry, ptr @set_mode._entry.39, ptr @set_mode._entry_ptr, ptr @set_mode._entry_ptr.41, ptr @set_radio_freq._entry, ptr @set_radio_freq._entry.44, ptr @set_radio_freq._entry.47, ptr @set_radio_freq._entry.50, ptr @set_radio_freq._entry_ptr, ptr @set_radio_freq._entry_ptr.46, ptr @set_radio_freq._entry_ptr.49, ptr @set_radio_freq._entry_ptr.52, ptr @set_tv_freq._entry, ptr @set_tv_freq._entry.54, ptr @set_tv_freq._entry.57, ptr @set_tv_freq._entry.60, ptr @set_tv_freq._entry_ptr, ptr @set_tv_freq._entry_ptr.56, ptr @set_tv_freq._entry_ptr.59, ptr @set_tv_freq._entry_ptr.62, ptr @set_type._entry, ptr @set_type._entry.102, ptr @set_type._entry.107, ptr @set_type._entry.110, ptr @set_type._entry.114, ptr @set_type._entry.119, ptr @set_type._entry.124, ptr @set_type._entry.127, ptr @set_type._entry.132, ptr @set_type._entry.137, ptr @set_type._entry.140, ptr @set_type._entry.142, ptr @set_type._entry.145, ptr @set_type._entry.148, ptr @set_type._entry.82, ptr @set_type._entry.87, ptr @set_type._entry.92, ptr @set_type._entry.97, ptr @set_type._entry_ptr, ptr @set_type._entry_ptr.104, ptr @set_type._entry_ptr.109, ptr @set_type._entry_ptr.111, ptr @set_type._entry_ptr.116, ptr @set_type._entry_ptr.121, ptr @set_type._entry_ptr.126, ptr @set_type._entry_ptr.128, ptr @set_type._entry_ptr.134, ptr @set_type._entry_ptr.139, ptr @set_type._entry_ptr.141, ptr @set_type._entry_ptr.144, ptr @set_type._entry_ptr.147, ptr @set_type._entry_ptr.150, ptr @set_type._entry_ptr.84, ptr @set_type._entry_ptr.89, ptr @set_type._entry_ptr.94, ptr @set_type._entry_ptr.99, ptr @tuner_driver_exit, ptr @tuner_fixup_std._entry, ptr @tuner_fixup_std._entry.74, ptr @tuner_fixup_std._entry.77, ptr @tuner_fixup_std._entry_ptr, ptr @tuner_fixup_std._entry_ptr.76, ptr @tuner_fixup_std._entry_ptr.79, ptr @tuner_probe._entry, ptr @tuner_probe._entry.12, ptr @tuner_probe._entry.15, ptr @tuner_probe._entry.20, ptr @tuner_probe._entry.23, ptr @tuner_probe._entry.26, ptr @tuner_probe._entry.29, ptr @tuner_probe._entry.7, ptr @tuner_probe._entry_ptr, ptr @tuner_probe._entry_ptr.14, ptr @tuner_probe._entry_ptr.17, ptr @tuner_probe._entry_ptr.22, ptr @tuner_probe._entry_ptr.25, ptr @tuner_probe._entry_ptr.28, ptr @tuner_probe._entry_ptr.31, ptr @tuner_probe._entry_ptr.9, ptr @tuner_resume._entry, ptr @tuner_resume._entry_ptr, ptr @tuner_s_config._entry, ptr @tuner_s_config._entry_ptr, ptr @tuner_s_std._entry, ptr @tuner_s_std._entry_ptr, ptr @tuner_s_type_addr._entry, ptr @tuner_s_type_addr._entry.65, ptr @tuner_s_type_addr._entry_ptr, ptr @tuner_s_type_addr._entry_ptr.67, ptr @tuner_standby._entry, ptr @tuner_standby._entry_ptr, ptr @tuner_status._entry, ptr @tuner_status._entry.159, ptr @tuner_status._entry.162, ptr @tuner_status._entry.165, ptr @tuner_status._entry.168, ptr @tuner_status._entry.171, ptr @tuner_status._entry_ptr, ptr @tuner_status._entry_ptr.161, ptr @tuner_status._entry_ptr.164, ptr @tuner_status._entry_ptr.167, ptr @tuner_status._entry_ptr.170, ptr @tuner_status._entry_ptr.173, ptr @tuner_suspend._entry, ptr @tuner_suspend._entry_ptr, ptr @addr, ptr @no_autodetect, ptr @show_i2c, ptr @tuner_debug, ptr @tuner_driver, ptr @tv_range, ptr @radio_range, ptr @pal, ptr @secam, ptr @ntsc, ptr @.str, ptr @tuner_pm_ops, ptr @tuner_id, ptr @tuner_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @tuner_list, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @tuner_core_ops, ptr @tuner_tuner_ops, ptr @tuner_video_ops, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.53, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.88, ptr @.str.90, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.125, ptr @.str.130, ptr @.str.131, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @tuner_analog_ops, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179], section "llvm.metadata"
@0 = internal global [173 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_autodetect to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @show_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tv_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @radio_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pal to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @secam to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ntsc to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_core_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_tuner_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_video_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_standby._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_mode._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_radio_freq._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tv_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tv_freq._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tv_freq._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_tv_freq._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_s_type_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_s_type_addr._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 115, i32 160, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_s_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_s_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_fixup_std._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_fixup_std._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_fixup_std._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_analog_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_type._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_status._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_status._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_status._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_status._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_status._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fe_set_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tuner_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tuner_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tuner_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tuner_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %radio = alloca ptr, align 4
  %tv = alloca ptr, align 4
  %buffer = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %radio) #8
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %radio, align 4, !annotation !364
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tv) #8
  %1 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %tv, align 4, !annotation !364
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 1392) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sd = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 2
  tail call void @v4l2_i2c_subdev_init(ptr noundef %sd, ptr noundef %client, ptr noundef nonnull @tuner_ops) #8
  %i2c = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %i2c, align 8
  %name = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 13
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.1, ptr %name, align 8
  %type = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %type, align 8
  %audmode = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %audmode, align 8
  %standby = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 10
  %7 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %standby, align 4
  %radio_freq = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %radio_freq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1400000, ptr %radio_freq, align 4
  %tv_freq = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %tv_freq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6400, ptr %tv_freq, align 8
  %10 = load i32, ptr @show_i2c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %if.then1

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then1:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer) #8
  %11 = call ptr @memset(ptr %buffer, i32 0, i32 16)
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %buffer, i32 noundef 16, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp4 = icmp sgt i32 %call.i, -1
  br i1 %cmp4, label %do.end, label %if.then1.if.end11_crit_edge

if.then1.if.end11_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

do.end:                                           ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr, align 2
  %conv = zext i16 %19 to i32
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %17, i32 noundef %conv, i32 noundef %call.i, ptr noundef nonnull %buffer) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.then1.if.end11_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer) #8
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.end.if.end12_crit_edge
  %20 = load i32, ptr @no_autodetect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool13.not = icmp eq i32 %20, 0
  br i1 %tobool13.not, label %if.then14, label %if.end12.if.end138_crit_edge

if.end12.if.end138_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

if.then14:                                        ; preds = %if.end12
  %addr15 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %21 = ptrtoint ptr %addr15 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr15, align 2
  %23 = zext i16 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i16 %22, label %if.then14.if.end138_crit_edge [
    i16 16, label %sw.bb
    i16 66, label %if.then14.sw.bb47_crit_edge
    i16 67, label %if.then14.sw.bb47_crit_edge398
    i16 74, label %if.then14.sw.bb47_crit_edge399
    i16 75, label %if.then14.sw.bb47_crit_edge400
    i16 96, label %sw.bb98
  ]

if.then14.sw.bb47_crit_edge400:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47

if.then14.sw.bb47_crit_edge399:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47

if.then14.sw.bb47_crit_edge398:                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47

if.then14.sw.bb47_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb47

if.then14.if.end138_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

sw.bb:                                            ; preds = %if.then14
  %call17 = call ptr @__symbol_get(ptr noundef nonnull @.str.5) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %cond.end, label %sw.bb.if.then22_crit_edge

sw.bb.if.then22_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

cond.end:                                         ; preds = %sw.bb
  %call19 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.6) #8
  %call20 = call ptr @__symbol_get(ptr noundef nonnull @.str.5) #8
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end31, label %cond.end.if.then22_crit_edge

cond.end.if.then22_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then22

if.then22:                                        ; preds = %cond.end.if.then22_crit_edge, %sw.bb.if.then22_crit_edge
  %cond384 = phi ptr [ %call20, %cond.end.if.then22_crit_edge ], [ %call17, %sw.bb.if.then22_crit_edge ]
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 8
  %adapter24 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %adapter24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter24, align 8
  %addr26 = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %addr26 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %addr26, align 2
  %conv27 = trunc i16 %29 to i8
  %call28 = call i32 %cond384(ptr noundef %27, i8 noundef zeroext %conv27) #8
  call void @__symbol_put(ptr noundef nonnull @.str.5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call28)
  %phi.cmp345 = icmp sgt i32 %call28, -1
  br i1 %phi.cmp345, label %if.then38, label %if.then22.if.end46_crit_edge

if.then22.if.end46_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end31:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %if.end46

if.then38:                                        ; preds = %if.then22
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 75, ptr %type, align 8
  %mode_mask = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 9
  %31 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %mode_mask, align 8
  %32 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %i2c, align 8
  %adapter41 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %adapter41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter41, align 8
  %36 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %radio, align 4
  %37 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %tv, align 4
  %.pn32.i = load ptr, ptr @tuner_list, align 4
  %cmp.not34.i = icmp eq ptr %.pn32.i, @tuner_list
  br i1 %cmp.not34.i, label %if.then38.register_client_crit_edge, label %if.then38.for.body.i_crit_edge

if.then38.for.body.i_crit_edge:                   ; preds = %if.then38
  br label %for.body.i

if.then38.register_client_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_client

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.then38.for.body.i_crit_edge
  %.pn35.i = phi ptr [ %.pn.i, %cleanup.i.for.body.i_crit_edge ], [ %.pn32.i, %if.then38.for.body.i_crit_edge ]
  %pos.036.i = getelementptr i8, ptr %.pn35.i, i32 -1240
  %i2c.i = getelementptr i8, ptr %.pn35.i, i32 -200
  %38 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %i2c.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adapter.i, align 8
  %cmp1.not.i = icmp eq ptr %41, %35
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %driver.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4, i32 6
  %42 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call.i346 = call i32 @strcmp(ptr noundef %45, ptr noundef nonnull dereferenceable(6) @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i346)
  %tobool.not.i = icmp eq i32 %call.i346, 0
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mode_mask3.i = getelementptr i8, ptr %.pn35.i, i32 32
  %46 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %radio, align 4
  %cmp4.i = icmp eq ptr %47, null
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %48 = ptrtoint ptr %mode_mask3.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode_mask3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %49)
  %cmp5.i = icmp eq i32 %49, 2
  br i1 %cmp5.i, label %land.lhs.true.i.cleanup.sink.split.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i.cleanup.sink.split.i_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %50 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tv, align 4
  %cmp7.i = icmp eq ptr %51, null
  br i1 %cmp7.i, label %land.lhs.true8.i, label %if.else.i.cleanup.i_crit_edge

if.else.i.cleanup.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

land.lhs.true8.i:                                 ; preds = %if.else.i
  %type.i = getelementptr i8, ptr %.pn35.i, i32 40
  %52 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %53)
  %cmp9.not.i = icmp eq i32 %53, 74
  br i1 %cmp9.not.i, label %land.lhs.true8.i.cleanup.i_crit_edge, label %land.lhs.true10.i

land.lhs.true8.i.cleanup.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

land.lhs.true10.i:                                ; preds = %land.lhs.true8.i
  %54 = ptrtoint ptr %mode_mask3.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mode_mask3.i, align 8
  %and.i = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true10.i.cleanup.i_crit_edge, label %land.lhs.true10.i.cleanup.sink.split.i_crit_edge

land.lhs.true10.i.cleanup.sink.split.i_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

land.lhs.true10.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i

cleanup.sink.split.i:                             ; preds = %land.lhs.true10.i.cleanup.sink.split.i_crit_edge, %land.lhs.true.i.cleanup.sink.split.i_crit_edge
  %radio.sink.i = phi ptr [ %radio, %land.lhs.true.i.cleanup.sink.split.i_crit_edge ], [ %tv, %land.lhs.true10.i.cleanup.sink.split.i_crit_edge ]
  %56 = ptrtoint ptr %radio.sink.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %pos.036.i, ptr %radio.sink.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %land.lhs.true10.i.cleanup.i_crit_edge, %land.lhs.true8.i.cleanup.i_crit_edge, %if.else.i.cleanup.i_crit_edge, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %57 = ptrtoint ptr %.pn35.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pn.i = load ptr, ptr %.pn35.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @tuner_list
  br i1 %cmp.not.i, label %tuner_lookup.exit, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

tuner_lookup.exit:                                ; preds = %cleanup.i
  %58 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr = load ptr, ptr %tv, align 4
  %tobool42.not = icmp eq ptr %.pr, null
  br i1 %tobool42.not, label %tuner_lookup.exit.register_client_crit_edge, label %if.then43

tuner_lookup.exit.register_client_crit_edge:      ; preds = %tuner_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_client

if.then43:                                        ; preds = %tuner_lookup.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mode_mask44 = getelementptr inbounds %struct.tuner, ptr %.pr, i32 0, i32 9
  %59 = ptrtoint ptr %mode_mask44 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %mode_mask44, align 8
  %and = and i32 %60, -3
  store i32 %and, ptr %mode_mask44, align 8
  br label %register_client

if.end46:                                         ; preds = %do.end31, %if.then22.if.end46_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

sw.bb47:                                          ; preds = %if.then14.sw.bb47_crit_edge, %if.then14.sw.bb47_crit_edge398, %if.then14.sw.bb47_crit_edge399, %if.then14.sw.bb47_crit_edge400
  %call50 = call ptr @__symbol_get(ptr noundef nonnull @.str.10) #8
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %cond.end56, label %sw.bb47.if.then59_crit_edge

sw.bb47.if.then59_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

cond.end56:                                       ; preds = %sw.bb47
  %call54 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.11) #8
  %call55 = call ptr @__symbol_get(ptr noundef nonnull @.str.10) #8
  %tobool58.not = icmp eq ptr %call55, null
  br i1 %tobool58.not, label %do.end69, label %cond.end56.if.then59_crit_edge

cond.end56.if.then59_crit_edge:                   ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then59

if.then59:                                        ; preds = %cond.end56.if.then59_crit_edge, %sw.bb47.if.then59_crit_edge
  %cond57388 = phi ptr [ %call55, %cond.end56.if.then59_crit_edge ], [ %call50, %sw.bb47.if.then59_crit_edge ]
  %61 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %i2c, align 8
  %adapter61 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %adapter61 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %adapter61, align 8
  %addr63 = getelementptr inbounds %struct.i2c_client, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %addr63 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %addr63, align 2
  %conv64 = trunc i16 %66 to i8
  %call65 = call i32 %cond57388(ptr noundef %64, i8 noundef zeroext %conv64) #8
  call void @__symbol_put(ptr noundef nonnull @.str.10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call65)
  %phi.cmp344 = icmp sgt i32 %call65, -1
  br i1 %phi.cmp344, label %do.body77, label %if.then59.register_client.thread_crit_edge

if.then59.register_client.thread_crit_edge:       ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_client.thread

do.end69:                                         ; preds = %cond.end56
  call void @__sanitizer_cov_trace_pc() #10
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #12
  br label %register_client.thread

do.body77:                                        ; preds = %if.then59
  %67 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool78.not = icmp eq i32 %67, 0
  br i1 %tobool78.not, label %do.body77.if.end138_crit_edge, label %do.end82

do.body77.if.end138_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

do.end82:                                         ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %i2c, align 8
  %adapter85 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %adapter85 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %adapter85, align 8
  %nr.i347 = getelementptr inbounds %struct.i2c_adapter, ptr %71, i32 0, i32 11
  %72 = ptrtoint ptr %nr.i347 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr.i347, align 4
  %addr88 = getelementptr inbounds %struct.i2c_client, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %addr88 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %addr88, align 2
  %conv89 = zext i16 %75 to i32
  %call90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %73, i32 noundef %conv89, ptr noundef nonnull @.str.3) #12
  br label %if.end138

register_client.thread:                           ; preds = %do.end69, %if.then59.register_client.thread_crit_edge
  %76 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 74, ptr %type, align 8
  %mode_mask96 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 9
  %77 = ptrtoint ptr %mode_mask96 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 6, ptr %mode_mask96, align 8
  %78 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %name, align 8
  %name171395 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %80 = ptrtoint ptr %name171395 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %79, ptr %name171395, align 4
  br label %if.then175

sw.bb98:                                          ; preds = %if.then14
  %call101 = call ptr @__symbol_get(ptr noundef nonnull @.str.18) #8
  %tobool102.not = icmp eq ptr %call101, null
  br i1 %tobool102.not, label %cond.end107, label %sw.bb98.if.then110_crit_edge

sw.bb98.if.then110_crit_edge:                     ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

cond.end107:                                      ; preds = %sw.bb98
  %call105 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.19) #8
  %call106 = call ptr @__symbol_get(ptr noundef nonnull @.str.18) #8
  %tobool109.not = icmp eq ptr %call106, null
  br i1 %tobool109.not, label %do.end120, label %cond.end107.if.then110_crit_edge

cond.end107.if.then110_crit_edge:                 ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then110

if.then110:                                       ; preds = %cond.end107.if.then110_crit_edge, %sw.bb98.if.then110_crit_edge
  %cond108391 = phi ptr [ %call106, %cond.end107.if.then110_crit_edge ], [ %call101, %sw.bb98.if.then110_crit_edge ]
  %81 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %i2c, align 8
  %adapter112 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %adapter112 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter112, align 8
  %addr114 = getelementptr inbounds %struct.i2c_client, ptr %82, i32 0, i32 1
  %85 = ptrtoint ptr %addr114 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %addr114, align 2
  %conv115 = trunc i16 %86 to i8
  %call116 = call i32 %cond108391(ptr noundef %84, i8 noundef zeroext %conv115) #8
  call void @__symbol_put(ptr noundef nonnull @.str.18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call116)
  %phi.cmp = icmp sgt i32 %call116, -1
  br i1 %phi.cmp, label %if.then127, label %if.then110.if.end138_crit_edge

if.then110.if.end138_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end138

do.end120:                                        ; preds = %cond.end107
  call void @__sanitizer_cov_trace_pc() #10
  %call122 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12
  br label %if.end138

if.then127:                                       ; preds = %if.then110
  %87 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 62, ptr %type, align 8
  %mode_mask129 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 9
  %88 = ptrtoint ptr %mode_mask129 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 2, ptr %mode_mask129, align 8
  %89 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i2c, align 8
  %adapter131 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %adapter131 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter131, align 8
  call fastcc void @tuner_lookup(ptr noundef %92, ptr noundef nonnull %radio, ptr noundef nonnull %tv)
  %93 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %tv, align 4
  %tobool132.not = icmp eq ptr %94, null
  br i1 %tobool132.not, label %if.then127.register_client_crit_edge, label %if.then133

if.then127.register_client_crit_edge:             ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_client

if.then133:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #10
  %mode_mask134 = getelementptr inbounds %struct.tuner, ptr %94, i32 0, i32 9
  %95 = ptrtoint ptr %mode_mask134 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %mode_mask134, align 8
  %and135 = and i32 %96, -3
  store i32 %and135, ptr %mode_mask134, align 8
  br label %register_client

if.end138:                                        ; preds = %do.end120, %if.then110.if.end138_crit_edge, %do.end82, %do.body77.if.end138_crit_edge, %if.then14.if.end138_crit_edge, %if.end12.if.end138_crit_edge
  %97 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %i2c, align 8
  %adapter140 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 3
  %99 = ptrtoint ptr %adapter140 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %adapter140, align 8
  %101 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr null, ptr %radio, align 4
  %102 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %tv, align 4
  %.pn32.i348 = load ptr, ptr @tuner_list, align 4
  %cmp.not34.i349 = icmp eq ptr %.pn32.i348, @tuner_list
  br i1 %cmp.not34.i349, label %if.end138.if.then143_crit_edge, label %if.end138.for.body.i355_crit_edge

if.end138.for.body.i355_crit_edge:                ; preds = %if.end138
  br label %for.body.i355

if.end138.if.then143_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then143

for.body.i355:                                    ; preds = %cleanup.i377.for.body.i355_crit_edge, %if.end138.for.body.i355_crit_edge
  %.pn35.i350 = phi ptr [ %.pn.i375, %cleanup.i377.for.body.i355_crit_edge ], [ %.pn32.i348, %if.end138.for.body.i355_crit_edge ]
  %pos.036.i351 = getelementptr i8, ptr %.pn35.i350, i32 -1240
  %i2c.i352 = getelementptr i8, ptr %.pn35.i350, i32 -200
  %103 = ptrtoint ptr %i2c.i352 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %i2c.i352, align 8
  %adapter.i353 = getelementptr inbounds %struct.i2c_client, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %adapter.i353 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %adapter.i353, align 8
  %cmp1.not.i354 = icmp eq ptr %106, %100
  br i1 %cmp1.not.i354, label %lor.lhs.false.i359, label %for.body.i355.cleanup.i377_crit_edge

for.body.i355.cleanup.i377_crit_edge:             ; preds = %for.body.i355
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i377

lor.lhs.false.i359:                               ; preds = %for.body.i355
  %driver.i356 = getelementptr inbounds %struct.i2c_client, ptr %104, i32 0, i32 4, i32 6
  %107 = ptrtoint ptr %driver.i356 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %driver.i356, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %108, align 4
  %call.i357 = call i32 @strcmp(ptr noundef %110, ptr noundef nonnull dereferenceable(6) @.str) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i357)
  %tobool.not.i358 = icmp eq i32 %call.i357, 0
  br i1 %tobool.not.i358, label %if.end.i362, label %lor.lhs.false.i359.cleanup.i377_crit_edge

lor.lhs.false.i359.cleanup.i377_crit_edge:        ; preds = %lor.lhs.false.i359
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i377

if.end.i362:                                      ; preds = %lor.lhs.false.i359
  %mode_mask3.i360 = getelementptr i8, ptr %.pn35.i350, i32 32
  %111 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %radio, align 4
  %cmp4.i361 = icmp eq ptr %112, null
  br i1 %cmp4.i361, label %land.lhs.true.i364, label %if.end.i362.if.else.i366_crit_edge

if.end.i362.if.else.i366_crit_edge:               ; preds = %if.end.i362
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i366

land.lhs.true.i364:                               ; preds = %if.end.i362
  %113 = ptrtoint ptr %mode_mask3.i360 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mode_mask3.i360, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %114)
  %cmp5.i363 = icmp eq i32 %114, 2
  br i1 %cmp5.i363, label %land.lhs.true.i364.cleanup.sink.split.i374_crit_edge, label %land.lhs.true.i364.if.else.i366_crit_edge

land.lhs.true.i364.if.else.i366_crit_edge:        ; preds = %land.lhs.true.i364
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i366

land.lhs.true.i364.cleanup.sink.split.i374_crit_edge: ; preds = %land.lhs.true.i364
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i374

if.else.i366:                                     ; preds = %land.lhs.true.i364.if.else.i366_crit_edge, %if.end.i362.if.else.i366_crit_edge
  %115 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %tv, align 4
  %cmp7.i365 = icmp eq ptr %116, null
  br i1 %cmp7.i365, label %land.lhs.true8.i369, label %if.else.i366.cleanup.i377_crit_edge

if.else.i366.cleanup.i377_crit_edge:              ; preds = %if.else.i366
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i377

land.lhs.true8.i369:                              ; preds = %if.else.i366
  %type.i367 = getelementptr i8, ptr %.pn35.i350, i32 40
  %117 = ptrtoint ptr %type.i367 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %type.i367, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %118)
  %cmp9.not.i368 = icmp eq i32 %118, 74
  br i1 %cmp9.not.i368, label %land.lhs.true8.i369.cleanup.i377_crit_edge, label %land.lhs.true10.i372

land.lhs.true8.i369.cleanup.i377_crit_edge:       ; preds = %land.lhs.true8.i369
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i377

land.lhs.true10.i372:                             ; preds = %land.lhs.true8.i369
  %119 = ptrtoint ptr %mode_mask3.i360 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mode_mask3.i360, align 8
  %and.i370 = and i32 %120, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i370)
  %tobool12.not.i371 = icmp eq i32 %and.i370, 0
  br i1 %tobool12.not.i371, label %land.lhs.true10.i372.cleanup.i377_crit_edge, label %land.lhs.true10.i372.cleanup.sink.split.i374_crit_edge

land.lhs.true10.i372.cleanup.sink.split.i374_crit_edge: ; preds = %land.lhs.true10.i372
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i374

land.lhs.true10.i372.cleanup.i377_crit_edge:      ; preds = %land.lhs.true10.i372
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.i377

cleanup.sink.split.i374:                          ; preds = %land.lhs.true10.i372.cleanup.sink.split.i374_crit_edge, %land.lhs.true.i364.cleanup.sink.split.i374_crit_edge
  %radio.sink.i373 = phi ptr [ %radio, %land.lhs.true.i364.cleanup.sink.split.i374_crit_edge ], [ %tv, %land.lhs.true10.i372.cleanup.sink.split.i374_crit_edge ]
  %121 = ptrtoint ptr %radio.sink.i373 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %pos.036.i351, ptr %radio.sink.i373, align 4
  br label %cleanup.i377

cleanup.i377:                                     ; preds = %cleanup.sink.split.i374, %land.lhs.true10.i372.cleanup.i377_crit_edge, %land.lhs.true8.i369.cleanup.i377_crit_edge, %if.else.i366.cleanup.i377_crit_edge, %lor.lhs.false.i359.cleanup.i377_crit_edge, %for.body.i355.cleanup.i377_crit_edge
  %122 = ptrtoint ptr %.pn35.i350 to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn.i375 = load ptr, ptr %.pn35.i350, align 4
  %cmp.not.i376 = icmp eq ptr %.pn.i375, @tuner_list
  br i1 %cmp.not.i376, label %tuner_lookup.exit378, label %cleanup.i377.for.body.i355_crit_edge

cleanup.i377.for.body.i355_crit_edge:             ; preds = %cleanup.i377
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i355

tuner_lookup.exit378:                             ; preds = %cleanup.i377
  %123 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr392 = load ptr, ptr %tv, align 4
  %cmp141 = icmp eq ptr %.pr392, null
  br i1 %cmp141, label %tuner_lookup.exit378.if.then143_crit_edge, label %tuner_lookup.exit378.register_client_crit_edge

tuner_lookup.exit378.register_client_crit_edge:   ; preds = %tuner_lookup.exit378
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_client

tuner_lookup.exit378.if.then143_crit_edge:        ; preds = %tuner_lookup.exit378
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then143

if.then143:                                       ; preds = %tuner_lookup.exit378.if.then143_crit_edge, %if.end138.if.then143_crit_edge
  %mode_mask144 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 9
  %124 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %radio, align 4
  %cmp145 = icmp eq ptr %125, null
  %spec.store.select = select i1 %cmp145, i32 6, i32 4
  %126 = ptrtoint ptr %mode_mask144 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %spec.store.select, ptr %mode_mask144, align 8
  %127 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool151.not = icmp eq i32 %127, 0
  br i1 %tobool151.not, label %if.then143.register_client_crit_edge, label %do.end155

if.then143.register_client_crit_edge:             ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  br label %register_client

do.end155:                                        ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #10
  %128 = ptrtoint ptr %adapter140 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %adapter140, align 8
  %nr.i379 = getelementptr inbounds %struct.i2c_adapter, ptr %129, i32 0, i32 11
  %130 = ptrtoint ptr %nr.i379 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nr.i379, align 4
  %addr161 = getelementptr inbounds %struct.i2c_client, ptr %98, i32 0, i32 1
  %132 = ptrtoint ptr %addr161 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %addr161, align 2
  %conv162 = zext i16 %133 to i32
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %131, i32 noundef %conv162, ptr noundef nonnull @.str.3, i32 noundef %spec.store.select) #12
  br label %register_client

register_client:                                  ; preds = %do.end155, %if.then143.register_client_crit_edge, %tuner_lookup.exit378.register_client_crit_edge, %if.then133, %if.then127.register_client_crit_edge, %if.then43, %tuner_lookup.exit.register_client_crit_edge, %if.then38.register_client_crit_edge
  %134 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %134)
  %.pr394 = load i32, ptr %type, align 8
  %135 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %name, align 8
  %name171 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 1
  %137 = ptrtoint ptr %name171 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %name171, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %.pr394)
  %cmp173 = icmp eq i32 %.pr394, 74
  br i1 %cmp173, label %register_client.if.then175_crit_edge, label %if.else191

register_client.if.then175_crit_edge:             ; preds = %register_client
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then175

if.then175:                                       ; preds = %register_client.if.then175_crit_edge, %register_client.thread
  %pad = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 14
  %flags = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 4
  %138 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %flags, align 8
  %sig_type = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 3
  %139 = ptrtoint ptr %sig_type to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 1, ptr %sig_type, align 4
  %flags180 = getelementptr %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 4
  %140 = ptrtoint ptr %flags180 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 2, ptr %flags180, align 8
  %sig_type183 = getelementptr %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 3
  %141 = ptrtoint ptr %sig_type183 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 1, ptr %sig_type183, align 4
  %call188 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 2, ptr noundef %pad) #8
  br label %if.end218

if.else191:                                       ; preds = %register_client
  call void @__sanitizer_cov_trace_pc() #10
  %pad192 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 14
  %flags194 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 4
  %142 = ptrtoint ptr %flags194 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 1, ptr %flags194, align 8
  %sig_type197 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 0, i32 3
  %143 = ptrtoint ptr %sig_type197 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %sig_type197, align 4
  %flags200 = getelementptr %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 4
  %144 = ptrtoint ptr %flags200 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 2, ptr %flags200, align 8
  %sig_type203 = getelementptr %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 1, i32 3
  %145 = ptrtoint ptr %sig_type203 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %sig_type203, align 4
  %flags206 = getelementptr %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 4
  %146 = ptrtoint ptr %flags206 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 2, ptr %flags206, align 8
  %sig_type209 = getelementptr %struct.tuner, ptr %call7.i.i, i32 0, i32 14, i32 2, i32 3
  %147 = ptrtoint ptr %sig_type209 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 3, ptr %sig_type209, align 4
  %call214 = call i32 @media_entity_pads_init(ptr noundef %sd, i16 noundef zeroext 3, ptr noundef %pad192) #8
  br label %if.end218

if.end218:                                        ; preds = %if.else191, %if.then175
  %.sink397 = phi i32 [ 131077, %if.else191 ], [ 8193, %if.then175 ]
  %ret.0 = phi i32 [ %call214, %if.else191 ], [ %call188, %if.then175 ]
  %function217 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 3
  %148 = ptrtoint ptr %function217 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %.sink397, ptr %function217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp219 = icmp slt i32 %ret.0, 0
  br i1 %cmp219, label %do.end224, label %if.end233

do.end224:                                        ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #10
  %149 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c, align 8
  %adapter227 = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %adapter227 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %adapter227, align 8
  %nr.i380 = getelementptr inbounds %struct.i2c_adapter, ptr %152, i32 0, i32 11
  %153 = ptrtoint ptr %nr.i380 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nr.i380, align 4
  %addr230 = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 1
  %155 = ptrtoint ptr %addr230 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %addr230, align 2
  %conv231 = zext i16 %156 to i32
  %call232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %154, i32 noundef %conv231) #12
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end233:                                        ; preds = %if.end218
  %mode_mask234 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 9
  %157 = ptrtoint ptr %mode_mask234 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %mode_mask234, align 8
  %and235 = and i32 %158, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  %spec.select = select i1 %tobool236.not, i32 1, i32 2
  %159 = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 8
  %160 = ptrtoint ptr %159 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %spec.select, ptr %159, align 4
  %161 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %type, align 8
  %163 = ptrtoint ptr %mode_mask234 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mode_mask234, align 8
  %config = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 12
  %165 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %config, align 4
  %callback = getelementptr inbounds %struct.dvb_frontend, ptr %call7.i.i, i32 0, i32 9
  %167 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %callback, align 4
  call fastcc void @set_type(ptr noundef %client, i32 noundef %162, i32 noundef %164, ptr noundef %166, ptr noundef %168)
  %list = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 3
  %169 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @tuner_list, i32 0, i32 1), align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %169, ptr noundef nonnull @tuner_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end233.list_add_tail.exit_crit_edge

if.end233.list_add_tail.exit_crit_edge:           ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end233
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @tuner_list, i32 0, i32 1), align 4
  %170 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @tuner_list, ptr %list, align 8
  %prev3.i.i = getelementptr inbounds %struct.tuner, ptr %call7.i.i, i32 0, i32 3, i32 1
  %171 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %169, ptr %prev3.i.i, align 4
  %172 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr %list, ptr %169, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end233.list_add_tail.exit_crit_edge
  %173 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %i2c, align 8
  %adapter248 = getelementptr inbounds %struct.i2c_client, ptr %174, i32 0, i32 3
  %175 = ptrtoint ptr %adapter248 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %adapter248, align 8
  %nr.i381 = getelementptr inbounds %struct.i2c_adapter, ptr %176, i32 0, i32 11
  %177 = ptrtoint ptr %nr.i381 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %nr.i381, align 4
  %addr251 = getelementptr inbounds %struct.i2c_client, ptr %174, i32 0, i32 1
  %179 = ptrtoint ptr %addr251 to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %addr251, align 2
  %conv252 = zext i16 %180 to i32
  %181 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %type, align 8
  %183 = ptrtoint ptr %mode_mask234 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %mode_mask234, align 8
  %and255 = and i32 %184, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and255)
  %tobool256.not = icmp eq i32 %and255, 0
  %cond257 = select i1 %tobool256.not, ptr @.str.33, ptr @.str.32
  %and259 = and i32 %184, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and259)
  %tobool260.not = icmp eq i32 %and259, 0
  %cond261 = select i1 %tobool260.not, ptr @.str.33, ptr @.str.34
  %call262 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, i32 noundef %178, i32 noundef %conv252, i32 noundef %182, ptr noundef nonnull %cond257, ptr noundef nonnull %cond261) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end224, %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end224 ], [ 0, %list_add_tail.exit ], [ -19, %if.end46 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tv) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %radio) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1044
  tail call void @v4l2_device_unregister_subdev(ptr noundef %1) #8
  %release.i = getelementptr i8, ptr %1, i32 -600
  %2 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %add.ptr.i) #8
  %4 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release.i, align 4
  tail call void @symbol_put_addr(ptr noundef %5) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %release8.i = getelementptr i8, ptr %1, i32 -508
  %6 = ptrtoint ptr %release8.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %release8.i, align 4
  %tobool9.not.i = icmp eq ptr %7, null
  br i1 %tobool9.not.i, label %if.end.i.tuner_detach.exit_crit_edge, label %if.then10.i

if.end.i.tuner_detach.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_detach.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %7(ptr noundef %add.ptr.i) #8
  %8 = ptrtoint ptr %release8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %release8.i, align 4
  tail call void @symbol_put_addr(ptr noundef %9) #8
  br label %tuner_detach.exit

tuner_detach.exit:                                ; preds = %if.then10.i, %if.end.i.tuner_detach.exit_crit_edge
  %analog_demod_priv = getelementptr i8, ptr %1, i32 -476
  %10 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %analog_demod_priv, align 8
  %list = getelementptr i8, ptr %1, i32 196
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %tuner_detach.exit.list_del.exit_crit_edge

tuner_detach.exit.list_del.exit_crit_edge:        ; preds = %tuner_detach.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %tuner_detach.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr i8, ptr %1, i32 200
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %tuner_detach.exit.list_del.exit_crit_edge
  %17 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr i8, ptr %1, i32 200
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %add.ptr.i) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_command(ptr nocapture noundef readonly %client, i32 noundef %cmd, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1074291804, i32 %cmd)
  %cond = icmp eq i32 %cmd, 1074291804
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -1044
  %type.i = getelementptr i8, ptr %1, i32 236
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 8
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not.i = icmp eq i32 %3, %5
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  %set_config.i = getelementptr i8, ptr %1, i32 -500
  %6 = ptrtoint ptr %set_config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %set_config.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %arg, i32 0, i32 1
  %8 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv.i, align 4
  %call5.i = tail call i32 %7(ptr noundef %add.ptr.i.i, ptr noundef %9) #8
  br label %cleanup

do.body.i:                                        ; preds = %if.end.i
  %10 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool7.not.i = icmp eq i32 %10, 0
  br i1 %tobool7.not.i, label %do.body.i.cleanup_crit_edge, label %do.end.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr i8, ptr %1, i32 -4
  %11 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %18 to i32
  %call12.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %16, i32 noundef %conv.i, ptr noundef nonnull @.str.69) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end.i, %do.body.i.cleanup_crit_edge, %if.then2.i, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -515, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then2.i ], [ 0, %do.body.i.cleanup_crit_edge ], [ 0, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_i2c_subdev_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tuner_lookup(ptr noundef readnone %adap, ptr nocapture noundef %radio, ptr nocapture noundef %tv) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %radio to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %radio, align 4
  %1 = ptrtoint ptr %tv to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %tv, align 4
  %.pn32 = load ptr, ptr @tuner_list, align 4
  %cmp.not34 = icmp eq ptr %.pn32, @tuner_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn35 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn32, %entry.for.body_crit_edge ]
  %pos.036 = getelementptr i8, ptr %.pn35, i32 -1240
  %i2c = getelementptr i8, ptr %.pn35, i32 -200
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %cmp1.not = icmp eq ptr %5, %adap
  br i1 %cmp1.not, label %lor.lhs.false, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  %driver = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = tail call i32 @strcmp(ptr noundef %9, ptr noundef nonnull dereferenceable(6) @.str) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mode_mask3 = getelementptr i8, ptr %.pn35, i32 32
  %10 = ptrtoint ptr %radio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %radio, align 4
  %cmp4 = icmp eq ptr %11, null
  br i1 %cmp4, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = ptrtoint ptr %mode_mask3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode_mask3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp5 = icmp eq i32 %13, 2
  br i1 %cmp5, label %land.lhs.true.cleanup.sink.split_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %14 = ptrtoint ptr %tv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tv, align 4
  %cmp7 = icmp eq ptr %15, null
  br i1 %cmp7, label %land.lhs.true8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true8:                                   ; preds = %if.else
  %type = getelementptr i8, ptr %.pn35, i32 40
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 74, i32 %17)
  %cmp9.not = icmp eq i32 %17, 74
  br i1 %cmp9.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true10

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true10:                                  ; preds = %land.lhs.true8
  %18 = ptrtoint ptr %mode_mask3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode_mask3, align 8
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.cleanup.sink.split_crit_edge

land.lhs.true10.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true10.cleanup.sink.split_crit_edge, %land.lhs.true.cleanup.sink.split_crit_edge
  %radio.sink = phi ptr [ %radio, %land.lhs.true.cleanup.sink.split_crit_edge ], [ %tv, %land.lhs.true10.cleanup.sink.split_crit_edge ]
  %20 = ptrtoint ptr %radio.sink to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pos.036, ptr %radio.sink, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %if.else.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %21 = ptrtoint ptr %.pn35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn = load ptr, ptr %.pn35, align 4
  %cmp.not = icmp eq ptr %.pn, @tuner_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_type(ptr noundef %c, i32 noundef %type, i32 noundef %new_mode_mask, ptr noundef %new_config, ptr noundef %tuner_callback) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [4 x i8], align 4
  %cfg = alloca %struct.xc2028_config, align 4
  %xc5000_cfg = alloca %struct.xc5000_config, align 4
  %xc5000c_cfg = alloca %struct.xc5000_config, align 4
  %cfg408 = alloca %struct.tda18271_config, align 4
  %xc4000_cfg = alloca %struct.xc4000_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1044
  %tuner_ops = getelementptr i8, ptr %1, i32 -752
  %analog_ops4 = getelementptr i8, ptr %1, i32 -532
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buffer) #8
  %2 = getelementptr inbounds [4 x i8], ptr %buffer, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buffer, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buffer, i32 0, i32 3
  %5 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buffer, align 4
  %6 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.180)
  switch i32 %type, label %if.end15 [
    i32 -1, label %entry.do.body_crit_edge
    i32 4, label %entry.do.body_crit_edge831
  ]

entry.do.body_crit_edge831:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge831
  %7 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.body.cleanup612_crit_edge, label %do.end

do.body.cleanup612_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup612

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %1, i32 -4
  %8 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %addr, align 2
  %conv = zext i16 %15 to i32
  %addr10 = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %16 = ptrtoint ptr %addr10 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %addr10, align 2
  %conv11 = zext i16 %17 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, i32 noundef %13, i32 noundef %conv, ptr noundef nonnull @.str.81, i32 noundef %conv11) #12
  br label %cleanup612

if.end15:                                         ; preds = %entry
  %type16 = getelementptr i8, ptr %1, i32 236
  %18 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %type, ptr %type16, align 8
  %config = getelementptr i8, ptr %1, i32 240
  %19 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %new_config, ptr %config, align 4
  %cmp17.not = icmp eq ptr %tuner_callback, null
  br i1 %cmp17.not, label %if.end15.if.end38_crit_edge, label %do.body20

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.body20:                                        ; preds = %if.end15
  %20 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %do.body20.do.end36_crit_edge, label %do.end25

do.body20.do.end36_crit_edge:                     ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end36

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  %i2c27 = getelementptr i8, ptr %1, i32 -4
  %21 = ptrtoint ptr %i2c27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c27, align 8
  %adapter28 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %adapter28 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adapter28, align 8
  %nr.i755 = getelementptr inbounds %struct.i2c_adapter, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %nr.i755 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr.i755, align 4
  %addr31 = getelementptr inbounds %struct.i2c_client, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %addr31 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %addr31, align 2
  %conv32 = zext i16 %28 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %26, i32 noundef %conv32, ptr noundef nonnull @.str.81) #12
  br label %do.end36

do.end36:                                         ; preds = %do.end25, %do.body20.do.end36_crit_edge
  %callback = getelementptr i8, ptr %1, i32 -16
  %29 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %tuner_callback, ptr %callback, align 4
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %if.end15.if.end38_crit_edge
  %release.i = getelementptr i8, ptr %1, i32 -600
  %30 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %release.i, align 4
  %tobool.not.i = icmp eq ptr %31, null
  br i1 %tobool.not.i, label %if.end38.if.end.i_crit_edge, label %if.then.i

if.end38.if.end.i_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %31(ptr noundef %add.ptr.i) #8
  %32 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %release.i, align 4
  tail call void @symbol_put_addr(ptr noundef %33) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end38.if.end.i_crit_edge
  %release8.i = getelementptr i8, ptr %1, i32 -508
  %34 = ptrtoint ptr %release8.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release8.i, align 4
  %tobool9.not.i = icmp eq ptr %35, null
  br i1 %tobool9.not.i, label %if.end.i.tuner_detach.exit_crit_edge, label %if.then10.i

if.end.i.tuner_detach.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_detach.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %35(ptr noundef %add.ptr.i) #8
  %36 = ptrtoint ptr %release8.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %release8.i, align 4
  tail call void @symbol_put_addr(ptr noundef %37) #8
  br label %tuner_detach.exit

tuner_detach.exit:                                ; preds = %if.then10.i, %if.end.i.tuner_detach.exit_crit_edge
  %analog_demod_priv = getelementptr i8, ptr %1, i32 -476
  %38 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %analog_demod_priv, align 8
  %39 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type16, align 8
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.181)
  switch i32 %40, label %sw.default [
    i32 33, label %sw.bb
    i32 54, label %sw.bb69
    i32 62, label %sw.bb105
    i32 75, label %sw.bb140
    i32 63, label %tuner_detach.exit.sw.bb176_crit_edge
    i32 78, label %tuner_detach.exit.sw.bb176_crit_edge832
    i32 67, label %sw.bb220
    i32 71, label %sw.bb262
    i32 74, label %sw.bb297
    i32 76, label %sw.bb332
    i32 88, label %sw.bb369
    i32 83, label %sw.bb407
    i32 87, label %sw.bb445
  ]

tuner_detach.exit.sw.bb176_crit_edge832:          ; preds = %tuner_detach.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb176

tuner_detach.exit.sw.bb176_crit_edge:             ; preds = %tuner_detach.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb176

sw.bb:                                            ; preds = %tuner_detach.exit
  %call42 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.85) #8
  %tobool43.not = icmp eq ptr %call42, null
  br i1 %tobool43.not, label %cond.end, label %sw.bb.if.then47_crit_edge

sw.bb.if.then47_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

cond.end:                                         ; preds = %sw.bb
  %call44 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.86) #8
  %call45 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.85) #8
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %do.end61, label %cond.end.if.then47_crit_edge

cond.end.if.then47_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then47

if.then47:                                        ; preds = %cond.end.if.then47_crit_edge, %sw.bb.if.then47_crit_edge
  %cond763 = phi ptr [ %call45, %cond.end.if.then47_crit_edge ], [ %call42, %sw.bb.if.then47_crit_edge ]
  %i2c49 = getelementptr i8, ptr %1, i32 -4
  %42 = ptrtoint ptr %i2c49 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %i2c49, align 8
  %adapter50 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %adapter50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %adapter50, align 8
  %addr52 = getelementptr inbounds %struct.i2c_client, ptr %43, i32 0, i32 1
  %46 = ptrtoint ptr %addr52 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr52, align 2
  %conv53 = trunc i16 %47 to i8
  %call54 = tail call ptr %cond763(ptr noundef %add.ptr.i, ptr noundef %45, i8 noundef zeroext %conv53) #8
  %cmp55 = icmp eq ptr %call54, null
  br i1 %cmp55, label %if.then57, label %if.then47.sw.epilog_crit_edge

if.then47.sw.epilog_crit_edge:                    ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then57:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.85) #8
  br label %do.body593

do.end61:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.88) #12
  br label %do.body593

sw.bb69:                                          ; preds = %tuner_detach.exit
  %call72 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #8
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %cond.end78, label %sw.bb69.if.then81_crit_edge

sw.bb69.if.then81_crit_edge:                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

cond.end78:                                       ; preds = %sw.bb69
  %call76 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.91) #8
  %call77 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.90) #8
  %tobool80.not = icmp eq ptr %call77, null
  br i1 %tobool80.not, label %do.end97, label %cond.end78.if.then81_crit_edge

cond.end78.if.then81_crit_edge:                   ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then81

if.then81:                                        ; preds = %cond.end78.if.then81_crit_edge, %sw.bb69.if.then81_crit_edge
  %cond79768 = phi ptr [ %call77, %cond.end78.if.then81_crit_edge ], [ %call72, %sw.bb69.if.then81_crit_edge ]
  %i2c83 = getelementptr i8, ptr %1, i32 -4
  %48 = ptrtoint ptr %i2c83 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %i2c83, align 8
  %adapter84 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %adapter84 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %adapter84, align 8
  %addr86 = getelementptr inbounds %struct.i2c_client, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %addr86 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %addr86, align 2
  %conv87 = trunc i16 %53 to i8
  %54 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %config, align 4
  %call89 = tail call ptr %cond79768(ptr noundef %add.ptr.i, ptr noundef %51, i8 noundef zeroext %conv87, ptr noundef %55) #8
  %cmp90 = icmp eq ptr %call89, null
  br i1 %cmp90, label %if.then92, label %if.then81.sw.epilog_crit_edge

if.then81.sw.epilog_crit_edge:                    ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then92:                                        ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.90) #8
  br label %do.body593

do.end97:                                         ; preds = %cond.end78
  call void @__sanitizer_cov_trace_pc() #10
  %call99 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93) #12
  br label %do.body593

sw.bb105:                                         ; preds = %tuner_detach.exit
  %call108 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #8
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %cond.end114, label %sw.bb105.if.then117_crit_edge

sw.bb105.if.then117_crit_edge:                    ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117

cond.end114:                                      ; preds = %sw.bb105
  %call112 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.96) #8
  %call113 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.95) #8
  %tobool116.not = icmp eq ptr %call113, null
  br i1 %tobool116.not, label %do.end132, label %cond.end114.if.then117_crit_edge

cond.end114.if.then117_crit_edge:                 ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then117

if.then117:                                       ; preds = %cond.end114.if.then117_crit_edge, %sw.bb105.if.then117_crit_edge
  %cond115773 = phi ptr [ %call113, %cond.end114.if.then117_crit_edge ], [ %call108, %sw.bb105.if.then117_crit_edge ]
  %i2c119 = getelementptr i8, ptr %1, i32 -4
  %56 = ptrtoint ptr %i2c119 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %i2c119, align 8
  %adapter120 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %adapter120 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %adapter120, align 8
  %addr122 = getelementptr inbounds %struct.i2c_client, ptr %57, i32 0, i32 1
  %60 = ptrtoint ptr %addr122 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr122, align 2
  %conv123 = trunc i16 %61 to i8
  %call124 = tail call ptr %cond115773(ptr noundef %add.ptr.i, ptr noundef %59, i8 noundef zeroext %conv123) #8
  %cmp125 = icmp eq ptr %call124, null
  br i1 %cmp125, label %if.then127, label %if.end139

if.then127:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.95) #8
  br label %do.body593

do.end132:                                        ; preds = %cond.end114
  call void @__sanitizer_cov_trace_pc() #10
  %call134 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98) #12
  br label %do.body593

if.end139:                                        ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #10
  %mode_mask = getelementptr i8, ptr %1, i32 228
  %62 = ptrtoint ptr %mode_mask to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 2, ptr %mode_mask, align 8
  br label %sw.epilog

sw.bb140:                                         ; preds = %tuner_detach.exit
  %call143 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.100) #8
  %tobool144.not = icmp eq ptr %call143, null
  br i1 %tobool144.not, label %cond.end149, label %sw.bb140.if.then152_crit_edge

sw.bb140.if.then152_crit_edge:                    ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then152

cond.end149:                                      ; preds = %sw.bb140
  %call147 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.101) #8
  %call148 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.100) #8
  %tobool151.not = icmp eq ptr %call148, null
  br i1 %tobool151.not, label %do.end167, label %cond.end149.if.then152_crit_edge

cond.end149.if.then152_crit_edge:                 ; preds = %cond.end149
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then152

if.then152:                                       ; preds = %cond.end149.if.then152_crit_edge, %sw.bb140.if.then152_crit_edge
  %cond150778 = phi ptr [ %call148, %cond.end149.if.then152_crit_edge ], [ %call143, %sw.bb140.if.then152_crit_edge ]
  %i2c154 = getelementptr i8, ptr %1, i32 -4
  %63 = ptrtoint ptr %i2c154 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %i2c154, align 8
  %adapter155 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %adapter155 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %adapter155, align 8
  %addr157 = getelementptr inbounds %struct.i2c_client, ptr %64, i32 0, i32 1
  %67 = ptrtoint ptr %addr157 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %addr157, align 2
  %conv158 = trunc i16 %68 to i8
  %call159 = tail call ptr %cond150778(ptr noundef %add.ptr.i, ptr noundef %66, i8 noundef zeroext %conv158) #8
  %cmp160 = icmp eq ptr %call159, null
  br i1 %cmp160, label %if.then162, label %if.end174

if.then162:                                       ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.100) #8
  br label %do.body593

do.end167:                                        ; preds = %cond.end149
  call void @__sanitizer_cov_trace_pc() #10
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103) #12
  br label %do.body593

if.end174:                                        ; preds = %if.then152
  call void @__sanitizer_cov_trace_pc() #10
  %mode_mask175 = getelementptr i8, ptr %1, i32 228
  %69 = ptrtoint ptr %mode_mask175 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 2, ptr %mode_mask175, align 8
  br label %sw.epilog

sw.bb176:                                         ; preds = %tuner_detach.exit.sw.bb176_crit_edge, %tuner_detach.exit.sw.bb176_crit_edge832
  %70 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 11, ptr %buffer, align 4
  %71 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 -36, ptr %2, align 1
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 -100, ptr %3, align 2
  %73 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 96, ptr %4, align 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %c, ptr noundef nonnull %buffer, i32 noundef 4, i16 noundef zeroext 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %74(i32 noundef 214748000) #8
  %75 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 -122, ptr %3, align 2
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 84, ptr %4, align 1
  %call.i756 = call i32 @i2c_transfer_buffer_flags(ptr noundef %c, ptr noundef nonnull %buffer, i32 noundef 4, i16 noundef zeroext 0) #8
  %call187 = call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool188.not = icmp eq ptr %call187, null
  br i1 %tobool188.not, label %cond.end193, label %sw.bb176.if.then196_crit_edge

sw.bb176.if.then196_crit_edge:                    ; preds = %sw.bb176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then196

cond.end193:                                      ; preds = %sw.bb176
  %call191 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.106) #8
  %call192 = call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool195.not = icmp eq ptr %call192, null
  br i1 %tobool195.not, label %do.end212, label %cond.end193.if.then196_crit_edge

cond.end193.if.then196_crit_edge:                 ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then196

if.then196:                                       ; preds = %cond.end193.if.then196_crit_edge, %sw.bb176.if.then196_crit_edge
  %cond194783 = phi ptr [ %call192, %cond.end193.if.then196_crit_edge ], [ %call187, %sw.bb176.if.then196_crit_edge ]
  %i2c198 = getelementptr i8, ptr %1, i32 -4
  %77 = ptrtoint ptr %i2c198 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %i2c198, align 8
  %adapter199 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 3
  %79 = ptrtoint ptr %adapter199 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %adapter199, align 8
  %addr201 = getelementptr inbounds %struct.i2c_client, ptr %78, i32 0, i32 1
  %81 = ptrtoint ptr %addr201 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %addr201, align 2
  %conv202 = trunc i16 %82 to i8
  %83 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %type16, align 8
  %call204 = call ptr %cond194783(ptr noundef %add.ptr.i, ptr noundef %80, i8 noundef zeroext %conv202, i32 noundef %84) #8
  %cmp205 = icmp eq ptr %call204, null
  br i1 %cmp205, label %if.then207, label %if.then196.sw.epilog_crit_edge

if.then196.sw.epilog_crit_edge:                   ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then207:                                       ; preds = %if.then196
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.105) #8
  br label %do.body593

do.end212:                                        ; preds = %cond.end193
  call void @__sanitizer_cov_trace_pc() #10
  %call214 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %do.body593

sw.bb220:                                         ; preds = %tuner_detach.exit
  %85 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 11, ptr %buffer, align 4
  %86 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 -36, ptr %2, align 1
  %87 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 -122, ptr %3, align 2
  %88 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 -92, ptr %4, align 1
  %call.i757 = call i32 @i2c_transfer_buffer_flags(ptr noundef %c, ptr noundef nonnull %buffer, i32 noundef 4, i16 noundef zeroext 0) #8
  %call229 = call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool230.not = icmp eq ptr %call229, null
  br i1 %tobool230.not, label %cond.end235, label %sw.bb220.if.then238_crit_edge

sw.bb220.if.then238_crit_edge:                    ; preds = %sw.bb220
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then238

cond.end235:                                      ; preds = %sw.bb220
  %call233 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.106) #8
  %call234 = call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool237.not = icmp eq ptr %call234, null
  br i1 %tobool237.not, label %do.end254, label %cond.end235.if.then238_crit_edge

cond.end235.if.then238_crit_edge:                 ; preds = %cond.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then238

if.then238:                                       ; preds = %cond.end235.if.then238_crit_edge, %sw.bb220.if.then238_crit_edge
  %cond236788 = phi ptr [ %call234, %cond.end235.if.then238_crit_edge ], [ %call229, %sw.bb220.if.then238_crit_edge ]
  %i2c240 = getelementptr i8, ptr %1, i32 -4
  %89 = ptrtoint ptr %i2c240 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %i2c240, align 8
  %adapter241 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %adapter241 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %adapter241, align 8
  %addr243 = getelementptr inbounds %struct.i2c_client, ptr %90, i32 0, i32 1
  %93 = ptrtoint ptr %addr243 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %addr243, align 2
  %conv244 = trunc i16 %94 to i8
  %95 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %type16, align 8
  %call246 = call ptr %cond236788(ptr noundef %add.ptr.i, ptr noundef %92, i8 noundef zeroext %conv244, i32 noundef %96) #8
  %cmp247 = icmp eq ptr %call246, null
  br i1 %cmp247, label %if.then249, label %if.then238.sw.epilog_crit_edge

if.then238.sw.epilog_crit_edge:                   ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then249:                                       ; preds = %if.then238
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.105) #8
  br label %do.body593

do.end254:                                        ; preds = %cond.end235
  call void @__sanitizer_cov_trace_pc() #10
  %call256 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %do.body593

sw.bb262:                                         ; preds = %tuner_detach.exit
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cfg) #8
  %97 = getelementptr inbounds i8, ptr %cfg, i32 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 -1, ptr %97, align 4
  %i2c263 = getelementptr i8, ptr %1, i32 -4
  %99 = ptrtoint ptr %i2c263 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %i2c263, align 8
  %adapter264 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %adapter264 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adapter264, align 8
  %103 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %102, ptr %cfg, align 4
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %addr266 = getelementptr inbounds %struct.i2c_client, ptr %100, i32 0, i32 1
  %104 = ptrtoint ptr %addr266 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %addr266, align 2
  %conv267 = trunc i16 %105 to i8
  %106 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv267, ptr %i2c_addr, align 4
  %ctrl = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %107 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %ctrl, align 4
  %call270 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #8
  %tobool271.not = icmp eq ptr %call270, null
  br i1 %tobool271.not, label %cond.end276, label %sw.bb262.if.then279_crit_edge

sw.bb262.if.then279_crit_edge:                    ; preds = %sw.bb262
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then279

cond.end276:                                      ; preds = %sw.bb262
  %call274 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.113) #8
  %call275 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.112) #8
  %tobool278.not = icmp eq ptr %call275, null
  br i1 %tobool278.not, label %do.end289, label %cond.end276.if.then279_crit_edge

cond.end276.if.then279_crit_edge:                 ; preds = %cond.end276
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then279

if.then279:                                       ; preds = %cond.end276.if.then279_crit_edge, %sw.bb262.if.then279_crit_edge
  %cond277793 = phi ptr [ %call275, %cond.end276.if.then279_crit_edge ], [ %call270, %sw.bb262.if.then279_crit_edge ]
  %call281 = call ptr %cond277793(ptr noundef %add.ptr.i, ptr noundef nonnull %cfg) #8
  %cmp282 = icmp eq ptr %call281, null
  br i1 %cmp282, label %if.then284, label %if.end292

if.then284:                                       ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.112) #8
  br label %if.end292.thread

do.end289:                                        ; preds = %cond.end276
  call void @__sanitizer_cov_trace_pc() #10
  %call291 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #12
  br label %if.end292.thread

if.end292.thread:                                 ; preds = %do.end289, %if.then284
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #8
  br label %do.body593

if.end292:                                        ; preds = %if.then279
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cfg) #8
  br label %sw.epilog

sw.bb297:                                         ; preds = %tuner_detach.exit
  %call300 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.117) #8
  %tobool301.not = icmp eq ptr %call300, null
  br i1 %tobool301.not, label %cond.end306, label %sw.bb297.if.then309_crit_edge

sw.bb297.if.then309_crit_edge:                    ; preds = %sw.bb297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then309

cond.end306:                                      ; preds = %sw.bb297
  %call304 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.118) #8
  %call305 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.117) #8
  %tobool308.not = icmp eq ptr %call305, null
  br i1 %tobool308.not, label %do.end324, label %cond.end306.if.then309_crit_edge

cond.end306.if.then309_crit_edge:                 ; preds = %cond.end306
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then309

if.then309:                                       ; preds = %cond.end306.if.then309_crit_edge, %sw.bb297.if.then309_crit_edge
  %cond307799 = phi ptr [ %call305, %cond.end306.if.then309_crit_edge ], [ %call300, %sw.bb297.if.then309_crit_edge ]
  %i2c311 = getelementptr i8, ptr %1, i32 -4
  %108 = ptrtoint ptr %i2c311 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %i2c311, align 8
  %adapter312 = getelementptr inbounds %struct.i2c_client, ptr %109, i32 0, i32 3
  %110 = ptrtoint ptr %adapter312 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adapter312, align 8
  %addr314 = getelementptr inbounds %struct.i2c_client, ptr %109, i32 0, i32 1
  %112 = ptrtoint ptr %addr314 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %addr314, align 2
  %conv315 = trunc i16 %113 to i8
  %call316 = tail call ptr %cond307799(ptr noundef %add.ptr.i, ptr noundef %111, i8 noundef zeroext %conv315) #8
  %cmp317 = icmp eq ptr %call316, null
  br i1 %cmp317, label %if.then319, label %if.then309.sw.epilog_crit_edge

if.then309.sw.epilog_crit_edge:                   ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then319:                                       ; preds = %if.then309
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.117) #8
  br label %do.body593

do.end324:                                        ; preds = %cond.end306
  call void @__sanitizer_cov_trace_pc() #10
  %call326 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #12
  br label %do.body593

sw.bb332:                                         ; preds = %tuner_detach.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xc5000_cfg) #8
  %114 = call ptr @memset(ptr %xc5000_cfg, i32 0, i32 20)
  %i2c333 = getelementptr i8, ptr %1, i32 -4
  %115 = ptrtoint ptr %i2c333 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %i2c333, align 8
  %addr334 = getelementptr inbounds %struct.i2c_client, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %addr334 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %addr334, align 2
  %conv335 = trunc i16 %118 to i8
  %119 = ptrtoint ptr %xc5000_cfg to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %conv335, ptr %xc5000_cfg, align 4
  %call338 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.122) #8
  %tobool339.not = icmp eq ptr %call338, null
  br i1 %tobool339.not, label %cond.end344, label %sw.bb332.if.then347_crit_edge

sw.bb332.if.then347_crit_edge:                    ; preds = %sw.bb332
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then347

cond.end344:                                      ; preds = %sw.bb332
  %call342 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.123) #8
  %call343 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.122) #8
  %tobool346.not = icmp eq ptr %call343, null
  br i1 %tobool346.not, label %do.end359, label %cond.end344.if.then347_crit_edge

cond.end344.if.then347_crit_edge:                 ; preds = %cond.end344
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then347

if.then347:                                       ; preds = %cond.end344.if.then347_crit_edge, %sw.bb332.if.then347_crit_edge
  %cond345804 = phi ptr [ %call343, %cond.end344.if.then347_crit_edge ], [ %call338, %sw.bb332.if.then347_crit_edge ]
  %120 = ptrtoint ptr %i2c333 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %i2c333, align 8
  %adapter350 = getelementptr inbounds %struct.i2c_client, ptr %121, i32 0, i32 3
  %122 = ptrtoint ptr %adapter350 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %adapter350, align 8
  %call351 = call ptr %cond345804(ptr noundef %add.ptr.i, ptr noundef %123, ptr noundef nonnull %xc5000_cfg) #8
  %cmp352 = icmp eq ptr %call351, null
  br i1 %cmp352, label %if.then354, label %if.end362

if.then354:                                       ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.122) #8
  br label %if.end362.thread

do.end359:                                        ; preds = %cond.end344
  call void @__sanitizer_cov_trace_pc() #10
  %call361 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #12
  br label %if.end362.thread

if.end362.thread:                                 ; preds = %do.end359, %if.then354
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xc5000_cfg) #8
  br label %do.body593

if.end362:                                        ; preds = %if.then347
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xc5000_cfg) #8
  br label %sw.epilog

sw.bb369:                                         ; preds = %tuner_detach.exit
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %xc5000c_cfg) #8
  %124 = call ptr @memset(ptr %xc5000c_cfg, i32 0, i32 16)
  %i2c371 = getelementptr i8, ptr %1, i32 -4
  %125 = ptrtoint ptr %i2c371 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %i2c371, align 8
  %addr372 = getelementptr inbounds %struct.i2c_client, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %addr372 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %addr372, align 2
  %conv373 = trunc i16 %128 to i8
  %129 = ptrtoint ptr %xc5000c_cfg to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv373, ptr %xc5000c_cfg, align 4
  %chip_id = getelementptr inbounds %struct.xc5000_config, ptr %xc5000c_cfg, i32 0, i32 5
  %130 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 2, ptr %chip_id, align 4
  %call376 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.122) #8
  %tobool377.not = icmp eq ptr %call376, null
  br i1 %tobool377.not, label %cond.end382, label %sw.bb369.if.then385_crit_edge

sw.bb369.if.then385_crit_edge:                    ; preds = %sw.bb369
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then385

cond.end382:                                      ; preds = %sw.bb369
  %call380 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.123) #8
  %call381 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.122) #8
  %tobool384.not = icmp eq ptr %call381, null
  br i1 %tobool384.not, label %do.end397, label %cond.end382.if.then385_crit_edge

cond.end382.if.then385_crit_edge:                 ; preds = %cond.end382
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then385

if.then385:                                       ; preds = %cond.end382.if.then385_crit_edge, %sw.bb369.if.then385_crit_edge
  %cond383810 = phi ptr [ %call381, %cond.end382.if.then385_crit_edge ], [ %call376, %sw.bb369.if.then385_crit_edge ]
  %131 = ptrtoint ptr %i2c371 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %i2c371, align 8
  %adapter388 = getelementptr inbounds %struct.i2c_client, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %adapter388 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %adapter388, align 8
  %call389 = call ptr %cond383810(ptr noundef %add.ptr.i, ptr noundef %134, ptr noundef nonnull %xc5000c_cfg) #8
  %cmp390 = icmp eq ptr %call389, null
  br i1 %cmp390, label %if.then392, label %if.end400

if.then392:                                       ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.122) #8
  br label %if.end400.thread

do.end397:                                        ; preds = %cond.end382
  call void @__sanitizer_cov_trace_pc() #10
  %call399 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125) #12
  br label %if.end400.thread

if.end400.thread:                                 ; preds = %do.end397, %if.then392
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xc5000c_cfg) #8
  br label %do.body593

if.end400:                                        ; preds = %if.then385
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %xc5000c_cfg) #8
  br label %sw.epilog

sw.bb407:                                         ; preds = %tuner_detach.exit
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg408) #8
  %135 = call ptr @memcpy(ptr %cfg408, ptr @__const.set_type.cfg.129, i32 28)
  %call411 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #8
  %tobool412.not = icmp eq ptr %call411, null
  br i1 %tobool412.not, label %cond.end417, label %sw.bb407.if.then420_crit_edge

sw.bb407.if.then420_crit_edge:                    ; preds = %sw.bb407
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then420

cond.end417:                                      ; preds = %sw.bb407
  %call415 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.131) #8
  %call416 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.130) #8
  %tobool419.not = icmp eq ptr %call416, null
  br i1 %tobool419.not, label %do.end435, label %cond.end417.if.then420_crit_edge

cond.end417.if.then420_crit_edge:                 ; preds = %cond.end417
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then420

if.then420:                                       ; preds = %cond.end417.if.then420_crit_edge, %sw.bb407.if.then420_crit_edge
  %cond418816 = phi ptr [ %call416, %cond.end417.if.then420_crit_edge ], [ %call411, %sw.bb407.if.then420_crit_edge ]
  %i2c422 = getelementptr i8, ptr %1, i32 -4
  %136 = ptrtoint ptr %i2c422 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %i2c422, align 8
  %addr423 = getelementptr inbounds %struct.i2c_client, ptr %137, i32 0, i32 1
  %138 = ptrtoint ptr %addr423 to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %addr423, align 2
  %conv424 = trunc i16 %139 to i8
  %adapter426 = getelementptr inbounds %struct.i2c_client, ptr %137, i32 0, i32 3
  %140 = ptrtoint ptr %adapter426 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %adapter426, align 8
  %call427 = call ptr %cond418816(ptr noundef %add.ptr.i, i8 noundef zeroext %conv424, ptr noundef %141, ptr noundef nonnull %cfg408) #8
  %cmp428 = icmp eq ptr %call427, null
  br i1 %cmp428, label %if.then430, label %if.end438

if.then430:                                       ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.130) #8
  br label %if.end438.thread

do.end435:                                        ; preds = %cond.end417
  call void @__sanitizer_cov_trace_pc() #10
  %call437 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #12
  br label %if.end438.thread

if.end438.thread:                                 ; preds = %do.end435, %if.then430
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg408) #8
  br label %do.body593

if.end438:                                        ; preds = %if.then420
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg408) #8
  br label %sw.epilog

sw.bb445:                                         ; preds = %tuner_detach.exit
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xc4000_cfg) #8
  %142 = getelementptr inbounds %struct.xc4000_config, ptr %xc4000_cfg, i32 0, i32 1
  %i2c447 = getelementptr i8, ptr %1, i32 -4
  %143 = ptrtoint ptr %i2c447 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %i2c447, align 8
  %addr448 = getelementptr inbounds %struct.i2c_client, ptr %144, i32 0, i32 1
  %145 = ptrtoint ptr %addr448 to i32
  call void @__asan_load2_noabort(i32 %145)
  %146 = load i16, ptr %addr448, align 2
  %conv449 = trunc i16 %146 to i8
  %147 = ptrtoint ptr %xc4000_cfg to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv449, ptr %xc4000_cfg, align 4
  %148 = call ptr @memset(ptr %142, i32 0, i32 7)
  %call452 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.135) #8
  %tobool453.not = icmp eq ptr %call452, null
  br i1 %tobool453.not, label %cond.end458, label %sw.bb445.if.then461_crit_edge

sw.bb445.if.then461_crit_edge:                    ; preds = %sw.bb445
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then461

cond.end458:                                      ; preds = %sw.bb445
  %call456 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.136) #8
  %call457 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.135) #8
  %tobool460.not = icmp eq ptr %call457, null
  br i1 %tobool460.not, label %do.end473, label %cond.end458.if.then461_crit_edge

cond.end458.if.then461_crit_edge:                 ; preds = %cond.end458
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then461

if.then461:                                       ; preds = %cond.end458.if.then461_crit_edge, %sw.bb445.if.then461_crit_edge
  %cond459822 = phi ptr [ %call457, %cond.end458.if.then461_crit_edge ], [ %call452, %sw.bb445.if.then461_crit_edge ]
  %149 = ptrtoint ptr %i2c447 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %i2c447, align 8
  %adapter464 = getelementptr inbounds %struct.i2c_client, ptr %150, i32 0, i32 3
  %151 = ptrtoint ptr %adapter464 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %adapter464, align 8
  %call465 = call ptr %cond459822(ptr noundef %add.ptr.i, ptr noundef %152, ptr noundef nonnull %xc4000_cfg) #8
  %cmp466 = icmp eq ptr %call465, null
  br i1 %cmp466, label %if.then468, label %if.end476

if.then468:                                       ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #10
  call void @__symbol_put(ptr noundef nonnull @.str.135) #8
  br label %if.end476.thread

do.end473:                                        ; preds = %cond.end458
  call void @__sanitizer_cov_trace_pc() #10
  %call475 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #12
  br label %if.end476.thread

if.end476.thread:                                 ; preds = %do.end473, %if.then468
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xc4000_cfg) #8
  br label %do.body593

if.end476:                                        ; preds = %if.then461
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xc4000_cfg) #8
  br label %sw.epilog

sw.default:                                       ; preds = %tuner_detach.exit
  %call485 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool486.not = icmp eq ptr %call485, null
  br i1 %tobool486.not, label %cond.end491, label %sw.default.if.then494_crit_edge

sw.default.if.then494_crit_edge:                  ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then494

cond.end491:                                      ; preds = %sw.default
  %call489 = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.106) #8
  %call490 = tail call ptr @__symbol_get(ptr noundef nonnull @.str.105) #8
  %tobool493.not = icmp eq ptr %call490, null
  br i1 %tobool493.not, label %do.end510, label %cond.end491.if.then494_crit_edge

cond.end491.if.then494_crit_edge:                 ; preds = %cond.end491
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then494

if.then494:                                       ; preds = %cond.end491.if.then494_crit_edge, %sw.default.if.then494_crit_edge
  %cond492828 = phi ptr [ %call490, %cond.end491.if.then494_crit_edge ], [ %call485, %sw.default.if.then494_crit_edge ]
  %i2c496 = getelementptr i8, ptr %1, i32 -4
  %153 = ptrtoint ptr %i2c496 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %i2c496, align 8
  %adapter497 = getelementptr inbounds %struct.i2c_client, ptr %154, i32 0, i32 3
  %155 = ptrtoint ptr %adapter497 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %adapter497, align 8
  %addr499 = getelementptr inbounds %struct.i2c_client, ptr %154, i32 0, i32 1
  %157 = ptrtoint ptr %addr499 to i32
  call void @__asan_load2_noabort(i32 %157)
  %158 = load i16, ptr %addr499, align 2
  %conv500 = trunc i16 %158 to i8
  %159 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %type16, align 8
  %call502 = tail call ptr %cond492828(ptr noundef %add.ptr.i, ptr noundef %156, i8 noundef zeroext %conv500, i32 noundef %160) #8
  %cmp503 = icmp eq ptr %call502, null
  br i1 %cmp503, label %if.then505, label %if.then494.sw.epilog_crit_edge

if.then494.sw.epilog_crit_edge:                   ; preds = %if.then494
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then505:                                       ; preds = %if.then494
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__symbol_put(ptr noundef nonnull @.str.105) #8
  br label %do.body593

do.end510:                                        ; preds = %cond.end491
  call void @__sanitizer_cov_trace_pc() #10
  %call512 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.108) #12
  br label %do.body593

sw.epilog:                                        ; preds = %if.then494.sw.epilog_crit_edge, %if.end476, %if.end438, %if.end400, %if.end362, %if.then309.sw.epilog_crit_edge, %if.end292, %if.then238.sw.epilog_crit_edge, %if.then196.sw.epilog_crit_edge, %if.end174, %if.end139, %if.then81.sw.epilog_crit_edge, %if.then47.sw.epilog_crit_edge
  %tobool561.not = phi i1 [ false, %if.then494.sw.epilog_crit_edge ], [ true, %if.end476 ], [ true, %if.end438 ], [ true, %if.end400 ], [ true, %if.end362 ], [ false, %if.then309.sw.epilog_crit_edge ], [ true, %if.end292 ], [ false, %if.then238.sw.epilog_crit_edge ], [ false, %if.then196.sw.epilog_crit_edge ], [ false, %if.then81.sw.epilog_crit_edge ], [ false, %if.then47.sw.epilog_crit_edge ], [ false, %if.end174 ], [ false, %if.end139 ]
  %set_params = getelementptr i8, ptr %1, i32 -528
  %161 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %set_params, align 4
  %cmp518 = icmp eq ptr %162, null
  br i1 %cmp518, label %land.lhs.true, label %sw.epilog.if.else535_crit_edge

sw.epilog.if.else535_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else535

land.lhs.true:                                    ; preds = %sw.epilog
  %set_analog_params = getelementptr i8, ptr %1, i32 -576
  %163 = ptrtoint ptr %set_analog_params to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %set_analog_params, align 4
  %tobool520.not = icmp eq ptr %164, null
  br i1 %tobool520.not, label %land.lhs.true.if.else535_crit_edge, label %if.then521

land.lhs.true.if.else535_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else535

if.then521:                                       ; preds = %land.lhs.true
  %name523 = getelementptr i8, ptr %1, i32 244
  %165 = ptrtoint ptr %name523 to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %tuner_ops, ptr %name523, align 8
  %166 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %add.ptr.i, ptr %analog_demod_priv, align 8
  %167 = call ptr @memcpy(ptr %analog_ops4, ptr @tuner_analog_ops, i32 36)
  %get_rf_strength = getelementptr i8, ptr %1, i32 -552
  %168 = ptrtoint ptr %get_rf_strength to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %get_rf_strength, align 4
  %tobool526.not = icmp eq ptr %169, null
  br i1 %tobool526.not, label %if.then521.if.end529_crit_edge, label %if.then527

if.then521.if.end529_crit_edge:                   ; preds = %if.then521
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end529

if.then527:                                       ; preds = %if.then521
  call void @__sanitizer_cov_trace_pc() #10
  %has_signal = getelementptr i8, ptr %1, i32 -524
  %170 = ptrtoint ptr %has_signal to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %has_signal, align 4
  br label %if.end529

if.end529:                                        ; preds = %if.then527, %if.then521.if.end529_crit_edge
  %get_afc = getelementptr i8, ptr %1, i32 -548
  %171 = ptrtoint ptr %get_afc to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %get_afc, align 4
  %tobool530.not = icmp eq ptr %172, null
  br i1 %tobool530.not, label %if.end529.if.end539_crit_edge, label %if.then531

if.end529.if.end539_crit_edge:                    ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end539

if.then531:                                       ; preds = %if.end529
  call void @__sanitizer_cov_trace_pc() #10
  %get_afc533 = getelementptr i8, ptr %1, i32 -520
  %173 = ptrtoint ptr %get_afc533 to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr %172, ptr %get_afc533, align 4
  br label %if.end539

if.else535:                                       ; preds = %land.lhs.true.if.else535_crit_edge, %sw.epilog.if.else535_crit_edge
  %174 = ptrtoint ptr %analog_ops4 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %analog_ops4, align 4
  %name538 = getelementptr i8, ptr %1, i32 244
  %176 = ptrtoint ptr %name538 to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %175, ptr %name538, align 8
  br label %if.end539

if.end539:                                        ; preds = %if.else535, %if.then531, %if.end529.if.end539_crit_edge
  %name540 = getelementptr i8, ptr %1, i32 244
  %177 = ptrtoint ptr %name540 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %name540, align 8
  %name541 = getelementptr i8, ptr %1, i32 16
  %179 = ptrtoint ptr %name541 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %name541, align 4
  %180 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %180)
  %tobool543.not = icmp eq i32 %180, 0
  br i1 %tobool543.not, label %if.end539.do.end559_crit_edge, label %do.end547

if.end539.do.end559_crit_edge:                    ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end559

do.end547:                                        ; preds = %if.end539
  call void @__sanitizer_cov_trace_pc() #10
  %i2c549 = getelementptr i8, ptr %1, i32 -4
  %181 = ptrtoint ptr %i2c549 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %i2c549, align 8
  %adapter550 = getelementptr inbounds %struct.i2c_client, ptr %182, i32 0, i32 3
  %183 = ptrtoint ptr %adapter550 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %adapter550, align 8
  %nr.i758 = getelementptr inbounds %struct.i2c_adapter, ptr %184, i32 0, i32 11
  %185 = ptrtoint ptr %nr.i758 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %nr.i758, align 4
  %addr553 = getelementptr inbounds %struct.i2c_client, ptr %182, i32 0, i32 1
  %187 = ptrtoint ptr %addr553 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %addr553, align 2
  %conv554 = zext i16 %188 to i32
  %call556 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, i32 noundef %186, i32 noundef %conv554, ptr noundef nonnull @.str.81, ptr noundef %178) #12
  br label %do.end559

do.end559:                                        ; preds = %do.end547, %if.end539.do.end559_crit_edge
  %mode_mask560 = getelementptr i8, ptr %1, i32 228
  %189 = ptrtoint ptr %mode_mask560 to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %new_mode_mask, ptr %mode_mask560, align 8
  br i1 %tobool561.not, label %do.end559.do.body569_crit_edge, label %if.then562

do.end559.do.body569_crit_edge:                   ; preds = %do.end559
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body569

if.then562:                                       ; preds = %do.end559
  %mode = getelementptr i8, ptr %1, i32 224
  %190 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %191)
  %cmp563 = icmp eq i32 %191, 1
  br i1 %cmp563, label %if.then565, label %if.else566

if.then565:                                       ; preds = %if.then562
  call void @__sanitizer_cov_trace_pc() #10
  %radio_freq = getelementptr i8, ptr %1, i32 216
  %192 = ptrtoint ptr %radio_freq to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %radio_freq, align 4
  call fastcc void @set_radio_freq(ptr noundef %c, i32 noundef %193)
  br label %do.body569

if.else566:                                       ; preds = %if.then562
  call void @__sanitizer_cov_trace_pc() #10
  %tv_freq = getelementptr i8, ptr %1, i32 212
  %194 = ptrtoint ptr %tv_freq to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %tv_freq, align 8
  call fastcc void @set_tv_freq(ptr noundef %c, i32 noundef %195)
  br label %do.body569

do.body569:                                       ; preds = %if.else566, %if.then565, %do.end559.do.body569_crit_edge
  %196 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool570.not = icmp eq i32 %196, 0
  br i1 %tobool570.not, label %do.body569.cleanup612_crit_edge, label %do.end574

do.body569.cleanup612_crit_edge:                  ; preds = %do.body569
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup612

do.end574:                                        ; preds = %do.body569
  call void @__sanitizer_cov_trace_pc() #10
  %i2c576 = getelementptr i8, ptr %1, i32 -4
  %197 = ptrtoint ptr %i2c576 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %i2c576, align 8
  %adapter577 = getelementptr inbounds %struct.i2c_client, ptr %198, i32 0, i32 3
  %199 = ptrtoint ptr %adapter577 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %adapter577, align 8
  %nr.i759 = getelementptr inbounds %struct.i2c_adapter, ptr %200, i32 0, i32 11
  %201 = ptrtoint ptr %nr.i759 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %nr.i759, align 4
  %addr580 = getelementptr inbounds %struct.i2c_client, ptr %198, i32 0, i32 1
  %203 = ptrtoint ptr %addr580 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %addr580, align 2
  %conv581 = zext i16 %204 to i32
  %adapter582 = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 3
  %205 = ptrtoint ptr %adapter582 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %adapter582, align 8
  %name583 = getelementptr inbounds %struct.i2c_adapter, ptr %206, i32 0, i32 12
  %driver = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 6
  %207 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %driver, align 4
  %209 = ptrtoint ptr %208 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %208, align 4
  %addr586 = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 1
  %211 = ptrtoint ptr %addr586 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %addr586, align 2
  %conv587 = zext i16 %212 to i32
  %shl = shl nuw nsw i32 %conv587, 1
  %213 = ptrtoint ptr %mode_mask560 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %mode_mask560, align 8
  %call589 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %202, i32 noundef %conv581, ptr noundef nonnull @.str.81, ptr noundef %name583, ptr noundef %210, i32 noundef %shl, i32 noundef %type, i32 noundef %214) #12
  br label %cleanup612

do.body593:                                       ; preds = %do.end510, %if.then505, %if.end476.thread, %if.end438.thread, %if.end400.thread, %if.end362.thread, %do.end324, %if.then319, %if.end292.thread, %do.end254, %if.then249, %do.end212, %if.then207, %do.end167, %if.then162, %do.end132, %if.then127, %do.end97, %if.then92, %do.end61, %if.then57
  %215 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %tobool594.not = icmp eq i32 %215, 0
  br i1 %tobool594.not, label %do.body593.do.end610_crit_edge, label %do.end598

do.body593.do.end610_crit_edge:                   ; preds = %do.body593
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end610

do.end598:                                        ; preds = %do.body593
  call void @__sanitizer_cov_trace_pc() #10
  %i2c600 = getelementptr i8, ptr %1, i32 -4
  %216 = ptrtoint ptr %i2c600 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %i2c600, align 8
  %adapter601 = getelementptr inbounds %struct.i2c_client, ptr %217, i32 0, i32 3
  %218 = ptrtoint ptr %adapter601 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %adapter601, align 8
  %nr.i760 = getelementptr inbounds %struct.i2c_adapter, ptr %219, i32 0, i32 11
  %220 = ptrtoint ptr %nr.i760 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %nr.i760, align 4
  %addr604 = getelementptr inbounds %struct.i2c_client, ptr %217, i32 0, i32 1
  %222 = ptrtoint ptr %addr604 to i32
  call void @__asan_load2_noabort(i32 %222)
  %223 = load i16, ptr %addr604, align 2
  %conv605 = zext i16 %223 to i32
  %224 = ptrtoint ptr %type16 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %type16, align 8
  %call607 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %221, i32 noundef %conv605, ptr noundef nonnull @.str.81, i32 noundef %225) #12
  br label %do.end610

do.end610:                                        ; preds = %do.end598, %do.body593.do.end610_crit_edge
  %226 = ptrtoint ptr %type16 to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 4, ptr %type16, align 8
  br label %cleanup612

cleanup612:                                       ; preds = %do.end610, %do.end574, %do.body569.cleanup612_crit_edge, %do.end, %do.body.cleanup612_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buffer) #8
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_log_status(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_status = getelementptr i8, ptr %sd, i32 -516
  %0 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_status, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  tail call void %1(ptr noundef %add.ptr.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_standby(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %0 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end7_crit_edge, label %do.end

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %sd, i32 -4
  %1 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %conv = zext i16 %8 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %6, i32 noundef %conv, ptr noundef nonnull @.str.36) #12
  br label %do.end7

do.end7:                                          ; preds = %do.end, %entry.do.end7_crit_edge
  %standby = getelementptr i8, ptr %sd, i32 232
  %9 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %standby, align 4
  %standby8 = getelementptr i8, ptr %sd, i32 -512
  %10 = ptrtoint ptr %standby8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %standby8, align 4
  %tobool9.not = icmp eq ptr %11, null
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %if.then10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then10:                                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %11(ptr noundef %add.ptr.i) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.end7.if.end13_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_s_radio(ptr noundef %sd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %mode2.i = getelementptr i8, ptr %sd, i32 224
  %0 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 1
  br i1 %cmp.not.i, label %entry.if.then.thread_crit_edge, label %if.then.i

entry.if.then.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.thread

if.then.i:                                        ; preds = %entry
  %mode_mask.i.i = getelementptr i8, ptr %sd, i32 228
  %2 = ptrtoint ptr %mode_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_mask.i.i, align 8
  %and.i.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %do.body.i, label %if.end18.i

do.body.i:                                        ; preds = %if.then.i
  %4 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body.i.do.end11.i_crit_edge, label %do.end.i

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr i8, ptr %sd, i32 -4
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %12 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %10, i32 noundef %conv.i, ptr noundef nonnull @.str.38, i32 noundef 1) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %do.body.i.do.end11.i_crit_edge
  %standby.i = getelementptr i8, ptr %sd, i32 232
  %13 = ptrtoint ptr %standby.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %standby.i, align 4
  %standby12.i = getelementptr i8, ptr %sd, i32 -512
  %14 = ptrtoint ptr %standby12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %standby12.i, align 4
  %tobool13.not.i = icmp eq ptr %15, null
  br i1 %tobool13.not.i, label %do.end11.i.if.end_crit_edge, label %if.then14.i

do.end11.i.if.end_crit_edge:                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef %add.ptr.i) #8
  br label %if.end

if.end18.i:                                       ; preds = %if.then.i
  %16 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %mode2.i, align 4
  %17 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not.i = icmp eq i32 %17, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.then.thread_crit_edge, label %if.then

if.end18.i.if.then.thread_crit_edge:              ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.thread

if.then.thread:                                   ; preds = %if.end18.i.if.then.thread_crit_edge, %entry.if.then.thread_crit_edge
  %dev_priv.i.i6 = getelementptr i8, ptr %sd, i32 152
  %18 = ptrtoint ptr %dev_priv.i.i6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_priv.i.i6, align 4
  br label %if.then.i3

if.then:                                          ; preds = %if.end18.i
  %i2c27.i = getelementptr i8, ptr %sd, i32 -4
  %20 = ptrtoint ptr %i2c27.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c27.i, align 8
  %adapter28.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %adapter28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter28.i, align 8
  %nr.i52.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i52.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i52.i, align 4
  %addr31.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %addr31.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr31.i, align 2
  %conv32.i = zext i16 %27 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %25, i32 noundef %conv32.i, ptr noundef nonnull @.str.38, i32 noundef 1) #12
  %28 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %mode2.i, align 4
  %dev_priv.i.i = getelementptr i8, ptr %sd, i32 152
  %29 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_priv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 1
  br i1 %cmp.i, label %if.then.if.then.i3_crit_edge, label %if.else.i

if.then.if.then.i3_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i3

if.then.i3:                                       ; preds = %if.then.if.then.i3_crit_edge, %if.then.thread
  %31 = phi ptr [ %19, %if.then.thread ], [ %30, %if.then.if.then.i3_crit_edge ]
  %radio_freq.i = getelementptr i8, ptr %sd, i32 216
  %32 = ptrtoint ptr %radio_freq.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %radio_freq.i, align 4
  tail call fastcc void @set_radio_freq(ptr noundef %31, i32 noundef %33) #8
  br label %if.end

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %tv_freq.i = getelementptr i8, ptr %sd, i32 212
  %34 = ptrtoint ptr %tv_freq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tv_freq.i, align 8
  tail call fastcc void @set_tv_freq(ptr noundef %30, i32 noundef %35) #8
  br label %if.end

if.end:                                           ; preds = %if.else.i, %if.then.i3, %if.then14.i, %do.end11.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_s_frequency(ptr noundef %sd, ptr nocapture noundef readonly %f) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %mode2.i = getelementptr i8, ptr %sd, i32 224
  %2 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp eq i32 %3, %1
  br i1 %cmp.not.i, label %entry.if.then_crit_edge, label %if.then.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 1
  %..i.i = select i1 %cmp.i.i, i32 2, i32 4
  %mode_mask.i.i = getelementptr i8, ptr %sd, i32 228
  %4 = ptrtoint ptr %mode_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_mask.i.i, align 8
  %and.i.i = and i32 %5, %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %do.body.i, label %if.end18.i

do.body.i:                                        ; preds = %if.then.i
  %6 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body.i.do.end11.i_crit_edge, label %do.end.i

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr i8, ptr %sd, i32 -4
  %7 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %14 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %12, i32 noundef %conv.i, ptr noundef nonnull @.str.38, i32 noundef %1) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %do.body.i.do.end11.i_crit_edge
  %standby.i = getelementptr i8, ptr %sd, i32 232
  %15 = ptrtoint ptr %standby.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %standby.i, align 4
  %standby12.i = getelementptr i8, ptr %sd, i32 -512
  %16 = ptrtoint ptr %standby12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %standby12.i, align 4
  %tobool13.not.i = icmp eq ptr %17, null
  br i1 %tobool13.not.i, label %do.end11.i.if.end_crit_edge, label %if.then14.i

do.end11.i.if.end_crit_edge:                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %add.ptr.i) #8
  br label %if.end

if.end18.i:                                       ; preds = %if.then.i
  %18 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %1, ptr %mode2.i, align 4
  %19 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not.i = icmp eq i32 %19, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.then_crit_edge, label %do.end25.i

if.end18.i.if.then_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c27.i = getelementptr i8, ptr %sd, i32 -4
  %20 = ptrtoint ptr %i2c27.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c27.i, align 8
  %adapter28.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %adapter28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter28.i, align 8
  %nr.i52.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i52.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i52.i, align 4
  %addr31.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %addr31.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr31.i, align 2
  %conv32.i = zext i16 %27 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %25, i32 noundef %conv32.i, ptr noundef nonnull @.str.38, i32 noundef %1) #12
  %28 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %mode2.i, align 4
  br label %if.then

if.then:                                          ; preds = %do.end25.i, %if.end18.i.if.then_crit_edge, %entry.if.then_crit_edge
  %29 = phi i32 [ %1, %if.end18.i.if.then_crit_edge ], [ %.pr, %do.end25.i ], [ %1, %entry.if.then_crit_edge ]
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %30 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %frequency, align 4
  %dev_priv.i.i = getelementptr i8, ptr %sd, i32 152
  %32 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_priv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i = icmp eq i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i4 = icmp eq i32 %31, 0
  br i1 %cmp.i, label %if.then.i5, label %if.else.i

if.then.i5:                                       ; preds = %if.then
  br i1 %tobool.not.i4, label %if.then1.i, label %if.then.i5.if.end.i_crit_edge

if.then.i5.if.end.i_crit_edge:                    ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i5
  call void @__sanitizer_cov_trace_pc() #10
  %radio_freq.i = getelementptr i8, ptr %sd, i32 216
  %34 = ptrtoint ptr %radio_freq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %radio_freq.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i5.if.end.i_crit_edge
  %freq.addr.0.i = phi i32 [ %31, %if.then.i5.if.end.i_crit_edge ], [ %35, %if.then1.i ]
  tail call fastcc void @set_radio_freq(ptr noundef %33, i32 noundef %freq.addr.0.i) #8
  br label %if.end

if.else.i:                                        ; preds = %if.then
  br i1 %tobool.not.i4, label %if.then3.i, label %if.else.i.if.end4.i_crit_edge

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %tv_freq.i = getelementptr i8, ptr %sd, i32 212
  %36 = ptrtoint ptr %tv_freq.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tv_freq.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.else.i.if.end4.i_crit_edge
  %freq.addr.1.i = phi i32 [ %31, %if.else.i.if.end4.i_crit_edge ], [ %37, %if.then3.i ]
  tail call fastcc void @set_tv_freq(ptr noundef %33, i32 noundef %freq.addr.1.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end4.i, %if.end.i, %if.then14.i, %do.end11.i.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_g_frequency(ptr noundef %sd, ptr nocapture noundef %f) #2 align 64 {
entry:
  %abs_freq = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %type = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  %..i = select i1 %cmp.i, i32 2, i32 4
  %mode_mask.i = getelementptr i8, ptr %sd, i32 228
  %2 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_mask.i, align 8
  %and.i = and i32 %..i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr i8, ptr %sd, i32 224
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp3 = icmp eq i32 %1, %5
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %get_frequency = getelementptr i8, ptr %sd, i32 -568
  %6 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_frequency, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true4

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

land.lhs.true4:                                   ; preds = %land.lhs.true
  %standby = getelementptr i8, ptr %sd, i32 232
  %8 = ptrtoint ptr %standby to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %standby, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool5.not = icmp eq i8 %9, 0
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true4.if.else_crit_edge

land.lhs.true4.if.else_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %abs_freq) #8
  %10 = ptrtoint ptr %abs_freq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %abs_freq, align 4, !annotation !364
  %call9 = call i32 %7(ptr noundef %add.ptr.i, ptr noundef nonnull %abs_freq) #8
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp11 = icmp eq i32 %12, 1
  %13 = ptrtoint ptr %abs_freq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %abs_freq, align 4
  %mul = shl i32 %14, 1
  %add = add i32 %mul, 62
  %div12 = udiv i32 %add, 125
  %add17 = add i32 %14, 31250
  %div18 = udiv i32 %add17, 62500
  %cond = select i1 %cmp11, i32 %div12, i32 %div18
  %frequency = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %15 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %cond, ptr %frequency, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %abs_freq) #8
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true4.if.else_crit_edge, %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %cond24.in.v = select i1 %cmp.i, i32 216, i32 212
  %cond24.in = getelementptr i8, ptr %sd, i32 %cond24.in.v
  %16 = ptrtoint ptr %cond24.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cond24 = load i32, ptr %cond24.in, align 4
  %frequency25 = getelementptr inbounds %struct.v4l2_frequency, ptr %f, i32 0, i32 2
  %17 = ptrtoint ptr %frequency25 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond24, ptr %frequency25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_g_tuner(ptr noundef %sd, ptr noundef %vt) #2 align 64 {
entry:
  %signal = alloca i16, align 2
  %tuner_status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i = icmp eq i32 %1, 1
  %..i = select i1 %cmp.i, i32 2, i32 4
  %mode_mask.i = getelementptr i8, ptr %sd, i32 228
  %2 = ptrtoint ptr %mode_mask.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_mask.i, align 8
  %and.i = and i32 %..i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i = icmp eq i32 %and.i, 0
  br i1 %cmp1.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr i8, ptr %sd, i32 224
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp6 = icmp eq i32 %1, %5
  br i1 %cmp6, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %get_afc = getelementptr i8, ptr %sd, i32 -520
  %6 = ptrtoint ptr %get_afc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get_afc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %land.lhs.true.if.end11_crit_edge, label %if.then7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %afc = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 9
  %call10 = tail call i32 %7(ptr noundef %add.ptr.i, ptr noundef %afc) #8
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %land.lhs.true.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp14 = icmp eq i32 %9, %11
  br i1 %cmp14, label %land.lhs.true15, label %if.end11.if.end27_crit_edge

if.end11.if.end27_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true15:                                  ; preds = %if.end11
  %has_signal = getelementptr i8, ptr %sd, i32 -524
  %12 = ptrtoint ptr %has_signal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %has_signal, align 4
  %tobool16.not = icmp eq ptr %13, null
  br i1 %tobool16.not, label %land.lhs.true15.if.end27thread-pre-split_crit_edge, label %if.then17

land.lhs.true15.if.end27thread-pre-split_crit_edge: ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27thread-pre-split

if.then17:                                        ; preds = %land.lhs.true15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %signal) #8
  %signal18 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 8
  %14 = ptrtoint ptr %signal18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %signal18, align 4
  %conv = trunc i32 %15 to i16
  %16 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %signal, align 2
  %call21 = call i32 %13(ptr noundef %add.ptr.i, ptr noundef nonnull %signal) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.then23, label %if.then17.if.end26_crit_edge

if.then17.if.end26_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %signal, align 2
  %conv24 = zext i16 %18 to i32
  %19 = ptrtoint ptr %signal18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv24, ptr %signal18, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.then17.if.end26_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %signal) #8
  br label %if.end27thread-pre-split

if.end27thread-pre-split:                         ; preds = %if.end26, %land.lhs.true15.if.end27thread-pre-split_crit_edge
  %20 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr = load i32, ptr %type, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27thread-pre-split, %if.end11.if.end27_crit_edge
  %21 = phi i32 [ %.pr, %if.end27thread-pre-split ], [ %9, %if.end11.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp29.not = icmp eq i32 %21, 1
  br i1 %cmp29.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %capability = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %22 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %capability, align 4
  %or = or i32 %23, 2
  store i32 %or, ptr %capability, align 4
  %24 = load i32, ptr @tv_range, align 4
  %mul = shl i32 %24, 4
  %rangelow = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 4
  %25 = ptrtoint ptr %rangelow to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul, ptr %rangelow, align 4
  %26 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @tv_range, i32 0, i32 1), align 4
  %mul32 = shl i32 %26, 4
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end27
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp36 = icmp eq i32 %28, 1
  br i1 %cmp36, label %if.then38, label %if.end33.if.end48_crit_edge

if.end33.if.end48_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then38:                                        ; preds = %if.end33
  %rxsubchans = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 6
  %29 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %rxsubchans, align 4
  %get_status = getelementptr i8, ptr %sd, i32 -556
  %30 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_status, align 4
  %tobool39.not = icmp eq ptr %31, null
  br i1 %tobool39.not, label %if.then38.if.end46_crit_edge, label %if.then40

if.then38.if.end46_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then40:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_status) #8
  %32 = ptrtoint ptr %tuner_status to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %tuner_status, align 4, !annotation !364
  %call43 = call i32 %31(ptr noundef %add.ptr.i, ptr noundef nonnull %tuner_status) #8
  %33 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tuner_status, align 4
  %and = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool44.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool44.not, i32 1, i32 2
  %35 = ptrtoint ptr %rxsubchans to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %rxsubchans, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_status) #8
  br label %if.end46

if.end46:                                         ; preds = %if.then40, %if.then38.if.end46_crit_edge
  %audmode = getelementptr i8, ptr %sd, i32 220
  %36 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %audmode, align 8
  %audmode47 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %38 = ptrtoint ptr %audmode47 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %audmode47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end46, %if.end33.if.end48_crit_edge
  %capability49 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 3
  %39 = ptrtoint ptr %capability49 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %capability49, align 4
  %or50 = or i32 %40, 17
  store i32 %or50, ptr %capability49, align 4
  %41 = load i32, ptr @radio_range, align 4
  %mul51 = mul i32 %41, 16000
  %rangelow52 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 4
  %42 = ptrtoint ptr %rangelow52 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul51, ptr %rangelow52, align 4
  %43 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @radio_range, i32 0, i32 1), align 4
  %mul53 = mul i32 %43, 16000
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end48, %if.then31
  %mul53.sink = phi i32 [ %mul53, %if.end48 ], [ %mul32, %if.then31 ]
  %rangehigh54 = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 5
  %44 = ptrtoint ptr %rangehigh54 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul53.sink, ptr %rangehigh54, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_s_tuner(ptr noundef %sd, ptr nocapture noundef readonly %vt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %type = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  %mode2.i = getelementptr i8, ptr %sd, i32 224
  %2 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp eq i32 %3, %1
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.i.i = icmp eq i32 %1, 1
  %..i.i = select i1 %cmp.i.i, i32 2, i32 4
  %mode_mask.i.i = getelementptr i8, ptr %sd, i32 228
  %4 = ptrtoint ptr %mode_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_mask.i.i, align 8
  %and.i.i = and i32 %5, %..i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %do.body.i, label %if.end18.i

do.body.i:                                        ; preds = %if.then.i
  %6 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %do.body.i.do.end11.i_crit_edge, label %do.end.i

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr i8, ptr %sd, i32 -4
  %7 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %14 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %12, i32 noundef %conv.i, ptr noundef nonnull @.str.38, i32 noundef %1) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %do.body.i.do.end11.i_crit_edge
  %standby.i = getelementptr i8, ptr %sd, i32 232
  %15 = ptrtoint ptr %standby.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %standby.i, align 4
  %standby12.i = getelementptr i8, ptr %sd, i32 -512
  %16 = ptrtoint ptr %standby12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %standby12.i, align 4
  %tobool13.not.i = icmp eq ptr %17, null
  br i1 %tobool13.not.i, label %do.end11.i.cleanup_crit_edge, label %if.then14.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %17(ptr noundef %add.ptr.i) #8
  br label %cleanup

if.end18.i:                                       ; preds = %if.then.i
  %18 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %1, ptr %mode2.i, align 4
  %19 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not.i = icmp eq i32 %19, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end_crit_edge, label %do.end25.i

if.end18.i.if.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c27.i = getelementptr i8, ptr %sd, i32 -4
  %20 = ptrtoint ptr %i2c27.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c27.i, align 8
  %adapter28.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %adapter28.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adapter28.i, align 8
  %nr.i52.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i52.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i52.i, align 4
  %addr31.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %addr31.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %addr31.i, align 2
  %conv32.i = zext i16 %27 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %25, i32 noundef %conv32.i, ptr noundef nonnull @.str.38, i32 noundef %1) #12
  %28 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %mode2.i, align 4
  br label %if.end

if.end:                                           ; preds = %do.end25.i, %if.end18.i.if.end_crit_edge, %entry.if.end_crit_edge
  %29 = phi i32 [ %1, %if.end18.i.if.end_crit_edge ], [ %.pr, %do.end25.i ], [ %1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp = icmp eq i32 %29, 1
  br i1 %cmp, label %if.then.i19, label %if.else.i

if.then.i19:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %audmode = getelementptr inbounds %struct.v4l2_tuner, ptr %vt, i32 0, i32 7
  %30 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %audmode, align 4
  %audmode3 = getelementptr i8, ptr %sd, i32 220
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = ptrtoint ptr %audmode3 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %audmode3, align 8
  %dev_priv.i.i22 = getelementptr i8, ptr %sd, i32 152
  %35 = ptrtoint ptr %dev_priv.i.i22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev_priv.i.i22, align 4
  %radio_freq.i = getelementptr i8, ptr %sd, i32 216
  %37 = ptrtoint ptr %radio_freq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %radio_freq.i, align 4
  tail call fastcc void @set_radio_freq(ptr noundef %36, i32 noundef %38) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev_priv.i.i = getelementptr i8, ptr %sd, i32 152
  %39 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev_priv.i.i, align 4
  %tv_freq.i = getelementptr i8, ptr %sd, i32 212
  %41 = ptrtoint ptr %tv_freq.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tv_freq.i, align 8
  tail call fastcc void @set_tv_freq(ptr noundef %40, i32 noundef %42) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i19, %if.then14.i, %do.end11.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_s_type_addr(ptr nocapture noundef readonly %sd, ptr nocapture noundef readonly %tun_setup) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_priv.i = getelementptr inbounds %struct.v4l2_subdev, ptr %sd, i32 0, i32 11
  %0 = ptrtoint ptr %dev_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_priv.i, align 4
  %2 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %sd, i32 -4
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %conv = zext i16 %10 to i32
  %type = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %13 = ptrtoint ptr %tun_setup to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %tun_setup, align 4
  %conv6 = zext i16 %14 to i32
  %mode_mask = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %15 = ptrtoint ptr %mode_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode_mask, align 4
  %config = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 3
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, i32 noundef %8, i32 noundef %conv, ptr noundef nonnull @.str.64, i32 noundef %12, i32 noundef %conv6, i32 noundef %16, ptr noundef %18) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %type10 = getelementptr i8, ptr %sd, i32 236
  %19 = ptrtoint ptr %type10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type10, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp = icmp eq i32 %20, -1
  br i1 %cmp, label %land.lhs.true, label %do.end9.lor.lhs.false_crit_edge

do.end9.lor.lhs.false_crit_edge:                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %do.end9
  %21 = ptrtoint ptr %tun_setup to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tun_setup, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %22)
  %cmp14 = icmp eq i16 %22, 255
  br i1 %cmp14, label %land.lhs.true16, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

land.lhs.true16:                                  ; preds = %land.lhs.true
  %mode_mask17 = getelementptr i8, ptr %sd, i32 228
  %23 = ptrtoint ptr %mode_mask17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode_mask17, align 8
  %mode_mask18 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %25 = ptrtoint ptr %mode_mask18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode_mask18, align 4
  %and = and i32 %26, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %land.lhs.true16.lor.lhs.false_crit_edge, label %land.lhs.true16.if.then26_crit_edge

land.lhs.true16.if.then26_crit_edge:              ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

land.lhs.true16.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true16.lor.lhs.false_crit_edge, %land.lhs.true.lor.lhs.false_crit_edge, %do.end9.lor.lhs.false_crit_edge
  %27 = ptrtoint ptr %tun_setup to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %tun_setup, align 4
  %addr22 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %addr22 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %addr22, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp24 = icmp eq i16 %28, %30
  br i1 %cmp24, label %lor.lhs.false.if.then26_crit_edge, label %do.body30

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %land.lhs.true16.if.then26_crit_edge
  %type27 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 1
  %31 = ptrtoint ptr %type27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type27, align 4
  %mode_mask28 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %33 = ptrtoint ptr %mode_mask28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode_mask28, align 4
  %config29 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 3
  %35 = ptrtoint ptr %config29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %config29, align 4
  %tuner_callback = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 4
  %37 = ptrtoint ptr %tuner_callback to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tuner_callback, align 4
  tail call fastcc void @set_type(ptr noundef %1, i32 noundef %32, i32 noundef %34, ptr noundef %36, ptr noundef %38)
  br label %if.end52

do.body30:                                        ; preds = %lor.lhs.false
  %39 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool31.not = icmp eq i32 %39, 0
  br i1 %tobool31.not, label %do.body30.if.end52_crit_edge, label %do.end35

do.body30.if.end52_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end52

do.end35:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %i2c37 = getelementptr i8, ptr %sd, i32 -4
  %40 = ptrtoint ptr %i2c37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %i2c37, align 8
  %adapter38 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %adapter38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adapter38, align 8
  %nr.i74 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %nr.i74 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr.i74, align 4
  %addr41 = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 1
  %46 = ptrtoint ptr %addr41 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %addr41, align 2
  %conv42 = zext i16 %47 to i32
  %mode_mask44 = getelementptr i8, ptr %sd, i32 228
  %48 = ptrtoint ptr %mode_mask44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %mode_mask44, align 8
  %conv46 = zext i16 %28 to i32
  %mode_mask47 = getelementptr inbounds %struct.tuner_setup, ptr %tun_setup, i32 0, i32 2
  %50 = ptrtoint ptr %mode_mask47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mode_mask47, align 4
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, i32 noundef %45, i32 noundef %conv42, ptr noundef nonnull @.str.64, i32 noundef %20, i32 noundef %49, i32 noundef %conv46, i32 noundef %51) #12
  br label %if.end52

if.end52:                                         ; preds = %do.end35, %do.body30.if.end52_crit_edge, %if.then26
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_s_config(ptr noundef %sd, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %type = getelementptr i8, ptr %sd, i32 236
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 8
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cfg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp eq i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_config = getelementptr i8, ptr %sd, i32 -500
  %4 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %set_config, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %priv = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %cfg, i32 0, i32 1
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  %call5 = tail call i32 %5(ptr noundef %add.ptr.i, ptr noundef %7) #8
  br label %cleanup

do.body:                                          ; preds = %if.end
  %8 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %sd, i32 -4
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv = zext i16 %16 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %14, i32 noundef %conv, ptr noundef nonnull @.str.69) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %if.then2, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_radio_freq(ptr nocapture noundef readonly %c, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  %params = alloca %struct.analog_parameters, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1044
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #8
  %2 = getelementptr inbounds i8, ptr %params, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %mode3 = getelementptr i8, ptr %1, i32 224
  %4 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode3, align 4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode, align 4
  %audmode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 2
  %audmode4 = getelementptr i8, ptr %1, i32 220
  %7 = ptrtoint ptr %audmode4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %audmode4, align 8
  %9 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %audmode, align 8
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %std5 = getelementptr i8, ptr %1, i32 204
  %10 = ptrtoint ptr %std5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %std5, align 8
  %12 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %std, align 8
  %type = getelementptr i8, ptr %1, i32 236
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %1, i32 -4
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr, align 2
  %conv = zext i16 %22 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %20, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_params = getelementptr i8, ptr %1, i32 -528
  %23 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_params, align 4
  %cmp9 = icmp eq ptr %24, null
  br i1 %cmp9, label %do.end14, label %if.end23

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i2c16 = getelementptr i8, ptr %1, i32 -4
  %25 = ptrtoint ptr %i2c16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c16, align 8
  %adapter17 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %adapter17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter17, align 8
  %nr.i109 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i109 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i109, align 4
  %addr20 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %addr20 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr20, align 2
  %conv21 = zext i16 %32 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %30, i32 noundef %conv21) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %33 = load i32, ptr @radio_range, align 4
  %mul = mul i32 %33, 16000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %freq)
  %cmp24 = icmp ugt i32 %mul, %freq
  br i1 %cmp24, label %if.end23.do.body30_crit_edge, label %lor.lhs.false

if.end23.do.body30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

lor.lhs.false:                                    ; preds = %if.end23
  %34 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @radio_range, i32 0, i32 1), align 4
  %mul26 = mul i32 %34, 16000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26, i32 %freq)
  %cmp27 = icmp ult i32 %mul26, %freq
  br i1 %cmp27, label %lor.lhs.false.do.body30_crit_edge, label %lor.lhs.false.if.end55_crit_edge

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

lor.lhs.false.do.body30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.body30:                                        ; preds = %lor.lhs.false.do.body30_crit_edge, %if.end23.do.body30_crit_edge
  %35 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %do.body30.do.end47_crit_edge, label %do.end34

do.body30.do.end47_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end34:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %i2c36 = getelementptr i8, ptr %1, i32 -4
  %36 = ptrtoint ptr %i2c36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c36, align 8
  %adapter37 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %adapter37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter37, align 8
  %nr.i110 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i110 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i110, align 4
  %addr40 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %addr40 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr40, align 2
  %conv41 = zext i16 %43 to i32
  %div = udiv i32 %freq, 16000
  %44 = mul i32 %div, 16000
  %rem.decomposed = sub i32 %freq, %44
  %div43.lhs.trunc = trunc i32 %rem.decomposed to i16
  %div43113 = udiv i16 %div43.lhs.trunc, 160
  %div43.zext = zext i16 %div43113 to i32
  %45 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @radio_range, i32 0, i32 1), align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %41, i32 noundef %conv41, ptr noundef nonnull @.str.43, i32 noundef %div, i32 noundef %div43.zext, i32 noundef %33, i32 noundef %45) #12
  br label %do.end47

do.end47:                                         ; preds = %do.end34, %do.body30.do.end47_crit_edge
  %46 = load i32, ptr @radio_range, align 4
  %mul48 = mul i32 %46, 16000
  call void @__sanitizer_cov_trace_cmp4(i32 %mul48, i32 %freq)
  %cmp49 = icmp ugt i32 %mul48, %freq
  br i1 %cmp49, label %do.end47.if.end55_crit_edge, label %if.else

do.end47.if.end55_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.else:                                          ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %47 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @radio_range, i32 0, i32 1), align 4
  %mul53 = mul i32 %47, 16000
  br label %if.end55

if.end55:                                         ; preds = %if.else, %do.end47.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  %freq.addr.0 = phi i32 [ %mul53, %if.else ], [ %freq, %lor.lhs.false.if.end55_crit_edge ], [ %mul48, %do.end47.if.end55_crit_edge ]
  %48 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %freq.addr.0, ptr %params, align 8
  %49 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool58.not = icmp eq i32 %49, 0
  br i1 %tobool58.not, label %if.end55.do.end77_crit_edge, label %do.end62

if.end55.do.end77_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %i2c64 = getelementptr i8, ptr %1, i32 -4
  %50 = ptrtoint ptr %i2c64 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %i2c64, align 8
  %adapter65 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %adapter65 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adapter65, align 8
  %nr.i111 = getelementptr inbounds %struct.i2c_adapter, ptr %53, i32 0, i32 11
  %54 = ptrtoint ptr %nr.i111 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr.i111, align 4
  %addr68 = getelementptr inbounds %struct.i2c_client, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %addr68 to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %addr68, align 2
  %conv69 = zext i16 %57 to i32
  %freq.addr.0.frozen = freeze i32 %freq.addr.0
  %div70 = udiv i32 %freq.addr.0.frozen, 16000
  %58 = mul i32 %div70, 16000
  %rem71.decomposed = sub i32 %freq.addr.0.frozen, %58
  %div73.lhs.trunc = trunc i32 %rem71.decomposed to i16
  %div73112 = udiv i16 %div73.lhs.trunc, 160
  %div73.zext = zext i16 %div73112 to i32
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %55, i32 noundef %conv69, ptr noundef nonnull @.str.43, i32 noundef %div70, i32 noundef %div73.zext) #12
  br label %do.end77

do.end77:                                         ; preds = %do.end62, %if.end55.do.end77_crit_edge
  %radio_freq = getelementptr i8, ptr %1, i32 216
  %59 = ptrtoint ptr %radio_freq to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %freq.addr.0, ptr %radio_freq, align 4
  %standby = getelementptr i8, ptr %1, i32 232
  %60 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %standby, align 4
  %61 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %set_params, align 4
  call void %62(ptr noundef %add.ptr.i, ptr noundef nonnull %params) #8
  %63 = ptrtoint ptr %audmode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %audmode, align 8
  %65 = ptrtoint ptr %audmode4 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %audmode4, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @set_tv_freq(ptr nocapture noundef readonly %c, i32 noundef %freq) unnamed_addr #2 align 64 {
entry:
  %params = alloca %struct.analog_parameters, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1044
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %params) #8
  %2 = getelementptr inbounds i8, ptr %params, i32 8
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %mode3 = getelementptr i8, ptr %1, i32 224
  %4 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode3, align 4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %mode, align 4
  %audmode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 2
  %audmode4 = getelementptr i8, ptr %1, i32 220
  %7 = ptrtoint ptr %audmode4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %audmode4, align 8
  %9 = ptrtoint ptr %audmode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %audmode, align 8
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %std5 = getelementptr i8, ptr %1, i32 204
  %10 = ptrtoint ptr %std5 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %std5, align 8
  %12 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %std, align 8
  %type = getelementptr i8, ptr %1, i32 236
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp = icmp eq i32 %14, -1
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %1, i32 -4
  %15 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %addr, align 2
  %conv = zext i16 %22 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %20, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %set_params = getelementptr i8, ptr %1, i32 -528
  %23 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_params, align 4
  %cmp9 = icmp eq ptr %24, null
  br i1 %cmp9, label %do.end14, label %if.end23

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %i2c16 = getelementptr i8, ptr %1, i32 -4
  %25 = ptrtoint ptr %i2c16 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %i2c16, align 8
  %adapter17 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %adapter17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adapter17, align 8
  %nr.i110 = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i110 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i110, align 4
  %addr20 = getelementptr inbounds %struct.i2c_client, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %addr20 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %addr20, align 2
  %conv21 = zext i16 %32 to i32
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %30, i32 noundef %conv21) #12
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %33 = load i32, ptr @tv_range, align 4
  %mul = shl i32 %33, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %freq)
  %cmp24 = icmp ugt i32 %mul, %freq
  br i1 %cmp24, label %if.end23.do.body30_crit_edge, label %lor.lhs.false

if.end23.do.body30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

lor.lhs.false:                                    ; preds = %if.end23
  %34 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @tv_range, i32 0, i32 1), align 4
  %mul26 = shl i32 %34, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul26, i32 %freq)
  %cmp27 = icmp ult i32 %mul26, %freq
  br i1 %cmp27, label %lor.lhs.false.do.body30_crit_edge, label %lor.lhs.false.if.end55_crit_edge

lor.lhs.false.if.end55_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

lor.lhs.false.do.body30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body30

do.body30:                                        ; preds = %lor.lhs.false.do.body30_crit_edge, %if.end23.do.body30_crit_edge
  %35 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %do.body30.do.end47_crit_edge, label %do.end34

do.body30.do.end47_crit_edge:                     ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end47

do.end34:                                         ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  %i2c36 = getelementptr i8, ptr %1, i32 -4
  %36 = ptrtoint ptr %i2c36 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %i2c36, align 8
  %adapter37 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %adapter37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adapter37, align 8
  %nr.i111 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i111 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i111, align 4
  %addr40 = getelementptr inbounds %struct.i2c_client, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %addr40 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %addr40, align 2
  %conv41 = zext i16 %43 to i32
  %div108 = lshr i32 %freq, 4
  %rem = and i32 %freq, 15
  %mul42 = mul nuw nsw i32 %rem, 100
  %div43109 = lshr i32 %mul42, 4
  %44 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @tv_range, i32 0, i32 1), align 4
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %41, i32 noundef %conv41, ptr noundef nonnull @.str.53, i32 noundef %div108, i32 noundef %div43109, i32 noundef %33, i32 noundef %44) #12
  br label %do.end47

do.end47:                                         ; preds = %do.end34, %do.body30.do.end47_crit_edge
  %45 = load i32, ptr @tv_range, align 4
  %mul48 = shl i32 %45, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul48, i32 %freq)
  %cmp49 = icmp ugt i32 %mul48, %freq
  br i1 %cmp49, label %do.end47.if.end55_crit_edge, label %if.else

do.end47.if.end55_crit_edge:                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.else:                                          ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %46 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @tv_range, i32 0, i32 1), align 4
  %mul53 = shl i32 %46, 4
  br label %if.end55

if.end55:                                         ; preds = %if.else, %do.end47.if.end55_crit_edge, %lor.lhs.false.if.end55_crit_edge
  %freq.addr.0 = phi i32 [ %mul53, %if.else ], [ %freq, %lor.lhs.false.if.end55_crit_edge ], [ %mul48, %do.end47.if.end55_crit_edge ]
  %47 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %freq.addr.0, ptr %params, align 8
  %48 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool58.not = icmp eq i32 %48, 0
  br i1 %tobool58.not, label %if.end55.do.end77_crit_edge, label %do.end62

if.end55.do.end77_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end77

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  %i2c64 = getelementptr i8, ptr %1, i32 -4
  %49 = ptrtoint ptr %i2c64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %i2c64, align 8
  %adapter65 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %adapter65 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adapter65, align 8
  %nr.i112 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %nr.i112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr.i112, align 4
  %addr68 = getelementptr inbounds %struct.i2c_client, ptr %50, i32 0, i32 1
  %55 = ptrtoint ptr %addr68 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %addr68, align 2
  %conv69 = zext i16 %56 to i32
  %div70106 = lshr i32 %freq.addr.0, 4
  %rem71 = and i32 %freq.addr.0, 15
  %mul72 = mul nuw nsw i32 %rem71, 100
  %div73107 = lshr i32 %mul72, 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %54, i32 noundef %conv69, ptr noundef nonnull @.str.53, i32 noundef %div70106, i32 noundef %div73107) #12
  br label %do.end77

do.end77:                                         ; preds = %do.end62, %if.end55.do.end77_crit_edge
  %tv_freq = getelementptr i8, ptr %1, i32 212
  %57 = ptrtoint ptr %tv_freq to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %freq.addr.0, ptr %tv_freq, align 8
  %standby = getelementptr i8, ptr %1, i32 232
  %58 = ptrtoint ptr %standby to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %standby, align 4
  %59 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %set_params, align 4
  call void %60(ptr noundef %add.ptr.i, ptr noundef nonnull %params) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %do.end14, %do.end
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %params) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_s_std(ptr noundef %sd, i64 noundef %std) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %sd, i32 -1044
  %mode2.i = getelementptr i8, ptr %sd, i32 224
  %0 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 2
  br i1 %cmp.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %entry
  %mode_mask.i.i = getelementptr i8, ptr %sd, i32 228
  %2 = ptrtoint ptr %mode_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_mask.i.i, align 8
  %and.i.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp1.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp1.i.i, label %do.body.i, label %if.end18.i

do.body.i:                                        ; preds = %if.then.i
  %4 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.body.i.do.end11.i_crit_edge, label %do.end.i

do.body.i.do.end11.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i = getelementptr i8, ptr %sd, i32 -4
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 8
  %adapter.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %adapter.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adapter.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %12 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %10, i32 noundef %conv.i, ptr noundef nonnull @.str.38, i32 noundef 2) #12
  br label %do.end11.i

do.end11.i:                                       ; preds = %do.end.i, %do.body.i.do.end11.i_crit_edge
  %standby.i = getelementptr i8, ptr %sd, i32 232
  %13 = ptrtoint ptr %standby.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %standby.i, align 4
  %standby12.i = getelementptr i8, ptr %sd, i32 -512
  %14 = ptrtoint ptr %standby12.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %standby12.i, align 4
  %tobool13.not.i = icmp eq ptr %15, null
  br i1 %tobool13.not.i, label %do.end11.i.cleanup_crit_edge, label %if.then14.i

do.end11.i.cleanup_crit_edge:                     ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then14.i:                                      ; preds = %do.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %15(ptr noundef %add.ptr.i) #8
  br label %cleanup

if.end18.i:                                       ; preds = %if.then.i
  %16 = ptrtoint ptr %mode2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %mode2.i, align 4
  %17 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool21.not.i = icmp eq i32 %17, 0
  br i1 %tobool21.not.i, label %if.end18.i.if.end_crit_edge, label %do.end25.i

if.end18.i.if.end_crit_edge:                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end25.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c27.i = getelementptr i8, ptr %sd, i32 -4
  %18 = ptrtoint ptr %i2c27.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c27.i, align 8
  %adapter28.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %adapter28.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adapter28.i, align 8
  %nr.i52.i = getelementptr inbounds %struct.i2c_adapter, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %nr.i52.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr.i52.i, align 4
  %addr31.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %addr31.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %addr31.i, align 2
  %conv32.i = zext i16 %25 to i32
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %23, i32 noundef %conv32.i, ptr noundef nonnull @.str.38, i32 noundef 2) #12
  br label %if.end

if.end:                                           ; preds = %do.end25.i, %if.end18.i.if.end_crit_edge, %entry.if.end_crit_edge
  %26 = load i8, ptr @pal, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %26)
  %cmp.not.i26 = icmp ne i8 %26, 45
  %and.i = and i64 %std, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 255, i64 %and.i)
  %cmp2.i = icmp eq i64 %and.i, 255
  %or.cond.i = and i1 %cmp2.i, %cmp.not.i26
  br i1 %or.cond.i, label %if.then.i27, label %if.end.if.end20.i_crit_edge

if.end.if.end20.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i

if.then.i27:                                      ; preds = %if.end
  %27 = zext i8 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.182)
  switch i8 %26, label %do.end.i32 [
    i8 54, label %if.then.i27.tuner_fixup_std.exit_crit_edge
    i8 98, label %if.then.i27.sw.bb5.i_crit_edge
    i8 66, label %if.then.i27.sw.bb5.i_crit_edge40
    i8 103, label %if.then.i27.sw.bb5.i_crit_edge41
    i8 71, label %if.then.i27.sw.bb5.i_crit_edge42
    i8 105, label %if.then.i27.sw.bb6.i_crit_edge
    i8 73, label %if.then.i27.sw.bb6.i_crit_edge43
    i8 100, label %if.then.i27.sw.bb7.i_crit_edge
    i8 68, label %if.then.i27.sw.bb7.i_crit_edge44
    i8 107, label %if.then.i27.sw.bb7.i_crit_edge45
    i8 75, label %if.then.i27.sw.bb7.i_crit_edge46
    i8 77, label %if.then.i27.sw.bb8.i_crit_edge
    i8 109, label %if.then.i27.sw.bb8.i_crit_edge47
    i8 78, label %if.then.i27.sw.bb9.i_crit_edge
    i8 110, label %if.then.i27.sw.bb9.i_crit_edge48
  ]

if.then.i27.sw.bb9.i_crit_edge48:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.then.i27.sw.bb9.i_crit_edge:                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb9.i

if.then.i27.sw.bb8.i_crit_edge47:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i

if.then.i27.sw.bb8.i_crit_edge:                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8.i

if.then.i27.sw.bb7.i_crit_edge46:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.then.i27.sw.bb7.i_crit_edge45:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.then.i27.sw.bb7.i_crit_edge44:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.then.i27.sw.bb7.i_crit_edge:                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb7.i

if.then.i27.sw.bb6.i_crit_edge43:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.then.i27.sw.bb6.i_crit_edge:                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6.i

if.then.i27.sw.bb5.i_crit_edge42:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then.i27.sw.bb5.i_crit_edge41:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then.i27.sw.bb5.i_crit_edge40:                 ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then.i27.sw.bb5.i_crit_edge:                   ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb5.i

if.then.i27.tuner_fixup_std.exit_crit_edge:       ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

sw.bb5.i:                                         ; preds = %if.then.i27.sw.bb5.i_crit_edge, %if.then.i27.sw.bb5.i_crit_edge40, %if.then.i27.sw.bb5.i_crit_edge41, %if.then.i27.sw.bb5.i_crit_edge42
  br label %tuner_fixup_std.exit

sw.bb6.i:                                         ; preds = %if.then.i27.sw.bb6.i_crit_edge, %if.then.i27.sw.bb6.i_crit_edge43
  br label %tuner_fixup_std.exit

sw.bb7.i:                                         ; preds = %if.then.i27.sw.bb7.i_crit_edge, %if.then.i27.sw.bb7.i_crit_edge44, %if.then.i27.sw.bb7.i_crit_edge45, %if.then.i27.sw.bb7.i_crit_edge46
  br label %tuner_fixup_std.exit

sw.bb8.i:                                         ; preds = %if.then.i27.sw.bb8.i_crit_edge, %if.then.i27.sw.bb8.i_crit_edge47
  br label %tuner_fixup_std.exit

sw.bb9.i:                                         ; preds = %if.then.i27.sw.bb9.i_crit_edge, %if.then.i27.sw.bb9.i_crit_edge48
  %28 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @pal, i32 0, i32 1), align 1
  %29 = add i8 %28, -67
  %switch.and.i = and i8 %29, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i)
  %switch.selectcmp.i = icmp eq i8 %switch.and.i, 0
  %30 = select i1 %switch.selectcmp.i, i64 1024, i64 512
  br label %tuner_fixup_std.exit

do.end.i32:                                       ; preds = %if.then.i27
  call void @__sanitizer_cov_trace_pc() #10
  %i2c.i28 = getelementptr i8, ptr %sd, i32 -4
  %31 = ptrtoint ptr %i2c.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %i2c.i28, align 8
  %adapter.i29 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %adapter.i29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adapter.i29, align 8
  %nr.i.i30 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %nr.i.i30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr.i.i30, align 4
  %addr.i31 = getelementptr inbounds %struct.i2c_client, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %addr.i31 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %addr.i31, align 2
  %conv18.i = zext i16 %38 to i32
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %36, i32 noundef %conv18.i) #12
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.end.i32, %if.end.if.end20.i_crit_edge
  %39 = load i8, ptr @secam, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %39)
  %cmp22.not.i = icmp ne i8 %39, 45
  %and25.i = and i64 %std, 16711680
  call void @__sanitizer_cov_trace_const_cmp8(i64 16711680, i64 %and25.i)
  %cmp26.i = icmp eq i64 %and25.i, 16711680
  %or.cond88.i = and i1 %cmp26.i, %cmp22.not.i
  br i1 %or.cond88.i, label %if.then28.i, label %if.end20.i.if.end54.i_crit_edge

if.end20.i.if.end54.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then28.i:                                      ; preds = %if.end20.i
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.183)
  switch i8 %39, label %do.end44.i [
    i8 98, label %if.then28.i.tuner_fixup_std.exit_crit_edge
    i8 66, label %if.then28.i.tuner_fixup_std.exit_crit_edge49
    i8 103, label %if.then28.i.tuner_fixup_std.exit_crit_edge50
    i8 71, label %if.then28.i.tuner_fixup_std.exit_crit_edge51
    i8 104, label %if.then28.i.tuner_fixup_std.exit_crit_edge52
    i8 72, label %if.then28.i.tuner_fixup_std.exit_crit_edge53
    i8 100, label %if.then28.i.sw.bb31.i_crit_edge
    i8 68, label %if.then28.i.sw.bb31.i_crit_edge54
    i8 107, label %if.then28.i.sw.bb31.i_crit_edge55
    i8 75, label %if.then28.i.sw.bb31.i_crit_edge56
    i8 108, label %if.then28.i.sw.bb32.i_crit_edge
    i8 76, label %if.then28.i.sw.bb32.i_crit_edge57
  ]

if.then28.i.sw.bb32.i_crit_edge57:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32.i

if.then28.i.sw.bb32.i_crit_edge:                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb32.i

if.then28.i.sw.bb31.i_crit_edge56:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.then28.i.sw.bb31.i_crit_edge55:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.then28.i.sw.bb31.i_crit_edge54:                ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.then28.i.sw.bb31.i_crit_edge:                  ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb31.i

if.then28.i.tuner_fixup_std.exit_crit_edge53:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

if.then28.i.tuner_fixup_std.exit_crit_edge52:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

if.then28.i.tuner_fixup_std.exit_crit_edge51:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

if.then28.i.tuner_fixup_std.exit_crit_edge50:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

if.then28.i.tuner_fixup_std.exit_crit_edge49:     ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

if.then28.i.tuner_fixup_std.exit_crit_edge:       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

sw.bb31.i:                                        ; preds = %if.then28.i.sw.bb31.i_crit_edge, %if.then28.i.sw.bb31.i_crit_edge54, %if.then28.i.sw.bb31.i_crit_edge55, %if.then28.i.sw.bb31.i_crit_edge56
  br label %tuner_fixup_std.exit

sw.bb32.i:                                        ; preds = %if.then28.i.sw.bb32.i_crit_edge, %if.then28.i.sw.bb32.i_crit_edge57
  %41 = load i8, ptr getelementptr inbounds ([3 x i8], ptr @secam, i32 0, i32 1), align 1
  %42 = add i8 %41, -67
  %switch.and90.i = and i8 %42, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and90.i)
  %switch.selectcmp91.i = icmp eq i8 %switch.and90.i, 0
  %43 = select i1 %switch.selectcmp91.i, i64 8388608, i64 4194304
  br label %tuner_fixup_std.exit

do.end44.i:                                       ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c46.i = getelementptr i8, ptr %sd, i32 -4
  %44 = ptrtoint ptr %i2c46.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c46.i, align 8
  %adapter47.i = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %adapter47.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter47.i, align 8
  %nr.i92.i = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %nr.i92.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr.i92.i, align 4
  %addr50.i = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %addr50.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr50.i, align 2
  %conv51.i = zext i16 %51 to i32
  %call52.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75, i32 noundef %49, i32 noundef %conv51.i) #12
  br label %if.end54.i

if.end54.i:                                       ; preds = %do.end44.i, %if.end20.i.if.end54.i_crit_edge
  %52 = load i8, ptr @ntsc, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 45, i8 %52)
  %cmp56.not.i = icmp ne i8 %52, 45
  %and59.i = and i64 %std, 45056
  call void @__sanitizer_cov_trace_const_cmp8(i64 45056, i64 %and59.i)
  %cmp60.i = icmp eq i64 %and59.i, 45056
  %or.cond89.i = and i1 %cmp60.i, %cmp56.not.i
  br i1 %or.cond89.i, label %if.then62.i, label %if.end54.i.tuner_fixup_std.exit.thread_crit_edge

if.end54.i.tuner_fixup_std.exit.thread_crit_edge: ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit.thread

if.then62.i:                                      ; preds = %if.end54.i
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.184)
  switch i8 %52, label %do.end69.i [
    i8 109, label %if.then62.i.tuner_fixup_std.exit_crit_edge
    i8 77, label %if.then62.i.tuner_fixup_std.exit_crit_edge58
    i8 106, label %if.then62.i.sw.bb65.i_crit_edge
    i8 74, label %if.then62.i.sw.bb65.i_crit_edge59
    i8 107, label %if.then62.i.sw.bb66.i_crit_edge
    i8 75, label %if.then62.i.sw.bb66.i_crit_edge60
  ]

if.then62.i.sw.bb66.i_crit_edge60:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66.i

if.then62.i.sw.bb66.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb66.i

if.then62.i.sw.bb65.i_crit_edge59:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb65.i

if.then62.i.sw.bb65.i_crit_edge:                  ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb65.i

if.then62.i.tuner_fixup_std.exit_crit_edge58:     ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

if.then62.i.tuner_fixup_std.exit_crit_edge:       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tuner_fixup_std.exit

sw.bb65.i:                                        ; preds = %if.then62.i.sw.bb65.i_crit_edge, %if.then62.i.sw.bb65.i_crit_edge59
  br label %tuner_fixup_std.exit

sw.bb66.i:                                        ; preds = %if.then62.i.sw.bb66.i_crit_edge, %if.then62.i.sw.bb66.i_crit_edge60
  br label %tuner_fixup_std.exit

do.end69.i:                                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #10
  %i2c71.i = getelementptr i8, ptr %sd, i32 -4
  %54 = ptrtoint ptr %i2c71.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c71.i, align 8
  %adapter72.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %adapter72.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter72.i, align 8
  %nr.i93.i = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %nr.i93.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr.i93.i, align 4
  %addr75.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %addr75.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr75.i, align 2
  %conv76.i = zext i16 %61 to i32
  %call77.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %59, i32 noundef %conv76.i) #12
  br label %tuner_fixup_std.exit.thread

tuner_fixup_std.exit.thread:                      ; preds = %do.end69.i, %if.end54.i.tuner_fixup_std.exit.thread_crit_edge
  %std338 = getelementptr i8, ptr %sd, i32 204
  %62 = ptrtoint ptr %std338 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %std, ptr %std338, align 8
  br label %if.end16

tuner_fixup_std.exit:                             ; preds = %sw.bb66.i, %sw.bb65.i, %if.then62.i.tuner_fixup_std.exit_crit_edge, %if.then62.i.tuner_fixup_std.exit_crit_edge58, %sw.bb32.i, %sw.bb31.i, %if.then28.i.tuner_fixup_std.exit_crit_edge, %if.then28.i.tuner_fixup_std.exit_crit_edge49, %if.then28.i.tuner_fixup_std.exit_crit_edge50, %if.then28.i.tuner_fixup_std.exit_crit_edge51, %if.then28.i.tuner_fixup_std.exit_crit_edge52, %if.then28.i.tuner_fixup_std.exit_crit_edge53, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %if.then.i27.tuner_fixup_std.exit_crit_edge
  %retval.0.i33 = phi i64 [ 32768, %sw.bb66.i ], [ 8192, %sw.bb65.i ], [ 3276800, %sw.bb31.i ], [ 256, %sw.bb8.i ], [ 224, %sw.bb7.i ], [ 16, %sw.bb6.i ], [ 7, %sw.bb5.i ], [ 2048, %if.then.i27.tuner_fixup_std.exit_crit_edge ], [ 851968, %if.then28.i.tuner_fixup_std.exit_crit_edge ], [ 851968, %if.then28.i.tuner_fixup_std.exit_crit_edge49 ], [ 851968, %if.then28.i.tuner_fixup_std.exit_crit_edge50 ], [ 851968, %if.then28.i.tuner_fixup_std.exit_crit_edge51 ], [ 851968, %if.then28.i.tuner_fixup_std.exit_crit_edge52 ], [ 851968, %if.then28.i.tuner_fixup_std.exit_crit_edge53 ], [ 4096, %if.then62.i.tuner_fixup_std.exit_crit_edge ], [ 4096, %if.then62.i.tuner_fixup_std.exit_crit_edge58 ], [ %30, %sw.bb9.i ], [ %43, %sw.bb32.i ]
  %std3 = getelementptr i8, ptr %sd, i32 204
  %63 = ptrtoint ptr %std3 to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %retval.0.i33, ptr %std3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i33, i64 %std)
  %cmp.not = icmp eq i64 %retval.0.i33, %std
  br i1 %cmp.not, label %tuner_fixup_std.exit.if.end16_crit_edge, label %do.body

tuner_fixup_std.exit.if.end16_crit_edge:          ; preds = %tuner_fixup_std.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.body:                                          ; preds = %tuner_fixup_std.exit
  %64 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool6.not = icmp eq i32 %64, 0
  br i1 %tobool6.not, label %do.body.if.end16_crit_edge, label %do.end

do.body.if.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %sd, i32 -4
  %65 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %addr, align 2
  %conv = zext i16 %72 to i32
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, i32 noundef %70, i32 noundef %conv, ptr noundef nonnull @.str.71, i64 noundef %std, i64 noundef %retval.0.i33) #12
  br label %if.end16

if.end16:                                         ; preds = %do.end, %do.body.if.end16_crit_edge, %tuner_fixup_std.exit.if.end16_crit_edge, %tuner_fixup_std.exit.thread
  %dev_priv.i.i = getelementptr i8, ptr %sd, i32 152
  %73 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_priv.i.i, align 4
  %75 = ptrtoint ptr %mode2.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mode2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %76)
  %cmp.i = icmp eq i32 %76, 1
  br i1 %cmp.i, label %if.then.i34, label %if.else.i

if.then.i34:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %radio_freq.i = getelementptr i8, ptr %sd, i32 216
  %77 = ptrtoint ptr %radio_freq.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %radio_freq.i, align 4
  tail call fastcc void @set_radio_freq(ptr noundef %74, i32 noundef %78) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %tv_freq.i = getelementptr i8, ptr %sd, i32 212
  %79 = ptrtoint ptr %tv_freq.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tv_freq.i, align 8
  tail call fastcc void @set_tv_freq(ptr noundef %74, i32 noundef %80) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i34, %if.then14.i, %do.end11.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @symbol_put_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fe_set_params(ptr noundef %fe, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_analog_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 7
  %0 = ptrtoint ptr %set_analog_params to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_analog_params, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %2 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %analog_demod_priv, align 4
  %i2c = getelementptr inbounds %struct.tuner, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %conv = zext i16 %11 to i32
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151, i32 noundef %9, i32 noundef %conv) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 %1(ptr noundef %fe, ptr noundef %params) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tuner_status(ptr noundef %fe) #2 align 64 {
entry:
  %tuner_status = alloca i32, align 4
  %signal = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %0 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %analog_demod_priv, align 4
  %mode = getelementptr inbounds %struct.tuner, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %switch.selectcmp = icmp eq i32 %3, 3
  %switch.select = select i1 %switch.selectcmp, ptr @.str.154, ptr @.str.155
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %switch.selectcmp132 = icmp eq i32 %3, 1
  %switch.select133 = select i1 %switch.selectcmp132, ptr @.str.153, ptr %switch.select
  br i1 %switch.selectcmp132, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %radio_freq = getelementptr inbounds %struct.tuner, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %radio_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %radio_freq, align 4
  %.frozen = freeze i32 %5
  %div = udiv i32 %.frozen, 16000
  %6 = mul i32 %div, 16000
  %rem.decomposed = sub i32 %.frozen, %6
  %div7.lhs.trunc = trunc i32 %rem.decomposed to i16
  %div7139 = udiv i16 %div7.lhs.trunc, 160
  %div7.zext = zext i16 %div7139 to i32
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tv_freq = getelementptr inbounds %struct.tuner, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %tv_freq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_freq, align 8
  %div8130 = lshr i32 %8, 4
  %rem10 = and i32 %8, 15
  %mul11 = mul nuw nsw i32 %rem10, 100
  %div12131 = lshr i32 %mul11, 4
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %freq_fraction.0 = phi i32 [ %div7.zext, %if.then ], [ %div12131, %if.else ]
  %freq.0 = phi i32 [ %div, %if.then ], [ %div8130, %if.else ]
  %i2c = getelementptr inbounds %struct.tuner, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv = zext i16 %16 to i32
  %standby = getelementptr inbounds %struct.tuner, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %standby to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %standby, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  %cond = select i1 %tobool.not, ptr @.str.33, ptr @.str.158
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, i32 noundef %14, i32 noundef %conv, ptr noundef nonnull %switch.select133, ptr noundef nonnull %cond) #12
  %19 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %i2c, align 8
  %adapter21 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %adapter21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adapter21, align 8
  %nr.i134 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %23 = ptrtoint ptr %nr.i134 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr.i134, align 4
  %addr24 = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %addr24 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %addr24, align 2
  %conv25 = zext i16 %26 to i32
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160, i32 noundef %24, i32 noundef %conv25, i32 noundef %freq.0, i32 noundef %freq_fraction.0) #12
  %27 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %i2c, align 8
  %adapter32 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %adapter32 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter32, align 8
  %nr.i135 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %nr.i135 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nr.i135, align 4
  %addr35 = getelementptr inbounds %struct.i2c_client, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %addr35 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %addr35, align 2
  %conv36 = zext i16 %34 to i32
  %std = getelementptr inbounds %struct.tuner, ptr %1, i32 0, i32 4
  %35 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %std, align 8
  %conv37 = trunc i64 %36 to i32
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, i32 noundef %32, i32 noundef %conv36, i32 noundef %conv37) #12
  %37 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp40.not = icmp eq i32 %38, 1
  br i1 %cmp40.not, label %if.end43, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end43:                                         ; preds = %do.end
  %get_status = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 12
  %39 = ptrtoint ptr %get_status to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_status, align 4
  %tobool44.not = icmp eq ptr %40, null
  br i1 %tobool44.not, label %if.end43.if.end78_crit_edge, label %if.then45

if.end43.if.end78_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then45:                                        ; preds = %if.end43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tuner_status) #8
  %41 = ptrtoint ptr %tuner_status to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %tuner_status, align 4, !annotation !364
  %call48 = call i32 %40(ptr noundef %1, ptr noundef nonnull %tuner_status) #8
  %42 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tuner_status, align 4
  %and = and i32 %43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.then45.if.end62_crit_edge, label %do.end53

if.then45.if.end62_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

do.end53:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c, align 8
  %adapter56 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %adapter56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %adapter56, align 8
  %nr.i136 = getelementptr inbounds %struct.i2c_adapter, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %nr.i136 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr.i136, align 4
  %addr59 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %addr59 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %addr59, align 2
  %conv60 = zext i16 %51 to i32
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166, i32 noundef %49, i32 noundef %conv60) #12
  br label %if.end62

if.end62:                                         ; preds = %do.end53, %if.then45.if.end62_crit_edge
  %52 = ptrtoint ptr %tuner_status to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tuner_status, align 4
  %and63 = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end62.if.end77_crit_edge, label %do.end68

if.end62.if.end77_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %i2c, align 8
  %adapter71 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %adapter71 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %adapter71, align 8
  %nr.i137 = getelementptr inbounds %struct.i2c_adapter, ptr %57, i32 0, i32 11
  %58 = ptrtoint ptr %nr.i137 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr.i137, align 4
  %addr74 = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %addr74 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %addr74, align 2
  %conv75 = zext i16 %61 to i32
  %call76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169, i32 noundef %59, i32 noundef %conv75) #12
  br label %if.end77

if.end77:                                         ; preds = %do.end68, %if.end62.if.end77_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tuner_status) #8
  br label %if.end78

if.end78:                                         ; preds = %if.end77, %if.end43.if.end78_crit_edge
  %has_signal = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 33, i32 2
  %62 = ptrtoint ptr %has_signal to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %has_signal, align 4
  %tobool79.not = icmp eq ptr %63, null
  br i1 %tobool79.not, label %if.end78.cleanup_crit_edge, label %if.then80

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then80:                                        ; preds = %if.end78
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %signal) #8
  %64 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %signal, align 2, !annotation !364
  %call82 = call i32 %63(ptr noundef %fe, ptr noundef nonnull %signal) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.end87, label %if.then80.if.end97_crit_edge

if.then80.if.end97_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

do.end87:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c, align 8
  %adapter90 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 3
  %67 = ptrtoint ptr %adapter90 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adapter90, align 8
  %nr.i138 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %nr.i138 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr.i138, align 4
  %addr93 = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %addr93 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %addr93, align 2
  %conv94 = zext i16 %72 to i32
  %73 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %signal, align 2
  %conv95 = zext i16 %74 to i32
  %call96 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %70, i32 noundef %conv94, i32 noundef %conv95) #12
  br label %if.end97

if.end97:                                         ; preds = %do.end87, %if.then80.if.end97_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %signal) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %if.end78.cleanup_crit_edge, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fe_standby(ptr noundef %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sleep = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 3
  %0 = ptrtoint ptr %sleep to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sleep, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %1(ptr noundef %fe) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fe_set_config(ptr noundef %fe, ptr noundef %priv_cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %set_config = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 8
  %0 = ptrtoint ptr %set_config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_config, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 %1(ptr noundef %fe, ptr noundef %priv_cfg) #8
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %analog_demod_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 7
  %2 = ptrtoint ptr %analog_demod_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %analog_demod_priv, align 4
  %i2c = getelementptr inbounds %struct.tuner, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %addr, align 2
  %conv = zext i16 %11 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, i32 noundef %9, i32 noundef %conv) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister_subdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1044
  %2 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %conv = zext i16 %10 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.176, i32 noundef %8, i32 noundef %conv, ptr noundef nonnull @.str.177) #12
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %suspend = getelementptr i8, ptr %1, i32 -588
  %11 = ptrtoint ptr %suspend to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %suspend, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = tail call i32 %12(ptr noundef %add.ptr.i) #8
  br label %if.end27

if.else:                                          ; preds = %do.end9
  %standby = getelementptr i8, ptr %1, i32 232
  %13 = ptrtoint ptr %standby to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %standby, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool20.not = icmp eq i8 %14, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %if.else
  %standby21 = getelementptr i8, ptr %1, i32 -512
  %15 = ptrtoint ptr %standby21 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %standby21, align 4
  %tobool22.not = icmp eq ptr %16, null
  br i1 %tobool22.not, label %land.lhs.true.if.end27_crit_edge, label %if.then23

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %16(ptr noundef %add.ptr.i) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %land.lhs.true.if.end27_crit_edge, %if.else.if.end27_crit_edge, %if.then13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tuner_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -1044
  %2 = load i32, ptr @tuner_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %i2c = getelementptr i8, ptr %1, i32 -4
  %3 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %conv = zext i16 %10 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178, i32 noundef %8, i32 noundef %conv, ptr noundef nonnull @.str.179) #12
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %resume = getelementptr i8, ptr %1, i32 -584
  %11 = ptrtoint ptr %resume to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %resume, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call16 = tail call i32 %12(ptr noundef %add.ptr.i) #8
  br label %if.end24

if.else:                                          ; preds = %do.end8
  %standby = getelementptr i8, ptr %1, i32 232
  %13 = ptrtoint ptr %standby to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %standby, align 4, !range !365
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool17.not = icmp eq i8 %14, 0
  br i1 %tobool17.not, label %if.then21, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then21:                                        ; preds = %if.else
  %mode = getelementptr i8, ptr %1, i32 224
  %dev_priv.i.i = getelementptr i8, ptr %1, i32 152
  %15 = ptrtoint ptr %dev_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_priv.i.i, align 4
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i = icmp eq i32 %18, 1
  br i1 %cmp.i, label %if.then.i33, label %if.else.i

if.then.i33:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %radio_freq.i = getelementptr i8, ptr %1, i32 216
  %19 = ptrtoint ptr %radio_freq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %radio_freq.i, align 4
  tail call fastcc void @set_radio_freq(ptr noundef %16, i32 noundef %20) #8
  br label %if.end24

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %tv_freq.i = getelementptr i8, ptr %1, i32 212
  %21 = ptrtoint ptr %tv_freq.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tv_freq.i, align 8
  tail call fastcc void @set_tv_freq(ptr noundef %16, i32 noundef %22) #8
  br label %if.end24

if.end24:                                         ; preds = %if.else.i, %if.then.i33, %if.else.if.end24_crit_edge, %if.then10
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 173)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !75, !77, !78, !79, !80, !81, !83, !84, !85, !86, !87, !89, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !117, !118, !120, !122, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !176, !178, !179, !180, !182, !183, !184, !185, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !219, !220, !222, !223, !224, !225, !226, !228, !229, !230, !231, !232, !234, !235, !236, !237, !238, !240, !241, !242, !243, !244, !246, !247, !249, !250, !251, !252, !253, !255, !256, !257, !258, !259, !261, !262, !263, !264, !265, !267, !268, !270, !271, !272, !273, !274, !276, !277, !278, !279, !280, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !299, !300, !301, !302, !304, !306, !308, !310, !311, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !332, !333, !334, !336, !337, !338, !339, !341, !343, !345, !346, !347, !348, !350, !351, !352, !353}
!llvm.module.flags = !{!355, !356, !357, !358, !359, !360, !361, !362}
!llvm.ident = !{!363}

!0 = !{ptr @__param_addr, !1, !"__param_addr", i1 false, i1 false}
!1 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 56, i32 1}
!2 = !{ptr @__UNIQUE_ID_addrtype292, !1, !"__UNIQUE_ID_addrtype292", i1 false, i1 false}
!3 = !{ptr @__param_no_autodetect, !4, !"__param_no_autodetect", i1 false, i1 false}
!4 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 57, i32 1}
!5 = !{ptr @__UNIQUE_ID_no_autodetecttype293, !4, !"__UNIQUE_ID_no_autodetecttype293", i1 false, i1 false}
!6 = !{ptr @__param_show_i2c, !7, !"__param_show_i2c", i1 false, i1 false}
!7 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 58, i32 1}
!8 = !{ptr @__UNIQUE_ID_show_i2ctype294, !7, !"__UNIQUE_ID_show_i2ctype294", i1 false, i1 false}
!9 = !{ptr @__param_debug, !10, !"__param_debug", i1 false, i1 false}
!10 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 68, i32 1}
!11 = !{ptr @__UNIQUE_ID_debugtype295, !10, !"__UNIQUE_ID_debugtype295", i1 false, i1 false}
!12 = !{ptr @__param_tv_range, !13, !"__param_tv_range", i1 false, i1 false}
!13 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 69, i32 1}
!14 = !{ptr @__UNIQUE_ID_tv_rangetype296, !13, !"__UNIQUE_ID_tv_rangetype296", i1 false, i1 false}
!15 = !{ptr @__param_radio_range, !16, !"__param_radio_range", i1 false, i1 false}
!16 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 70, i32 1}
!17 = !{ptr @__UNIQUE_ID_radio_rangetype297, !16, !"__UNIQUE_ID_radio_rangetype297", i1 false, i1 false}
!18 = !{ptr @__param_pal, !19, !"__param_pal", i1 false, i1 false}
!19 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 71, i32 1}
!20 = !{ptr @__UNIQUE_ID_paltype298, !19, !"__UNIQUE_ID_paltype298", i1 false, i1 false}
!21 = !{ptr @__param_secam, !22, !"__param_secam", i1 false, i1 false}
!22 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 72, i32 1}
!23 = !{ptr @__UNIQUE_ID_secamtype299, !22, !"__UNIQUE_ID_secamtype299", i1 false, i1 false}
!24 = !{ptr @__param_ntsc, !25, !"__param_ntsc", i1 false, i1 false}
!25 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 73, i32 1}
!26 = !{ptr @__UNIQUE_ID_ntsctype300, !25, !"__UNIQUE_ID_ntsctype300", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_tuner__301_1423_tuner_driver_init6, !28, !"__initcall__kmod_tuner__301_1423_tuner_driver_init6", i1 false, i1 false}
!28 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1423, i32 1}
!29 = !{ptr @__exitcall_tuner_driver_exit, !28, !"__exitcall_tuner_driver_exit", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_description302, !31, !"__UNIQUE_ID_description302", i1 false, i1 false}
!31 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1425, i32 1}
!32 = !{ptr @__UNIQUE_ID_author303, !33, !"__UNIQUE_ID_author303", i1 false, i1 false}
!33 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1426, i32 1}
!34 = !{ptr @__UNIQUE_ID_file304, !35, !"__UNIQUE_ID_file304", i1 false, i1 false}
!35 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1427, i32 1}
!36 = !{ptr @__UNIQUE_ID_license305, !35, !"__UNIQUE_ID_license305", i1 false, i1 false}
!37 = !{ptr @addr, !38, !"addr", i1 false, i1 false}
!38 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 52, i32 21}
!39 = !{ptr @no_autodetect, !40, !"no_autodetect", i1 false, i1 false}
!40 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 53, i32 21}
!41 = !{ptr @show_i2c, !42, !"show_i2c", i1 false, i1 false}
!42 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 54, i32 21}
!43 = !{ptr @tuner_debug, !44, !"tuner_debug", i1 false, i1 false}
!44 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 61, i32 12}
!45 = !{ptr @__param_str_addr, !1, !"__param_str_addr", i1 false, i1 false}
!46 = !{ptr @__param_str_no_autodetect, !4, !"__param_str_no_autodetect", i1 false, i1 false}
!47 = !{ptr @__param_str_show_i2c, !7, !"__param_str_show_i2c", i1 false, i1 false}
!48 = !{ptr @__param_str_debug, !10, !"__param_str_debug", i1 false, i1 false}
!49 = !{ptr @__param_str_tv_range, !13, !"__param_str_tv_range", i1 false, i1 false}
!50 = !{ptr @__param_arr_tv_range, !13, !"__param_arr_tv_range", i1 false, i1 false}
!51 = !{ptr @tv_range, !52, !"tv_range", i1 false, i1 false}
!52 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 62, i32 21}
!53 = !{ptr @__param_str_radio_range, !16, !"__param_str_radio_range", i1 false, i1 false}
!54 = !{ptr @__param_arr_radio_range, !16, !"__param_arr_radio_range", i1 false, i1 false}
!55 = !{ptr @radio_range, !56, !"radio_range", i1 false, i1 false}
!56 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 63, i32 21}
!57 = !{ptr @__param_str_pal, !19, !"__param_str_pal", i1 false, i1 false}
!58 = !{ptr @__param_string_pal, !19, !"__param_string_pal", i1 false, i1 false}
!59 = !{ptr @pal, !60, !"pal", i1 false, i1 false}
!60 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 64, i32 13}
!61 = !{ptr @__param_str_secam, !22, !"__param_str_secam", i1 false, i1 false}
!62 = !{ptr @__param_string_secam, !22, !"__param_string_secam", i1 false, i1 false}
!63 = !{ptr @secam, !64, !"secam", i1 false, i1 false}
!64 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 65, i32 13}
!65 = !{ptr @__param_str_ntsc, !25, !"__param_str_ntsc", i1 false, i1 false}
!66 = !{ptr @__param_string_ntsc, !25, !"__param_string_ntsc", i1 false, i1 false}
!67 = !{ptr @ntsc, !68, !"ntsc", i1 false, i1 false}
!68 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 66, i32 13}
!69 = !{ptr @.str, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1414, i32 11}
!71 = !{ptr @tuner_driver, !72, !"tuner_driver", i1 false, i1 false}
!72 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1412, i32 26}
!73 = !{ptr @.str.1, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 643, i32 12}
!75 = !{ptr @.str.2, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 657, i32 4}
!77 = !{ptr @.str.3, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.4, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tuner_probe._entry, !76, !"_entry", i1 false, i1 false}
!80 = !{ptr @tuner_probe._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.5, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 664, i32 8}
!83 = !{ptr @.str.6, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.8, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tuner_probe._entry.7, !82, !"_entry", i1 false, i1 false}
!86 = !{ptr @tuner_probe._entry_ptr.9, !82, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.10, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 683, i32 8}
!89 = !{ptr @.str.11, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tuner_probe._entry.12, !88, !"_entry", i1 false, i1 false}
!92 = !{ptr @tuner_probe._entry_ptr.14, !88, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.16, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 685, i32 5}
!95 = !{ptr @tuner_probe._entry.15, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @tuner_probe._entry_ptr.17, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.18, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 694, i32 8}
!99 = !{ptr @.str.19, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @tuner_probe._entry.20, !98, !"_entry", i1 false, i1 false}
!102 = !{ptr @tuner_probe._entry_ptr.22, !98, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 722, i32 3}
!105 = !{ptr @tuner_probe._entry.23, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @tuner_probe._entry_ptr.25, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 756, i32 3}
!109 = !{ptr @tuner_probe._entry.26, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @tuner_probe._entry_ptr.28, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 769, i32 2}
!113 = !{ptr @tuner_probe._entry.29, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tuner_probe._entry_ptr.31, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.33, !112, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @tuner_ops, !119, !"tuner_ops", i1 false, i1 false}
!119 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1392, i32 37}
!120 = !{ptr @tuner_core_ops, !121, !"tuner_core_ops", i1 false, i1 false}
!121 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1373, i32 42}
!122 = !{ptr @tuner_tuner_ops, !123, !"tuner_tuner_ops", i1 false, i1 false}
!123 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1377, i32 43}
!124 = !{ptr @.str.35, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1163, i32 2}
!126 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @tuner_standby._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @tuner_standby._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.37, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 848, i32 4}
!131 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @set_mode._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @set_mode._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.40, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 856, i32 3}
!136 = !{ptr @set_mode._entry.39, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @set_mode._entry_ptr.41, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1044, i32 3}
!140 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @set_radio_freq._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @set_radio_freq._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1048, i32 3}
!145 = !{ptr @set_radio_freq._entry.44, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @set_radio_freq._entry_ptr.46, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1052, i32 3}
!149 = !{ptr @set_radio_freq._entry.47, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @set_radio_freq._entry_ptr.49, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.51, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1063, i32 2}
!153 = !{ptr @set_radio_freq._entry.50, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @set_radio_freq._entry_ptr.52, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.53, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 903, i32 3}
!157 = !{ptr @set_tv_freq._entry, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @set_tv_freq._entry_ptr, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.55, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 907, i32 3}
!161 = !{ptr @set_tv_freq._entry.54, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @set_tv_freq._entry_ptr.56, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.58, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 911, i32 3}
!165 = !{ptr @set_tv_freq._entry.57, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @set_tv_freq._entry_ptr.59, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.61, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 922, i32 2}
!169 = !{ptr @set_tv_freq._entry.60, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @set_tv_freq._entry_ptr.62, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.63, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 526, i32 2}
!173 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @tuner_s_type_addr._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @tuner_s_type_addr._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.66, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 538, i32 3}
!178 = !{ptr @tuner_s_type_addr._entry.65, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @tuner_s_type_addr._entry_ptr.67, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.68, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 568, i32 2}
!182 = !{ptr @.str.69, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @tuner_s_config._entry, !181, !"_entry", i1 false, i1 false}
!184 = !{ptr @tuner_s_config._entry_ptr, !181, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @tuner_video_ops, !186, !"tuner_video_ops", i1 false, i1 false}
!186 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1388, i32 43}
!187 = !{ptr @.str.70, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1179, i32 3}
!189 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @tuner_s_std._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @tuner_s_std._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.72, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 972, i32 4}
!194 = !{ptr @.str.73, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @tuner_fixup_std._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @tuner_fixup_std._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.75, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 998, i32 4}
!199 = !{ptr @tuner_fixup_std._entry.74, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @tuner_fixup_std._entry_ptr.76, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1015, i32 4}
!203 = !{ptr @tuner_fixup_std._entry.77, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @tuner_fixup_std._entry_ptr.79, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 308, i32 3}
!207 = !{ptr @.str.81, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @set_type._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @set_type._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.83, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 315, i32 3}
!212 = !{ptr @set_type._entry.82, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @set_type._entry_ptr.84, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.85, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 325, i32 8}
!216 = !{ptr @.str.86, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.88, !215, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @set_type._entry.87, !215, !"_entry", i1 false, i1 false}
!219 = !{ptr @set_type._entry_ptr.89, !215, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.90, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 331, i32 8}
!222 = !{ptr @.str.91, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.93, !221, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @set_type._entry.92, !221, !"_entry", i1 false, i1 false}
!225 = !{ptr @set_type._entry_ptr.94, !221, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 337, i32 8}
!228 = !{ptr @.str.96, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.98, !227, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @set_type._entry.97, !227, !"_entry", i1 false, i1 false}
!231 = !{ptr @set_type._entry_ptr.99, !227, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.100, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 343, i32 8}
!234 = !{ptr @.str.101, !233, !"<string literal>", i1 false, i1 false}
!235 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @set_type._entry.102, !233, !"_entry", i1 false, i1 false}
!237 = !{ptr @set_type._entry_ptr.104, !233, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.105, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 359, i32 8}
!240 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @set_type._entry.107, !239, !"_entry", i1 false, i1 false}
!243 = !{ptr @set_type._entry_ptr.109, !239, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @set_type._entry.110, !245, !"_entry", i1 false, i1 false}
!245 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 369, i32 8}
!246 = !{ptr @set_type._entry_ptr.111, !245, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.112, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 379, i32 8}
!249 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @set_type._entry.114, !248, !"_entry", i1 false, i1 false}
!252 = !{ptr @set_type._entry_ptr.116, !248, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.117, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 385, i32 8}
!255 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @.str.120, !254, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @set_type._entry.119, !254, !"_entry", i1 false, i1 false}
!258 = !{ptr @set_type._entry_ptr.121, !254, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.122, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 397, i32 8}
!261 = !{ptr @.str.123, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @.str.125, !260, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @set_type._entry.124, !260, !"_entry", i1 false, i1 false}
!264 = !{ptr @set_type._entry_ptr.126, !260, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @set_type._entry.127, !266, !"_entry", i1 false, i1 false}
!266 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 412, i32 8}
!267 = !{ptr @set_type._entry_ptr.128, !266, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.130, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 424, i32 8}
!270 = !{ptr @.str.131, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @set_type._entry.132, !269, !"_entry", i1 false, i1 false}
!273 = !{ptr @set_type._entry_ptr.134, !269, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.135, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 441, i32 8}
!276 = !{ptr @.str.136, !275, !"<string literal>", i1 false, i1 false}
!277 = !{ptr @.str.138, !275, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @set_type._entry.137, !275, !"_entry", i1 false, i1 false}
!279 = !{ptr @set_type._entry_ptr.139, !275, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @set_type._entry.140, !281, !"_entry", i1 false, i1 false}
!281 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 448, i32 8}
!282 = !{ptr @set_type._entry_ptr.141, !281, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.143, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 477, i32 2}
!285 = !{ptr @set_type._entry.142, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @set_type._entry_ptr.144, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.146, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 494, i32 2}
!289 = !{ptr @set_type._entry.145, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @set_type._entry_ptr.147, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.149, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 500, i32 2}
!293 = !{ptr @set_type._entry.148, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @set_type._entry_ptr.150, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @tuner_analog_ops, !296, !"tuner_analog_ops", i1 false, i1 false}
!296 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 272, i32 38}
!297 = !{ptr @.str.151, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 243, i32 3}
!299 = !{ptr @.str.152, !298, !"<string literal>", i1 false, i1 false}
!300 = !{ptr @fe_set_params._entry, !298, !"_entry", i1 false, i1 false}
!301 = !{ptr @fe_set_params._entry_ptr, !298, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.153, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1097, i32 7}
!304 = !{ptr @.str.154, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1100, i32 7}
!306 = !{ptr @.str.155, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1104, i32 7}
!308 = !{ptr @.str.156, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1114, i32 2}
!310 = !{ptr @.str.157, !309, !"<string literal>", i1 false, i1 false}
!311 = !{ptr @tuner_status._entry, !309, !"_entry", i1 false, i1 false}
!312 = !{ptr @tuner_status._entry_ptr, !309, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.158, !309, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.160, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1116, i32 2}
!316 = !{ptr @tuner_status._entry.159, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @tuner_status._entry_ptr.161, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.163, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1117, i32 2}
!320 = !{ptr @tuner_status._entry.162, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @tuner_status._entry_ptr.164, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.166, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1125, i32 4}
!324 = !{ptr @tuner_status._entry.165, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @tuner_status._entry_ptr.167, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.169, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1127, i32 4}
!328 = !{ptr @tuner_status._entry.168, !327, !"_entry", i1 false, i1 false}
!329 = !{ptr @tuner_status._entry_ptr.170, !327, !"_entry_ptr", i1 false, i1 false}
!330 = !{ptr @.str.172, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1133, i32 4}
!332 = !{ptr @tuner_status._entry.171, !331, !"_entry", i1 false, i1 false}
!333 = !{ptr @tuner_status._entry_ptr.173, !331, !"_entry_ptr", i1 false, i1 false}
!334 = !{ptr @.str.174, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 265, i32 2}
!336 = !{ptr @.str.175, !335, !"<string literal>", i1 false, i1 false}
!337 = !{ptr @fe_set_config._entry, !335, !"_entry", i1 false, i1 false}
!338 = !{ptr @fe_set_config._entry_ptr, !335, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @tuner_list, !340, !"tuner_list", i1 false, i1 false}
!340 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 79, i32 8}
!341 = !{ptr @tuner_pm_ops, !342, !"tuner_pm_ops", i1 false, i1 false}
!342 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1402, i32 32}
!343 = !{ptr @.str.176, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1328, i32 2}
!345 = !{ptr @.str.177, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @tuner_suspend._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @tuner_suspend._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.178, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1343, i32 2}
!350 = !{ptr @.str.179, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @tuner_resume._entry, !349, !"_entry", i1 false, i1 false}
!352 = !{ptr @tuner_resume._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @tuner_id, !354, !"tuner_id", i1 false, i1 false}
!354 = !{!"../drivers/media/v4l2-core/tuner-core.c", i32 1406, i32 35}
!355 = !{i32 1, !"wchar_size", i32 2}
!356 = !{i32 1, !"min_enum_size", i32 4}
!357 = !{i32 8, !"branch-target-enforcement", i32 0}
!358 = !{i32 8, !"sign-return-address", i32 0}
!359 = !{i32 8, !"sign-return-address-all", i32 0}
!360 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!361 = !{i32 7, !"uwtable", i32 1}
!362 = !{i32 7, !"frame-pointer", i32 2}
!363 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!364 = !{!"auto-init"}
!365 = !{i8 0, i8 2}
